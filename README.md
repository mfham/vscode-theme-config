# vscode-theme-config

## 手順
```bash
# 1. extension開発手順に従う
# - New Color Theme を選ぶ。
# - Start freshを選択
https://code.visualstudio.com/api/get-started/your-first-extension

> npx --package yo --package generator-code -- yo code

# 2. 作成されたディレクトリを ~/.vscode/extensions/ 配下にコピーする
> cp -r ~/path/to/sample-theme ~/.vscode/extensions/

# 3. VSCodeをリロードする
```

## RubyのTheme開発の参考

- 公式シンタックスハイライトガイド
  - https://code.visualstudio.com/api/language-extensions/syntax-highlight-guide
- Ruby LSP拡張機能の設定
  - https://github.com/Shopify/vscode-ruby-lsp/blob/1e1fbae4950e1f9bca2d65ddfc53104ce0963833/grammars/ruby.cson.json
- 参考にしたいThemeを適用した状態で、`Cmd`+`shift`+`p`でコマンドパレットを開き、`Developer: Generate Color Theme From Current Settings`を選択する。参考にしたいThemeの設定がjsoncファイルで保存できるので、その中身を見てキーと色の対応を参考にする

## Tips

### カラーを変更してすぐに確認する手順

- `~/.vscode/extensions/`に置いたjsonファイルを編集し、保存したら`Cmd`+`shift`+`p`でコマンドパレットを開き、Windowをリロードして反映し、色を確認する

### キーを確認する

- 確認したいファイル、例えば`ruby.rb`を開く。`Cmd`+`shift`+`p`でコマンドパレットを開き、`Developer: Inspect Editor Tokens and Scopes`を選択する。そうすると`ruby.rb`内で確認したい表現を選択するとツールチップでキーを表示してくれる。