;; 隠しファイルをデフォルトで表示
(setq neo-show-hidden-files t)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
;; When running ‘projectile-switch-project’ (C-c p p), ‘neotree’ will change root automatically.
(setq projectile-switch-project-action 'neotree-projectile-action)
;; Similar to find-file-in-project, NeoTree can be opened (toggled) at projectile project root.
(defun neotree-project-dir ()
  "Open NeoTree using the git root."
  (interactive)
  (let ((project-dir (projectile-project-root))
        (file-name (buffer-file-name)))
    (neotree-toggle)
    (if project-dir
        (if (neo-global--window-exists-p)
            (progn
              (neotree-dir project-dir)
              (neotree-find file-name)))
      (message "Could not find git project root."))))

(global-set-key (kbd "C-\"") 'neotree-toggle)
(global-set-key (kbd "C-M-'") 'neotree-project-dir)
