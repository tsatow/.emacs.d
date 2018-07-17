;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;;; ロードパスの追加
(add-to-list 'load-path "~/.emacs.d/my-lib")

;;;; El-Getのための設定
;;; 参考資料 http://tarao.hatenablog.com/entry/20150221/1424518030
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))
;;; init-packagename.elに各パッケージ毎の設定を書く
(setq el-get-user-package-directory (locate-user-emacs-file "init"))

;;;; packageのインストール
(el-get-bundle! restart-emacs)
(el-get-bundle! helm)
(el-get-bundle! elscreen)
(el-get-bundle! powerline)
(el-get-bundle! popwin)
(el-get-bundle! fill-column-indicator)
(el-get-bundle! multi-scratch)
(el-get-bundle! edit-server)

;; projectile
(el-get-bundle! projectile)
(el-get-bundle! helm-projectile)

;; magit
(el-get-bundle! magit)

;;; markdown
(el-get-bundle! markdown-mode)

;;; company(code補完)
(el-get-bundle! company)

;;; Flycheck
(el-get-bundle! flycheck)

;;; Scala
(add-to-list 'exec-path "~/.sdkman/candidates/sbt/current/bin")
(el-get-bundle! scala-mode)
;; @see http://ensime.github.io//editors/emacs/cheat_sheet/
(el-get-bundle! ensime)
(el-get-bundle! sbt-mode)

;;; LSP(Language Server Protocol)
(el-get-bundle! emacs-lsp/lsp-mode)
(el-get-bundle! emacs-lsp/lsp-ui)

;;; Haskell
(el-get-bundle! haskell/haskell-mode)
(el-get-bundle! emacs-lsp/lsp-haskell)

;; Golang
;; Goのパスを通す
(add-to-list 'exec-path (expand-file-name "~/.goenv/shims"))
;; go get で入れたツールのパスを通す
(add-to-list 'exec-path (expand-file-name "~/go/bin/"))
;;(el-get-bundle! go-mode) company-goとともに入るので不要
(el-get-bundle! go-mode)
(el-get-bundle! emacs-lsp/lsp-go)
(el-get-bundle! go-eldoc)
(el-get-bundle! company-go :url "https://raw.githubusercontent.com/nsf/gocode/master/emacs-company/company-go.el")

;;; Elm
(el-get-bundle! elm-mode)

;;; Ruby
(el-get-bundle! emacs-lsp/lsp-ruby)
(el-get-bundle! inf-ruby)
;; for short messages on hover
;; これはlsp-mode全体の設定になるかも
(setq lsp-hover-text-function 'lsp--text-document-signature-help)

;;; JavaScript
(el-get-bundle! js2-mode)
;(el-get-bundle! rjsx-mode)
;; for vue-mode
(el-get-bundle! mmm-mode)
(el-get-bundle! AdamNiederer/vue-html-mode)
(el-get-bundle! AdamNiederer/ssass-mode)
(el-get-bundle! Fanael/edit-indirect)
(el-get-bundle! AdamNiederer/vue-mode)

;;; JSON
(el-get-bundle! json-mode)

;;; api blue print
(el-get-bundle! apib-mode
  :type github
  :pkgname "w-vi/apib-mode")

;;; Theme
(el-get-bundle  color-theme-tomorrow)

;;;; 個人設定
(require 'dired-conf)
(require 'display-conf)
(require 'lisp-interaction-mode-conf)
(require 'operation-conf)

;;;; 初期処理
;;; elscreenを起動
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
