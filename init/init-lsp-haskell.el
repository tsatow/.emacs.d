;; 参考: https://qiita.com/waddlaw/items/b83cd10311200095fe87
(require 'lsp-haskell)
(add-hook 'haskell-mode-hook 'lsp-haskell-enable)
(add-hook 'haskell-mode-hook 'flycheck-mode)
