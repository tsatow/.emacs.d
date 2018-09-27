;;;; 動作に関する設定

;;; Macの場合にMetaキーを⌘にする
(when (eq system-type 'darwin)
  (setq ns-command-modifier (quote meta)))

;;; C-hをBackspaceに割り当て
(keyboard-translate ?\C-h ?\C-?)

;; macだと効かない
;; (define-key key-translation-map [?\C-h] [?\C-?])
;; (define-key key-translation-map (kbd "C-h") (kbd "<DEL>"))

;;; helpをC-?に割り当て
(global-set-key (kbd "C-?") 'help-for-help) 

;;; 括弧の対応をハイライト.
(show-paren-mode t)
(setq show-paren-style 'expression)
(set-face-attribute 'show-paren-match-face nil
                    :background nil :foreground nil
                    :underline "#fff00" :weight 'extra-bold)

;;; 括弧を自動的に閉じ、、、ない！何故ならうざいから！
(electric-pair-mode 0)

;;; バッファ末尾に余計な改行コードを防ぐための設定
(setq next-line-add-newlines nil)

;;; window resize関数とその設定
(require 'window-resizer)
;; C-q をプリフィックスキー化
(define-key global-map "\C-q" (make-sparse-keymap))
;; quoted-insert は C-q C-q へ割り当て
(global-set-key "\C-q\C-q" 'quoted-insert)
;; window-resizer は C-q C-r (resize) で
(global-set-key "\C-q\C-r" 'window-resizer)
;; C-x o にはもううんざり
(global-set-key "\C-ql" 'windmove-right)
(global-set-key "\C-qh" 'windmove-left)
(global-set-key "\C-qj" 'windmove-down)
(global-set-key "\C-qk" 'windmove-up)

;;; UTF-8を基本とする
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;;; タブ幅の設定。ただしタブか半角スペースかはプロジェクトに任せる。
(setq-default tab-width 2 indent-tabs-mode t)

;;; インデントにタブ文字を使用しない
(setq-default indent-tabs-mode nil)

;;; テキストを折り返しの切り替え設定
(global-set-key (kbd "C-c t") 'toggle-truncate-lines)

;;; ミニバッファで入力する際に自動的にASCIIにする
;; 注意: Emacs Mac Port 用設定
(when (fboundp 'mac-auto-ascii-mode)
  (mac-auto-ascii-mode 1))

;;; 質問をy/nで回答する
(fset 'yes-or-no-p 'y-or-n-p)


(provide 'operation-conf)
