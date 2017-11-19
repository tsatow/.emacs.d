(add-to-list 'auto-mode-alist'("\\.md\\'" . markdown-mode))

;; C-c C-c mを押すと、markdown-commandを実行し、別バッファにhtmlファイルを出力する。
;; C-c C-c pを押すと、markdown-commandを実行し、一時ファイルを生成し、ブラウザを起動する。
;; @see https://qiita.com/gooichi/items/2b185dbdf24166a15ca4
(setq markdown-command "multimarkdown")

