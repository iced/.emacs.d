(setq frame-title-format '("" invocation-name " - " "%b"))

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(tooltip-mode 0)

(setq inhibit-startup-message t)
(setq initial-scratch-message "")

(setq initial-major-mode 'fundamental-mode)

(windmove-default-keybindings)

(setq bookmark-default-file (expand-file-name "bookmarks" ue-var-dir))

(setq dired-listing-switches "-Bhl --group-directories-first")
(setq directory-free-space-args "-Pmh")
(put 'dired-find-alternate-file 'disabled nil)

(fset 'yes-or-no-p 'y-or-n-p)

(add-hook 'before-save-hook #'whitespace-cleanup)

(setq backup-inhibited t)

(setq auto-save-default nil)
(setq auto-save-list-file-prefix (expand-file-name "auto-save-" ue-var-dir))

(setq-default indent-tabs-mode nil)

(auto-compression-mode t)

(transient-mark-mode t)

(blink-cursor-mode 0)
(setq-default cursor-in-non-selected-windows nil)

(setq default-truncate-lines t)

(show-paren-mode t)

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

(defvar ue-defaults-enabled t)
(provide 'ue-defaults)
