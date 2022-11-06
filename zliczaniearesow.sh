#!/bin/bash
FILE=m-246101-BielskoBiala.adr
a=0
b="AA"
exec < $FILE
declare -A Tablica8
while IFS="," read col1 col2 col3 col4 col5 col6 col7 col8
do
Tablica8+=([$col8]+=1)
done
for key in "${!Tablica8[@]}"; do
ILE=`echo -n ${Tablica8[$key]} | wc -c`
if((a < $ILE)); then
a=$ILE
b=$key
fi
if(($ILE < 10)); then
echo $key: $ILE
fi
done
echo Najwięcej razy występuje: $b: $a
