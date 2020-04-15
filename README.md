# VSCODEの設定ファイル

vscodeの設定を管理するリポジトリです。管理しているのは下記の2つです。

- golbalのsettings.json
- 拡張機能

作成したモチベーションは現場を変える度に、vscodeの設定を1から反映させていたので一箇所で管理できるようにしたかったからです。

## ファイル内容

- `settings.json` : globalに反映している設定ファイル
- `extensions.txt` : 拡張機能一覧
- `script/createInstallFile.sh` : 拡張機能のinstallスクリプトを作成する
- `script/appendExtensions.sh` : localのみに存在する拡張機能を、拡張機能一覧に追加する

## スクリプト概要

### 拡張機能のinstallスクリプトを作成

1. `./script/createInstallFile.sh` を実行
2. 拡張機能のinstallスクリプトファイルが作成されます。(`extensions.txt` に記載しているものが対象です。)
3. 2で作成した、 `./installExtensions.sh` を実行してinstallします。

### localにある拡張機能を一覧に追加

1. `./script/appendExtensions.sh` を実行
2. localのみに存在する拡張機能があれば、`extensions.txt` に追加します。
3. `extensions.txt` の中身が正しいことを確認してください。


## その他

### 拡張機能の一覧出力

`code --list-extensions`

詳細は`code --help` で確認してください。

### 拡張機能をインストール

`code --install-extension <extension-id | path-to-vsix>`