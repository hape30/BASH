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
input_file=$1
output_file=$2
search_word=$3

grep -o  "$search_word" "$input_file" | wc -l > "$output_file"
#grep -o "$search_word" "$input_file" — команда grep ищет в файле $input_file все вхождения слова, которое содержится в переменной $search_word. Опция -o указывает на вывод только самих найденных слов, без контекста.


echo "Программа выполнена успешно"