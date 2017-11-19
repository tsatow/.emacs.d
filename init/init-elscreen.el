;; C-z C-c新しいelscreenを作る
;; C-z C-k現在のelscreenを削除する
;; C-z M-k現在のelscreenをバッファごと削除する
;; C-z Kほかの全elscreenを削除する！
;; C-z C-n次のelscreenを選択
;; C-z C-p前のelscreenを選択
;; C-z C-a直前に選択したelscreenを選択
;; C-z C-f新しいelscreenでファイルを開く
;; C-z b新しいelscreenでバッファを開く
;; C-z d新しいelscreenでdiredを開く
;; C-z Tタブを非表示にする

;;; elscreenの設定
;;; プレフィクスキーはC-z
(setq elscreen-prefix-key (kbd "C-z"))
;;; タブの先頭に[X]を表示させない
(setq elscreen-tab-display-kill-screen nil)
;;; header-lineの先頭に[<->]を表示させない
(setq elscreen-tab-display-control nil)
;; タブを非表示
(setq elscreen-display-tab nil)
;; バッファ名・モード名からタブに表示させる内容を決定する(デフォルト設定)
(setq elscreen-buffer-to-nickname-alist
      '(("^dired-mode$" .
         (lambda ()
           (format "Dired(%s)" dired-directory)))
        ("^Info-mode$" .
         (lambda ()
           (format "Info(%s)" (file-name-nondirectory Info-current-file))))
        ("^mew-draft-mode$" .
         (lambda ()
           (format "Mew(%s)" (buffer-name (current-buffer)))))
        ("^mew-" . "Mew")
        ("^irchat-" . "IRChat")
        ("^liece-" . "Liece")
        ("^lookup-" . "Lookup")))
(setq elscreen-mode-to-nickname-alist
      '(("[Ss]hell" . "shell")
        ("compilation" . "compile")
        ("-telnet" . "telnet")
        ("dict" . "OnlineDict")
        ("*WL:Message*" . "Wanderlust")))

;; キーバインド
(global-set-key (kbd "<f9>") 'elscreen-toggle)
(global-set-key (kbd "<C-tab>") 'elscreen-next)
(global-set-key (kbd "<C-S-tab>") 'elscreen-previous)
