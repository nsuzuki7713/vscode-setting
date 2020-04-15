# 拡張機能のinstallスクリプトを作成します。
# 対象となる拡張機能はextensions.txtになります。
# 出力ファイルはinstallExtensions.sh です

#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0); pwd)
FILE_PATH="$SCRIPT_DIR/../extensions.txt"
OUTPUT_FILE="$SCRIPT_DIR/../installExtensions.sh"

echo "#!/bin/bash" > $OUTPUT_FILE
while read line
do
  echo "code --install-extension $line" >> $OUTPUT_FILE
done < $FILE_PATH

chmod +x $OUTPUT_FILE