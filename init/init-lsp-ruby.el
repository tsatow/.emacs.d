(add-hook 'ruby-mode-hook #'lsp-ruby-enable)
;; for short messages on hover
(setq lsp-hover-text-function 'lsp--text-document-signature-help)
