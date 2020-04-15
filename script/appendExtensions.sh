# localの拡張機能をextensions.txtに追加します

#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0); pwd)
FILE_PATH="$SCRIPT_DIR/../extensions.txt"
EXTENSIONS=`cat $FILE_PATH`
LOCAL_EXTENSIONS=`code --list-extensions`

appends=()

for local in ${LOCAL_EXTENSIONS[@]}; do
  is_exsist=false
  for extension in ${EXTENSIONS[@]}; do
    if [ $local = $extension ]; then
      is_exsist=true
    fi
  done
  
  if ! "${is_exsist}"; then
    echo $local
    appends=("${appends[@]}" $local)
  fi
done

if [ ${#appends[@]} = 0 ]; then
  echo "全ての拡張機能はextensions.txtに含んでいます"
  exit
fi

echo "上記の拡張機能をextensions.txtに追加しますか?[yes/no]"
read input

if [ $input = 'yes' ]; then
  for e in ${appends[@]}; do
    echo ${e} >> $FILE_PATH
  done

  echo "extensions.txtに追加しました。"
fi
