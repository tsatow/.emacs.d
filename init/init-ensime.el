(setq ensime-startup-notification nil)
(defun scala/enable-eldoc ()
  "Show error message at point by Eldoc."
  (setq-local eldoc-documentation-function
              #'(lambda ()
                  (when (ensime-connected-p)
                    (let ((err (ensime-print-errors-at-point)))
                      (and err (not (string= err "")) err)))))
  (eldoc-mode +1))
(add-hook 'ensime-mode-hook #'scala/enable-eldoc)
