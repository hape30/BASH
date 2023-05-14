#!/bin/bash
./script17.sh 
echo "проверка 1 теста...."
if [[ $? -eq 1 ]]
then 
echo "1 тест прошел успешно"
else
echo "1 тест не пройдет"
exit 1 
fi
echo "проверка 2 теста...."
./script17.sh inputafile outputafile word zero 
if [[ $? -eq 1 ]]
then 
echo "2 тест прошел успешно"
else 
echo "2 тест не пройден"
exit 1 
fi
echo "проверка 3 теста...."
mkdir test
./script17.sh test outputafile Мастер
if [[ $? -eq 1 ]]
then 
echo "3 тест прошел успешно"
else 
echo "3 тест не пройден"
exit 1 
fi
rmdir test


