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

;; more useful modeline
(line-number-mode t)
(column-number-mode t)
(setq-default mode-line-format
              '("%e"
                mode-line-front-space
                mode-line-mule-info
                mode-line-client
                mode-line-modified
                mode-line-remote
                mode-line-frame-identification
                mode-line-buffer-identification
                "   "
                mode-line-position
                "   "
                mode-line-modes
                mode-line-misc-info
                mode-line-end-spaces))

;; nice theme
(setq custom-enabled-themes '(misterioso))
(load-theme 'misterioso)

;; color tweaks for company popup
(if (boundp 'ue-company-enabled)
    (custom-set-faces
     '(company-tooltip ((t (:background "steel"))))))

(defvar ue-look-enabled t)
(provide 'ue-look)
