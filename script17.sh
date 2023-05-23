#!/bin/bash
read -p " Введите искомое значение:" input
read -p " Введите искомое значение:" output

if [[ $# -lt 1 ]]
then
    echo "Мало аргумнтов "
    exit 1
elif [[ $# -gt 1 ]]
then
    echo "Много аргументов"
    exit 1
fi

if [[ ! -f $input ]]
then
    echo " $input  не являтся файлом"
    exit 1
fi
if [[ ! -f $output ]]
then
    echo " $output  не являтся файлом"
    exit 1
fi
input_file=$input
output_file=$output
search_word=$1

grep -o  "$search_word" "$input" | wc -l > $output
#grep -o "$search_word" "$input_file" — команда grep ищет в файле $input_file все вхождения слова, которое содержится в переменной $search_word. Опция -o указывает на вывод только самих найденных слов, без контекста.
echo "кол-во слов  в списке" >> $output_file

echo "Программа выполнена успешно"
