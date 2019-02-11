;; https://www.ncaq.net/2018/12/15/16/07/17/
;(cl-delete-if (lambda (element) (equal (cdr element) 'rust-mode)) auto-mode-alist)
;(cl-delete-if (lambda (element) (equal (cdr element) 'rustic-mode)) auto-mode-alist)
; rusticを有効にするときはコメントアウトを外す
;(add-to-list 'auto-mode-alist '("\\.rs$" . rustic-mode))

;; 本当にwithout switchしているわけではなく前のウィンドウにフォーカスを戻すだけ
;(defun pop-to-buffer-without-switch (buffer-or-name &optional action norecord)
;  (pop-to-buffer buffer-or-name action norecord)
;  (other-window -1)
;  )

;; エラーポップアップにフォーカスを移さない
;(custom-set-variables '(rustic-format-display-method 'pop-to-buffer-without-switch))

;; racer-modeiはじめ、ほとんどの関数が無効なようなので一旦コメントアウト
;; https://medium.com/@mopemope/emacs-%E3%81%A7-rust%E3%81%AE%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83%E3%82%92%E6%A7%8B%E7%AF%89%E3%81%99%E3%82%8B%E8%A9%B1-1278803f24b2
;(add-hook 'rustic-mode-hook
;            '(lambda ()
;               (racer-mode t)
;               (dumb-jump-mode t)
;               (highlight-symbol-mode t)
;               (rainbow-delimiters-mode t)
;               (smartparens-mode t)))
