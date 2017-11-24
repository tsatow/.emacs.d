;;;; list-interaction-modeでの設定

;;; evalした箇所を結果で置き換える関数
(defun eval-and-replace ()
  "Replace the preceding sexp with its value."
  (interactive)
  (backward-kill-sexp)
  (condition-case nil
      (prin1 (eval (read (current-kill 0)))
             (current-buffer))
    (error (message "Invalid expression")
           (insert (current-kill 0)))))
;;; scratchの初期メッセージ消去
(setq initial-scratch-message "")
;;; evalした箇所を結果で置き換える
(define-key lisp-interaction-mode-map (kbd "C-c C-e") 'eval-and-replace)


(provide 'lisp-interaction-mode-conf)
