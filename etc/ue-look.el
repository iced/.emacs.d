;; frame title
(setq frame-title-format '("" invocation-name " - " "%b"))

;; no startup messages and scratch text
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;; disable menu, toolbar, scrollbars and tooltips
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(tooltip-mode 0)

;; visual selection
(transient-mark-mode t)

;; non blinking cursor
(blink-cursor-mode 0)

;; cursor only in active window
(setq-default cursor-in-non-selected-windows nil)

;; truncate lines
(setq default-truncate-lines t)

;; show matching parens
(show-paren-mode t)

;; nice theme
(setq custom-enabled-themes '(misterioso))
(load-theme 'misterioso)

(defvar ue-look-enabled t)
(provide 'ue-look)
