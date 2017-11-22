# このリポジトリについて

私の個人的なEmacs設定です。
私はEmacs初心者なので、間違った設定を数多く犯してる可能性があります。
ですので、個人的な設定とはいえ意見や指摘は大歓迎です。
また、この設定を第三者が使うことを歓迎します。

# 方針

私は今のところベイスターズファンで特に```Blue Star Hotel```のコンセプトを気に入っています。
ですので、テーマもそれに準じたクールなデザインを求めています。
今はtomorrow night blueが最も良いと感じていますが、他にもっと良いものがあれば意見をください。

# セットアップ手順

## Emacsのインストール

一部の設定は千葉大学の山本光晴氏がビルドしたMac向けEmacsに依存しているので、基本的にはこれを利用してください。

```
brew tap railwaycat/emacsmacport
brew install emacs-mac --with-gnutls
```

## タイトルバーの変更

現在使用しているtomorrow-night-blueテーマに合わせてタイトルバーを黒くしています。
これは山本光晴氏のビルドしたEmacsでのみ有効な設定です。

```
defaults write org.gnu.Emacs TransparentTitleBar DARK
```

## 設定ファイルのインストール

```
mkdir ~/.emacs.d
git clone https://github.com/tsatow/.emacs.d.git ~/.emacs.d
```
