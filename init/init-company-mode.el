(global-company-mode 1) ;; company-mode を常に ON


(set-face-attribute 'company-tooltip nil
                    :foreground "white" :background "gray20")
(set-face-attribute 'company-tooltip-common nil
                    :foreground "black" :background "gray50")
(set-face-attribute 'company-tooltip-common-selection nil
                    :foreground "white" :background "steelblue")
(set-face-attribute 'company-tooltip-selection nil
                    :foreground "black" :background "steelblue")
(set-face-attribute 'company-preview-common nil
                    :background nil :foreground "gray40" :underline t)
(set-face-attribute 'company-scrollbar-fg nil
                    :background "gray40")
(set-face-attribute 'company-scrollbar-bg nil
                    :background "gray20")

(define-key company-active-map (kbd "\C-n") 'company-select-next)
(define-key company-active-map (kbd "\C-p") 'company-select-previous)
(define-key company-active-map (kbd "\C-d") 'company-show-doc-buffer)
(define-key company-active-map (kbd "M-.") 'company-show-location)
