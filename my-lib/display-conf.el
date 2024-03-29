;;;; 表示に関する設定

;;; Theme
(color-theme-initialize)
(color-theme-tomorrow-night-blue)

;;; スクロールバーを非表示
(scroll-bar-mode -1) 

;;; ツールバーを非表示
(tool-bar-mode -1)

;;; メニューバーを非表示
(menu-bar-mode -1)

;;; 設定例
;;; https://qiita.com/takaxp/items/6ec37f9717e362bef35f
(when (memq window-system '(mac ns))
  (setq initial-frame-alist
        (append
         '((ns-transparent-titlebar . t) ;; タイトルバーを透過
           (vertical-scroll-bars . nil) ;; スクロールバーを消す
           (ns-appearance . dark) ;; 26.1 {light, dark}
           (internal-border-width . 0))))) ;; 余白を消す
(setq default-frame-alist initial-frame-alist)

;;; デフォルトで文字折り返しなし
;;; see https://www.glamenv-septzen.net/view/358
(setq-default truncate-partial-width-windows t)
(setq-default truncate-lines t)

;;; 行番号表示
(global-linum-mode 1)
(setq linum-format "%4d ")
(global-set-key [f6] 'linum-mode)

;;; 現在行に色をつける
(global-hl-line-mode 1)
;; VSCodeのtomorrow-night-blueテーマでの<div class="current-line">のスタイルから拝借
(set-face-background 'hl-line "#00346e") 

;;; 時間を表示
(display-time)

;;; 起動時のサイズを最大化
;;; widthはscratchバッファから最大化した状態の(frame-width)と(frame-height)で調べた
(set-frame-position nil 0 -24)
(set-frame-size nil (display-pixel-width) (display-pixel-height) t)

;;; スタートメッセージを表示しない
(setq inhibit-startup-message t)

;;; font設定
(require 'font-conf)

(provide 'display-conf)
