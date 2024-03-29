(when (window-system)
  (set-default-font "Fira Code"))
;;;; Ligatureフォント対策
;; https://github.com/tonsky/FiraCode/wiki/Setting-up-Emacs
(let ((alist '((33  . ".\\(?:\\(?:==\\|!!\\)\\|[!=]\\)")
               (35  . ".\\(?:###\\|##\\|_(\\|[#(?[_{]\\)")
               (36  . ".\\(?:>\\)")
               (37  . ".\\(?:\\(?:%%\\)\\|%\\)")
               (38  . ".\\(?:\\(?:&&\\)\\|&\\)")
	    ;; org-modeと相性悪いため削除
            ;; (42  . ".\\(?:\\(?:\\*\\*/\\)\\|\\(?:\\*[*/]\\)\\|[*/>]\\)")
               (43  . ".\\(?:\\(?:\\+\\+\\)\\|[+>]\\)")
               (45  . ".\\(?:\\(?:-[>-]\\|<<\\|>>\\)\\|[<>}~-]\\)")
               ;; "Attempt to shape unibyte text"というエラー回避のため
               ;; @see https://github.com/tonsky/FiraCode/wiki/Emacs-instructions
               ;; (46  . ".\\(?:\\(?:\\.[.<]\\)\\|[.=-]\\)")
               (47  . ".\\(?:\\(?:\\*\\*\\|//\\|==\\)\\|[*/=>]\\)")
               (48  . ".\\(?:x[a-zA-Z]\\)")
               (58  . ".\\(?:::\\|[:=]\\)")
               (59  . ".\\(?:;;\\|;\\)")
               (60  . ".\\(?:\\(?:!--\\)\\|\\(?:~~\\|->\\|\\$>\\|\\*>\\|\\+>\\|--\\|<[<=-]\\|=[<=>]\\||>\\)\\|[*$+~/<=>|-]\\)")
               (61  . ".\\(?:\\(?:/=\\|:=\\|<<\\|=[=>]\\|>>\\)\\|[<=>~]\\)")
               (62  . ".\\(?:\\(?:=>\\|>[=>-]\\)\\|[=>-]\\)")
               (63  . ".\\(?:\\(\\?\\?\\)\\|[:=?]\\)")
               (91  . ".\\(?:]\\)")
               (92  . ".\\(?:\\(?:\\\\\\\\\\)\\|\\\\\\)")
               (94  . ".\\(?:=\\)")
               (119 . ".\\(?:ww\\)")
               (123 . ".\\(?:-\\)")
               (124 . ".\\(?:\\(?:|[=|]\\)\\|[=>|]\\)")
               (126 . ".\\(?:~>\\|~~\\|[>=@~-]\\)")
               )
             ))
  (dolist (char-regexp alist)
    (set-char-table-range composition-function-table (car char-regexp)
                          `([,(cdr char-regexp) 0 font-shape-gstring]))))

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

(provide 'font-conf)
