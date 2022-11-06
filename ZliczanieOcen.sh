#!/bin/bash

FILE=Pliki/grades.csv
exec < $FILE
read header
while IFS="," read col1 col2 col3 col4 col5 col6 col7 col8
do
sum=0

col1=$(echo $col1 | sed 's/"//g')
col2=$(echo $col2 | sed 's/"//g')
col4=$(echo $col4 | sed 's/\r//g' | sed 's/^-.*/0/')
col5=$(echo $col5 | sed 's/\r//g' | sed 's/^-.*/0/')
col6=$(echo $col6 | sed 's/\r//g' | sed 's/^-.*/0/')
col7=$(echo $col7 | sed 's/\r//g' | sed 's/^-.*/0/')
col8=$(echo $col8 | sed 's/\r//g' | sed 's/^-.*/0/')


sum=$(echo "scale=2; "$col4"+"$col5"+"$col6"+"$col7"+"$col8|bc -l)
Test1=$(echo "scale=2; "$Test1"+"$col4|bc -l)
Test2=$(echo "scale=2; "$Test1"+"$col4|bc -l)
Test3=$(echo "scale=2; "$Test1"+"$col4|bc -l)
Test4=$(echo "scale=2; "$Test1"+"$col4|bc -l)
Test5=$(echo "scale=2; "$Test1"+"$col4|bc -l)

sum=`echo "scale=2; $sum / 5" | bc`
Test1=`echo "scale=2; $Test1 / 16" | bc`
Test2=`echo "scale=2; $Test2 / 16" | bc`
Test3=`echo "scale=2; $Test3 / 15" | bc`
Test4=`echo "scale=2; $Test4 / 15" | bc`
Test5=`echo "scale=2; $Test5 / 16" | bc`
echo $col1 $col2 z średnim wynikiem: $sum
done

echo Sredni wynik Test1: $Test1
echo Sredni wynik Test2: $Test2
echo sredni wynik Test3: $Test3
echo Sredni wynik Test4: $Test4
echo Sredni wynik Final: $Test5
