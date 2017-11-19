;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; ロードパスの追加
(add-to-list 'load-path "~/.emacs.d/theme")
(add-to-list 'load-path "~/.emacs.d/my-lib")
;;;;;; El-Getのための設定
;; 参考資料
;; http://tarao.hatenablog.com/entry/20150221/1424518030
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; config-packagename.elに各パッケージ毎の設定を書く
(setq el-get-user-package-directory (locate-user-emacs-file "init"))

;;;;;; packageのインストール
(el-get-bundle! helm)
(el-get-bundle! elscreen)
(el-get-bundle! powerline)
(el-get-bundle! popwin)
(el-get-bundle! fill-column-indicator)
;; markdown
(el-get-bundle! markdown-mode)
;; company(code補完)
(el-get-bundle! company)
;; flycheck
(el-get-bundle! flycheck)
;; Scala
(el-get-bundle! scala-mode)
(el-get-bundle! ensime)
(el-get-bundle! sbt-mode)
;; Haskell
;; makeでこけるので以下を参考に設定
;; https://github.com/nanasess/dot.emacs/blob/master/init.el
(el-get-bundle haskell-mode
  :type github
  :pkgname "haskell/haskell-mode"
  :build `(("make" ,(format "EMACS=%s" el-get-emacs) "check-emacs-version" "compile" "haskell-mode-autoloads.el"))
  :post-init (progn
	       (require 'haskell-mode-autoloads)
	       (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
	       (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)))
(el-get-bundle! company-ghc)
;; Theme
(el-get-bundle  color-theme-tomorrow)

;;;;;; 個人設定
;;;; 表示設定

;; Theme
(color-theme-initialize)
(color-theme-tomorrow-night-blue)

;; スクロールバーを非表示
(scroll-bar-mode -1) 

;; ツールバーを非表示
(tool-bar-mode -1)

;; メニューバーを非表示
(menu-bar-mode -1)

;; デフォルトで文字折り返しなし
;; @see https://www.glamenv-septzen.net/view/358
(setq-default truncate-partial-width-windows t)
(setq-default truncate-lines t)

;; 行番号表示
(global-linum-mode 1)
(setq linum-format "%4d ")
(global-set-key [f6] 'linum-mode)

;; 現在行に色をつける
(global-hl-line-mode 1)
(set-face-background 'hl-line "blue")

;; 時間を表示
(display-time)

;; 起動時のサイズを最大化
;; widthはscratchバッファから最大化した状態の(frame-width)と(frame-height)で調べた
(set-frame-position nil 0 -24)
(set-frame-size nil (display-pixel-width) (display-pixel-height) t)

;;スタートメッセージを表示しない
(setq inhibit-startup-message t)

;; font設定
(require 'font-conf)

;;;; 動作設定

;; Macの場合にMetaキーを⌘にする
(when (eq system-type 'darwin)
  (setq ns-command-modifier (quote meta)))

;; 矩形選択のキーバインドを C-cb に設定
(cua-mode t)
(setq cua-enable-cua-keys nil) ;; cua-mode の不要なキーバインドは除去
(global-set-key (kbd "\C-cb") 'cua-set-rectangle-mark)

;; C-hをBackspaceに割り当て
;;(global-set-key "\C-h" 'delete-backward-char)
(define-key key-translation-map [?\C-h] [?\C-?])

;; helpはC-?とする
(global-set-key (kbd "C-?") 'help-for-help) 

;; C-x o の other-window を C-o にバインド
(define-key global-map (kbd "C-o") 'other-window)

;; 括弧の対応をハイライト.
(show-paren-mode t)
(setq show-paren-style 'expression)
(set-face-attribute 'show-paren-match-face nil
                    :background nil :foreground nil
                    :underline "#fff00" :weight 'extra-bold)

;; 括弧を自動的に閉じる
(electric-pair-mode 1)

;; バッファ末尾に余計な改行コードを防ぐための設定
(setq next-line-add-newlines nil)

;; window resize関数とその設定
(require 'window-resizer)

;; UTF-8を基本とする
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
;; タブ幅の設定。ただしタブか半角スペースかはプロジェクトに任せる。
(setq-default tab-width 2 indent-tabs-mode t)
;; テキストを折り返す、折り返さないの設定
(global-set-key (kbd "C-c t") 'toggle-truncate-lines)

;; elscreenを起動
(elscreen-start)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
