;;;; 動作に関する設定

;;; Macの場合にMetaキーを⌘にする
(when (eq system-type 'darwin)
  (setq ns-command-modifier (quote meta)))

;;; C-hをBackspaceに割り当て
(define-key key-translation-map [?\C-h] [?\C-?])

;;; helpをC-?に割り当て
(global-set-key (kbd "C-?") 'help-for-help) 

;;; 括弧の対応をハイライト.
(show-paren-mode t)
(setq show-paren-style 'expression)
(set-face-attribute 'show-paren-match-face nil
                    :background nil :foreground nil
                    :underline "#fff00" :weight 'extra-bold)

;;; 括弧を自動的に閉じる
(electric-pair-mode 1)

;;; バッファ末尾に余計な改行コードを防ぐための設定
(setq next-line-add-newlines nil)

;;; window resize関数とその設定
(require 'window-resizer)

;;; UTF-8を基本とする
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;;; タブ幅の設定。ただしタブか半角スペースかはプロジェクトに任せる。
(setq-default tab-width 2 indent-tabs-mode t)

;;; テキストを折り返しの切り替え設定
(global-set-key (kbd "C-c t") 'toggle-truncate-lines)

;;; ミニバッファで入力する際に自動的にASCIIにする
;; 注意: Emacs Mac Port 用設定
(when (fboundp 'mac-auto-ascii-mode)
  (mac-auto-ascii-mode 1))

;;; 質問をy/nで回答する
(fset 'yes-or-no-p 'y-or-n-p)


(provide 'operation-conf)
