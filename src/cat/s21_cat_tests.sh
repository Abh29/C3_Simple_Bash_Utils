#!/bin/bash

read -p "enter file name : " file_path

if [[ "$file_path" = "" ]]; then
    ./s21_cat
    if [ "$?" = 0 ]; then
      echo "test 0: SUCCESS"
    else
      echo "test 0: FAIL"
    fi
exit $?;
fi

$ret = ./s21_cat -A $file_path > result.txt 2> /dev/null
$ret2 = t -A $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 1: SUCCESS"
else
  echo "test 1: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -b $file_path > result.txt 2> /dev/null
$ret2 = cat -b $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 2: SUCCESS"
else
  echo "test 2: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi


$ret = ./s21_cat -E $file_path > result.txt 2> /dev/null
$ret2 = cat -E $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 3: SUCCESS"
else
  echo "test 3: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -e $file_path > result.txt 2> /dev/null
$ret2 = cat -e $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 4: SUCCESS"
else
  echo "test 4: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -s $file_path > result.txt 2> /dev/null
$ret2 = cat -s $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 5: SUCCESS"
else
  echo "test 5: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -v $file_path > result.txt 2> /dev/null
$ret2 = cat -v $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 5: SUCCESS"
else
  echo "test 5: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat --number-nonblank $file_path > result.txt 2> /dev/null
$ret2 = cat --number-nonblank $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 6: SUCCESS"
else
  echo "test 6: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi
$ret = ./s21_cat --show-ends $file_path > result.txt 2> /dev/null
ca$ret2 = t --show-ends $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 7: SUCCESS"
else
  echo "test 7: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat --number $file_path > result.txt 2> /dev/null
$ret2 = cat --number $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 8: SUCCESS"
else
  echo "test 8: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat --squeeze-blank $file_path > result.txt 2> /dev/null
$ret2 = cat --squeeze-blank $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 9: SUCCESS"
else
  echo "test 9: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat --show-tabs $file_path > result.txt 2> /dev/null
$ret2 = cat --show-tabs $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 10: SUCCESS"
else
  echo "test 10: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat --show-nonprinting $file_path > result.txt 2> /dev/null
$ret2 = cat --show-nonprinting $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 11: SUCCESS"
else
  echo "test 11: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -nb $file_path > result.txt 2> /dev/null
$ret2 = cat -nb $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 12: SUCCESS"
else
  echo "test 12: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi
$ret = ./s21_cat -Ab $file_path > result.txt 2> /dev/null
ca$ret2 = t -Ab $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 13: SUCCESS"
else
  echo "test 13: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -Ae $file_path > result.txt 2> /dev/null
$ret2 = cat -Ae $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 14: SUCCESS"
else
  echo "test 14: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -AE $file_path > result.txt 2> /dev/null
$ret2 = cat -AE $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 15: SUCCESS"
else
  echo "test 15: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -An $file_path > result.txt 2> /dev/null
$ret2 = cat -An $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 16: SUCCESS"
else
  echo "test 16: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -As $file_path > result.txt 2> /dev/null
$ret2 = cat -As $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 17: SUCCESS"
else
  echo "test 17: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -At $file_path > result.txt 2> /dev/null
$ret2 = cat -At $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 18: SUCCESS"
else
  echo "test 18: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi
$ret = ./s21_cat -Av $file_path > result.txt 2> /dev/null
ca$ret2 = t -Av $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 19: SUCCESS"
else
  echo "test 19: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -be $file_path > result.txt 2> /dev/null
$ret2 = cat -be $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 20: SUCCESS"
else
  echo "test 20: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -bE $file_path > result.txt 2> /dev/null
$ret2 = cat -bE $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 20: SUCCESS"
else
  echo "test 20: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -bs $file_path > result.txt 2> /dev/null
$ret2 = cat -bs $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 21: SUCCESS"
else
  echo "test 21: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -bt $file_path > result.txt 2> /dev/null
$ret2 = cat -bt $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 22: SUCCESS"
else
  echo "test 22: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -bT $file_path > result.txt 2> /dev/null
$ret2 = cat -bT $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 23: SUCCESS"
else
  echo "test 23: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -bv $file_path > result.txt 2> /dev/null
$ret2 = cat -bv $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 22: SUCCESS"
else
  echo "test 22: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -eE $file_path > result.txt 2> /dev/null
$ret2 = cat -eE $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 23: SUCCESS"
else
  echo "test 23: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -en $file_path > result.txt 2> /dev/null
$ret2 = cat -en $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 24: SUCCESS"
else
  echo "test 24: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -es $file_path > result.txt 2> /dev/null
$ret2 = cat -es $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 25: SUCCESS"
else
  echo "test 25: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -et $file_path > result.txt 2> /dev/null
$ret2 = cat -et $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 26: SUCCESS"
else
  echo "test 26: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -eT $file_path > result.txt 2> /dev/null
$ret2 = cat -eT $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 27: SUCCESS"
else
  echo "test 27: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -ev $file_path > result.txt 2> /dev/null
$ret2 = cat -ev $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 28: SUCCESS"
else
  echo "test 28: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -En $file_path > result.txt 2> /dev/null
$ret2 = cat -En $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 29: SUCCESS"
else
  echo "test 29: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -Es $file_path > result.txt 2> /dev/null
$ret2 = cat -Es $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 30: SUCCESS"
else
  echo "test 30: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -Et $file_path > result.txt 2> /dev/null
$ret2 = cat -Et $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 31: SUCCESS"
else
  echo "test 31: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -Ev $file_path > result.txt 2> /dev/null
$ret2 = cat -Ev $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 32: SUCCESS"
else
  echo "test 32: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -nv $file_path > result.txt 2> /dev/null
$ret2 = cat -nv $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 33: SUCCESS"
else
  echo "test 33: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -nt $file_path > result.txt 2> /dev/null
$ret2 = cat -nt $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 34: SUCCESS"
else
  echo "test 34: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -nT $file_path > result.txt 2> /dev/null
$ret2 = cat -nT $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 35: SUCCESS"
else
  echo "test 35: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi
$ret = ./s21_cat -ns $file_path > result.txt 2> /dev/null
ca$ret2 = t -ns $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 36: SUCCESS"
else
  echo "test 36: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -nt $file_path > result.txt 2> /dev/null
$ret2 = cat -nt $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 37: SUCCESS"
else
  echo "test 37: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -nv $file_path > result.txt 2> /dev/null
$ret2 = cat -nv $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 38: SUCCESS"
else
  echo "test 38: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -tT $file_path > result.txt 2> /dev/null
$ret2 = cat -tT $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 39: SUCCESS"
else
  echo "test 39: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -uv $file_path > result.txt 2> /dev/null
$ret2 = cat -uv $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 40: SUCCESS"
else
  echo "test 40: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi
$ret = ./s21_cat -AbeEnstTuv $file_path > result.txt 2> /dev/null
ca$ret2 = t -AbeEnstTuv $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 41: SUCCESS"
else
  echo "test 41: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -snb $file_path > result.txt 2> /dev/null
$ret2 = cat -snb $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 42: SUCCESS"
else
  echo "test 42: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -ssssAT $file_path > result.txt 2> /dev/null
$ret2 = cat -ssssAT $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 43: SUCCESS"
else
  echo "test 43: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -ssssAT $file_path > result.txt 2> /dev/null
$ret2 = cat -ssssAT $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 43: SUCCESS"
else
  echo "test 43: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat --squeeze-blank --number -T $file_path > result.txt 2> /dev/null
$ret2 = cat --squeeze-blank --number -T $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 44: SUCCESS"
else
  echo "test 44: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat --squeeze-blank --number --squeeze-blank -A -b -n -AbtT $file_path > result.txt 2> /dev/null
$ret2 = cat --squeeze-blank --number --squeeze-blank -A -b -n -AbtT $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 45: SUCCESS"
else
  echo "test 45: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -ssssAT $file_path > result.txt 2> /dev/null
$ret2 = cat -ssssAT $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 46: SUCCESS"
else
  echo "test 46: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

./s21_cat --help > result.txt 2> /dev/null
if [ "$?" = 0 ]; then 2> /dev/null
  echo "test 47: SUCCESS"
else
  echo "test 47: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -u $file_path > result.txt 2> /dev/null
$ret2 = cat -u $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 48: SUCCESS"
else
  echo "test 48: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -T $file_path > result.txt 2> /dev/null
$ret2 = cat -T $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 49: SUCCESS"
else
  echo "test 49: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -v $file_path > result.txt 2> /dev/null
$ret2 = cat -v $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 50: SUCCESS"
else
  echo "test 50: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -uA $file_path > result.txt 2> /dev/null
$ret2 = cat -uA $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 51: SUCCESS"
else
  echo "test 51: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -ub $file_path > result.txt 2> /dev/null
$ret2 = cat -ub $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 52: SUCCESS"
else
  echo "test 52: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -ue $file_path > result.txt 2> /dev/null
$ret2 = cat -ue $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 52: SUCCESS"
else
  echo "test 52: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -uE $file_path > result.txt 2> /dev/null
$ret2 = cat -uE $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 53: SUCCESS"
else
  echo "test 53: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -un $file_path > result.txt 2> /dev/null
$ret2 = cat -un $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 54: SUCCESS"
else
  echo "test 54: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -us $file_path > result.txt 2> /dev/null
$ret2 = cat -us $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 55: SUCCESS"
else
  echo "test 55: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -ut $file_path > result.txt 2> /dev/null
$ret2 = cat -ut $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 56: SUCCESS"
else
  echo "test 56: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -uT $file_path > result.txt 2> /dev/null
$ret2 = cat -uT $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 57: SUCCESS"
else
  echo "test 57: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

$ret = ./s21_cat -uv $file_path > result.txt 2> /dev/null
$ret2 = cat -uv $file_path > result2.txt 2> /dev/null
d=$(diff result2.txt result.txt | wc -l)
if [ "$d" = 0 ]; then
  echo "test 58: SUCCESS"
else
  echo "test 58: FAIL"
fi

if [ "$ret" = "$ret2" ]; then
  echo "return value correct"
else
  echo "return value false !"
fi

./s21_cat --version > result.txt 2> /dev/null
if [ "$?" = 0 ]; then
  echo "test 59: SUCCESS"
else
  echo "test 59: FAIL"
fi
