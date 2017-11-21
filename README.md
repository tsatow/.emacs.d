# このリポジトリについて

私のEmacs設定です。

# セットアップ手順

## Emacsのインストール

一部の設定は千葉大学の山本光晴氏がビルドしたMac向けEmacsに依存しているので、基本的にはこれを利用してください。

```
brew tap railwaycat/emacsmacport
brew install emacs-mac --with-gnutls
```

## タイトルバーの変更

現在使用しているtomorrow-night-blueテーマに合わせてタイトルバーを黒くしています。

```
defaults write org.gnu.Emacs TransparentTitleBar DARK
```

## 設定ファイルのインストール

```
mkdir ~/.emacs.d
git clone https://github.com/tsatow/.emacs.d.git ~/.emacs.d
```
