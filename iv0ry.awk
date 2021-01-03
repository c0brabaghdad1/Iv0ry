#!/bin/bash

RED='\033[31m'
GREEN='\033[32m'
BLUE='\033[34m'
YELLOW='\033[33m'
NONE='\033[0m'

echo -e "\n\033[33m[---]              Iv0ry                   [---]\033[0m"
echo -e "\n\033[33m[---]   Coded By Mustafa - @C0brabaghdad1  [---]\033[0m\n"
read -p 'Enter Function/String/Variable (Not Case Sensitive) : '  FSV # F=Function,S=String,V=Variable
echo -e "\n"
read -p 'Enter Directory (Case Sensitive): '  dir

if  [ -e $dir ] ; then
  echo -e "\n"
  grep -i -r -n  $FSV  $dir/ | awk -F: -v y=$YELLOW -v r=$RED -v g=$GREEN -v b=$BLUE -v n=$NONE '{print r"Filename = "$1""n b"\nLine = "$2""n g"\nMatch = "$3"\n\n"n}'
else	
  echo -e "\033[31mFunction or Directory does not Exist\033[0m"
fi