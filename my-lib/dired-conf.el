;;;; diredに関する設定

;;; defaultで詳細を非表示とする
(add-hook 'dired-mode-hook 'dired-hide-details-mode)

;;; diredでは半角にする
(when (equal system-type 'darwin)
  (add-hook 'dired-mode-hook (mac-auto-ascii-mode 1)))

;;; 詳細表示非表示に切り替え
(define-key dired-mode-map (kbd "(") 'dired-hide-details-mode)
(define-key dired-mode-map (kbd ")") 'dired-hide-details-mode)

;; g(M-x revert-bufferと同じ)をいちいち押すの面倒なので自動的にやる
(global-auto-revert-mode 1)

(provide 'dired-conf)
