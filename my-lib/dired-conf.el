;;;; diredに関する設定

;;; defaultで詳細を非表示とする
(add-hook 'dired-mode-hook 'dired-hide-details-mode)
;;; 詳細表示非表示に切り替え
(define-key dired-mode-map (kbd "(") 'dired-hide-details-mode)
(define-key dired-mode-map (kbd ")") 'dired-hide-details-mode)

(provide 'dired-conf)
