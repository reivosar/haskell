# 本リポジトリについて

基本Java民が、純粋関数型言語のHaskellについて、試行錯誤する場。

# 開発環境

Visual Studio Code  
Windows 10  
ThinkPad X201  

# 環境構築

### Haskell Platform のインストール

1. 以下のサイトより、開発環境OSに該当するインストーラーをダウンロードする（最新バージョン推奨）。

   https://www.haskell.org/platform/prior.html

2. ダウンロードしたファイルを実行し、インストールを完了させる。


### Stackのアップグレード

1. Windowsであればコマンドプロンプト、MacなどのUnix系OSの場合はターミナルを開き、下記コマンドを実行する。

```
stack upgrade
```

### エディタ(Visual Studio Code)のインストール

1. 以下のサイトより、開発環境OSに該当するインストーラーをダウンロードする

    https://code.visualstudio.com/download

2. ダウンロードしたファイルを実行し、インストールを完了させる。

3. Visual Studio Codeを開き「Ctrl+Shift+X」を押す。

4. 拡張機能のMarketplaceが開くので、以下を検索しをインストールする。

    ・Haskell Syntax Highlighting  
    ・haskell-ghcid  
