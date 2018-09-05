;; とてもめんどいのでrust関連の設定は全部ここに
(unless (getenv "RUST_SRC_PATH")
  (setenv "RUST_SRC_PATH" (expand-file-name "~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src")))
(with-eval-after-load 'company
  (add-to-list 'company-backends 'company-racer))
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'rust-mode-hook #'flycheck-rust-setup)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(add-hook 'after-init-hook #'global-flycheck-mode)
