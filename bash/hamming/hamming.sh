hamming_num=0
str_1=$1
str_2=$2

if [ $# -eq 0 ] || [ $# -eq 1 ]
  then
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
fi

if [ ${#str_1} != ${#str_2} ]; then
  printf "strands must be of equal length"
  exit 1
fi

for (( i=0; i<${#str_1}; i++ )); do
    char_1="${str_1:$i:1}"
    char_2="${str_2:$i:1}"

  if [[ $char_2 =~ [^A-Z] ]];
    then
      hamming_num=$((hamming_num+1));
  else 

  if [[ $char_1 != $char_2 ]];
    then
      hamming_num=$((hamming_num+1));
  fi
  fi
done

echo ${hamming_num}

