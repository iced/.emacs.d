(toggle-frame-fullscreen)
(setq frame-title-format '("" "emacs" " - " "%b"))

(tool-bar-mode 0)
(scroll-bar-mode 0)
(tooltip-mode 0)
(menu-bar-mode 0)

(setq initial-major-mode 'fundamental-mode)
(setq initial-scratch-message "")
(setq inhibit-startup-message t)

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
                "  "
                mode-line-position
                mode-line-modes
                mode-line-misc-info
                mode-line-end-spaces))

(setq-default cursor-in-non-selected-windows nil)
(blink-cursor-mode 0)

(setq create-lockfiles nil)
(setq backup-inhibited t)
(setq auto-save-default nil)
(setq auto-save-list-file-prefix (expand-file-name "auto-save-" ue-var-dir))
(setq-default indent-tabs-mode nil)
(setq default-truncate-lines t)
(show-paren-mode t)
(windmove-default-keybindings 'super)
(fset 'yes-or-no-p 'y-or-n-p)
(add-hook 'before-save-hook #'whitespace-cleanup)
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
(setq bookmark-default-file (expand-file-name "bookmarks" ue-var-dir))
(setq tramp-persistency-file-name (expand-file-name "tramp" ue-var-dir))
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-set-key (kbd "M-/") 'hippie-expand)
(defalias 'list-buffers 'ibuffer)

(use-package delight
  :ensure t)

(use-package autorevert
  :config
  (global-auto-revert-mode)
  :delight auto-revert-mode)

(use-package uniquify
  :init
  (setq uniquify-buffer-name-style 'forward)
  (setq uniquify-separator "/")
  (setq uniquify-after-kill-buffer-p t))

(use-package dired
  :init
  (setq dired-listing-switches "-Bhl --group-directories-first"))

(use-package dired+
  :ensure t)

(use-package exec-path-from-shell
  :if (ue-is-osx)
  :ensure t
  :config
  (exec-path-from-shell-initialize))

(defvar ue-sanitize-enabled t)
(provide 'ue-sanitize)
