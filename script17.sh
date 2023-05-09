#!/bin/bash
if [[ $# -lt 3 ]]
then
    echo "Мало аргумнтов "
    exit 1
elif [[ $# -gt 3 ]]
then
    echo "Много аргументов"
    exit 1
fi

if [[ ! -f $1 || ! -f $2 ]]
then
    echo " $1 || $2 не являтся файлами"
    exit 1
fi

count=$(grep -c "$3" "$1")
echo "$count" > "$2"
echo "Программа выполнена успешно"