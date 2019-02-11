(add-hook 'js-mode-hook #'lsp-javascript-typescript-enable)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))
(add-hook 'typescript-mode-hook #'lsp-javascript-typescript-enable) ;; for typescript support
(add-hook 'js3-mode-hook #'lsp-javascript-typescript-enable) ;; for js3-mode support
(add-hook 'rjsx-mode #'lsp-javascript-typescript-enable)
