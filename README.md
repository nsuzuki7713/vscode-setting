# VSCODEの設定ファイル

現場を変える度に設定を1から反映させていたので、設定ファイルをGit管理します。

- `settings.json` : globalに反映している設定ファイル
- `extensions.txt` : 拡張機能一覧

# 拡張機能のinstallスクリプトを作成

1. `./script/createInstallFile.sh` を実行
2. 拡張機能のinstallスクリプトファイルが作成されます。(`extensions.txt` に記載しているものが対象です。)
3. 2で作成した、 `./installExtensions.sh` を実行してinstallします。

## 拡張機能のコマンド

`code --help` で確認できます。

### 拡張機能の一覧出力

`code --list-extensions`

### 拡張機能をインストール

`code --install-extension <extension-id | path-to-vsix>`