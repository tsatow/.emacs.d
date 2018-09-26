;; 隠しファイルをデフォルトで表示
(setq neo-show-hidden-files t)
;; cotrol + q でneotreeを起動
(global-set-key (kbd "C-M-'") 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
