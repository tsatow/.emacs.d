;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;; 環境変数の設定
(setenv
 "PATH"
 (concat "/usr/local/opt/texinfo/bin" ":" (getenv "PATH")))

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
(el-get-bundle! elpa:multifiles)
(el-get-bundle! open-junk-file)
(el-get-bundle! multiple-cursors)
(el-get-bundle! graphviz-dot-mode)
(el-get-bundle! f) ;; racerのために入れた
(el-get-bundle! pos-tip) ;; racerのために入れた
(el-get-bundle! deferred) ;; racerのために入れた

;; projectile
(el-get-bundle! projectile)
(el-get-bundle! helm-projectile)

;; magit
(el-get-bundle! magit)

;; neotreeの依存パッケージ
(el-get-bundle! emacswiki:font-lock+)
(el-get-bundle! all-the-icons)
;; neotree
(el-get-bundle! neotree)
;;; markdown
(el-get-bundle! markdown-mode)

;;; company(code補完)
(el-get-bundle! company)

;;; Flycheck
(el-get-bundle! flycheck)

;;; EmacsLisp
(el-get-bundle! lispxmp)

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

;;; CommonLisp
;;; SLIMEでエラーが出るときは
;;; https://blog.3qe.us/entry/2017/04/07/002237
;;; が参考になるかもしれない。
(el-get-bundle! slime)
(el-get-bundle! slime-company)

;;; Elm
;(el-get-bundle! elm-mode)

;;; TODO markdownのソースコードのシンタックスハイライト
(el-get-bundle! mmm-mode)

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
 '(package-selected-packages (quote (multifiles company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
