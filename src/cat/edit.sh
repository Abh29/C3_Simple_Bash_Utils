#!/bin/bash

read -p "enter file name : " file_path

if [[ "$file_path" = "" ]]; then
    echo "file path empty !"
exit 1;
fi

./s21_cat -A $file_path > result.txt
cat -A $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 1: correct"
else
  echo "test 1: error"
fi


./s21_cat -b $file_path > result.txt
cat -b $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 2: correct"
else
  echo "test 2: error"
fi



./s21_cat -E $file_path > result.txt
cat -E $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 3: correct"
else
  echo "test 3: error"
fi


./s21_cat -e $file_path > result.txt
cat -e $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 4: correct"
else
  echo "test 4: error"
fi


./s21_cat -s $file_path > result.txt
cat -s $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 5: correct"
else
  echo "test 5: error"
fi


./s21_cat -v $file_path > result.txt
cat -v $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 5: correct"
else
  echo "test 5: error"
fi


./s21_cat --number-nonblank $file_path > result.txt
cat --number-nonblank $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 6: correct"
else
  echo "test 6: error"
fi

./s21_cat --show-ends $file_path > result.txt
cat --show-ends $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 7: correct"
else
  echo "test 7: error"
fi


./s21_cat --number $file_path > result.txt
cat --number $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 8: correct"
else
  echo "test 8: error"
fi


./s21_cat --squeeze-blank $file_path > result.txt
cat --squeeze-blank $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 9: correct"
else
  echo "test 9: error"
fi


./s21_cat --show-tabs $file_path > result.txt
cat --show-tabs $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 10: correct"
else
  echo "test 10: error"
fi


./s21_cat --show-nonprinting $file_path > result.txt
cat --show-nonprinting $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 11: correct"
else
  echo "test 11: error"
fi


./s21_cat -nb $file_path > result.txt
cat -nb $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 12: correct"
else
  echo "test 12: error"
fi

./s21_cat -Ab $file_path > result.txt
cat -Ab $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 13: correct"
else
  echo "test 13: error"
fi


./s21_cat -Ae $file_path > result.txt
cat -Ae $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 14: correct"
else
  echo "test 14: error"
fi


./s21_cat -AE $file_path > result.txt
cat -AE $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 15: correct"
else
  echo "test 15: error"
fi


./s21_cat -An $file_path > result.txt
cat -An $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 16: correct"
else
  echo "test 16: error"
fi


./s21_cat -As $file_path > result.txt
cat -As $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 17: correct"
else
  echo "test 17: error"
fi


./s21_cat -At $file_path > result.txt
cat -At $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 18: correct"
else
  echo "test 18: error"
fi

./s21_cat -Av $file_path > result.txt
cat -Av $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 19: correct"
else
  echo "test 19: error"
fi


./s21_cat -be $file_path > result.txt
cat -be $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 20: correct"
else
  echo "test 20: error"
fi


./s21_cat -bE $file_path > result.txt
cat -bE $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 20: correct"
else
  echo "test 20: error"
fi


./s21_cat -bs $file_path > result.txt
cat -bs $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 21: correct"
else
  echo "test 21: error"
fi


./s21_cat -bt $file_path > result.txt
cat -bt $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 22: correct"
else
  echo "test 22: error"
fi


./s21_cat -bT $file_path > result.txt
cat -bT $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 23: correct"
else
  echo "test 23: error"
fi


./s21_cat -bv $file_path > result.txt
cat -bv $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 22: correct"
else
  echo "test 22: error"
fi


./s21_cat -eE $file_path > result.txt
cat -eE $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 23: correct"
else
  echo "test 23: error"
fi


./s21_cat -en $file_path > result.txt
cat -en $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 24: correct"
else
  echo "test 24: error"
fi


./s21_cat -es $file_path > result.txt
cat -es $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 25: correct"
else
  echo "test 25: error"
fi


./s21_cat -et $file_path > result.txt
cat -et $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 26: correct"
else
  echo "test 26: error"
fi


./s21_cat -eT $file_path > result.txt
cat -eT $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 27: correct"
else
  echo "test 27: error"
fi


./s21_cat -ev $file_path > result.txt
cat -ev $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 28: correct"
else
  echo "test 28: error"
fi


./s21_cat -En $file_path > result.txt
cat -En $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 29: correct"
else
  echo "test 29: error"
fi


./s21_cat -Es $file_path > result.txt
cat -Es $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 30: correct"
else
  echo "test 30: error"
fi


./s21_cat -Et $file_path > result.txt
cat -Et $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 31: correct"
else
  echo "test 31: error"
fi


./s21_cat -Ev $file_path > result.txt
cat -Ev $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 32: correct"
else
  echo "test 32: error"
fi


./s21_cat -nv $file_path > result.txt
cat -nv $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 33: correct"
else
  echo "test 33: error"
fi


./s21_cat -nt $file_path > result.txt
cat -nt $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 34: correct"
else
  echo "test 34: error"
fi


./s21_cat -nT $file_path > result.txt
cat -nT $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 35: correct"
else
  echo "test 35: error"
fi

./s21_cat -ns $file_path > result.txt
cat -ns $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 36: correct"
else
  echo "test 36: error"
fi


./s21_cat -nt $file_path > result.txt
cat -nt $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 37: correct"
else
  echo "test 37: error"
fi


./s21_cat -nv $file_path > result.txt
cat -nv $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 38: correct"
else
  echo "test 38: error"
fi


./s21_cat -tT $file_path > result.txt
cat -tT $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 39: correct"
else
  echo "test 39: error"
fi


./s21_cat -uv $file_path > result.txt
cat -uv $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 40: correct"
else
  echo "test 40: error"
fi

./s21_cat -AbeEnstTuv $file_path > result.txt
cat -AbeEnstTuv $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 41: correct"
else
  echo "test 41: error"
fi


./s21_cat -snb $file_path > result.txt
cat -snb $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 42: correct"
else
  echo "test 42: error"
fi


./s21_cat -ssssAT $file_path > result.txt
cat -ssssAT $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 43: correct"
else
  echo "test 43: error"
fi


./s21_cat -ssssAT $file_path > result.txt
cat -ssssAT $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 43: correct"
else
  echo "test 43: error"
fi


./s21_cat --squeeze-blank --number -T $file_path > result.txt
cat --squeeze-blank --number -T $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 44: correct"
else
  echo "test 44: error"
fi


./s21_cat --squeeze-blank --number --squeeze-blank -A -b -n -AbtT $file_path > result.txt
cat --squeeze-blank --number --squeeze-blank -A -b -n -AbtT $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 45: correct"
else
  echo "test 45: error"
fi


./s21_cat -ssssAT $file_path > result.txt
cat -ssssAT $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 46: correct"
else
  echo "test 46: error"
fi


./s21_cat --help > result.txt
cat --help > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 47: correct"
else
  echo "test 47: error"
fi


./s21_cat -u $file_path > result.txt
cat -u $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 48: correct"
else
  echo "test 48: error"
fi


./s21_cat -T $file_path > result.txt
cat -T $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 49: correct"
else
  echo "test 49: error"
fi


./s21_cat -v $file_path > result.txt
cat -v $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 50: correct"
else
  echo "test 50: error"
fi


./s21_cat -uA $file_path > result.txt
cat -uA $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 51: correct"
else
  echo "test 51: error"
fi


./s21_cat -ub $file_path > result.txt
cat -ub $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 52: correct"
else
  echo "test 52: error"
fi


./s21_cat -ue $file_path > result.txt
cat -ue $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 52: correct"
else
  echo "test 52: error"
fi


./s21_cat -uE $file_path > result.txt
cat -uE $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 53: correct"
else
  echo "test 53: error"
fi


./s21_cat -un $file_path > result.txt
cat -un $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 54: correct"
else
  echo "test 54: error"
fi


./s21_cat -us $file_path > result.txt
cat -us $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 55: correct"
else
  echo "test 55: error"
fi


./s21_cat -ut $file_path > result.txt
cat -ut $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 56: correct"
else
  echo "test 56: error"
fi


./s21_cat -uT $file_path > result.txt
cat -uT $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 57: correct"
else
  echo "test 57: error"
fi


./s21_cat -uv $file_path > result.txt
cat -uv $file_path > result2.txt
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 58: correct"
else
  echo "test 58: error"
fi