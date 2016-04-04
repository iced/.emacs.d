(server-start)

(setq frame-title-format '("" "emacs" " - " "%b"))

(toggle-frame-fullscreen)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(tooltip-mode 0)

(setq inhibit-startup-message t)
(setq initial-scratch-message "")

(setq initial-major-mode 'fundamental-mode)

(windmove-default-keybindings)

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

(blink-cursor-mode 0)
(setq-default cursor-in-non-selected-windows nil)

(fset 'yes-or-no-p 'y-or-n-p)

(setq bookmark-default-file (expand-file-name "bookmarks" ue-var-dir))

(add-hook 'before-save-hook #'whitespace-cleanup)

(setq create-lockfiles nil)
(setq backup-inhibited t)
(setq auto-save-default nil)
(global-auto-revert-mode -1)

(setq-default indent-tabs-mode nil)

(auto-compression-mode t)

(transient-mark-mode t)

(setq default-truncate-lines t)

(show-paren-mode t)

(setq dired-listing-switches "-Bhl --group-directories-first")
(setq directory-free-space-args "-Pmh")
(put 'dired-find-alternate-file 'disabled nil)

(ue-ensure-installed '(delight))
(delight 'eldoc-mode nil "eldoc")

(ue-ensure-installed '(json-mode csv-mode yaml-mode markdown-mode))
(ue-ensure-installed '(dockerfile-mode))

(ue-ensure-installed '(magit))
(magit-auto-revert-mode -1)
(global-set-key (kbd "C-x g") #'magit-status)

(ue-ensure-installed '(ag))
(ue-ensure-installed '(gist))

(ue-ensure-installed '(undo-tree))
(global-undo-tree-mode 1)
(delight 'undo-tree-mode nil "Undo-Tree")

(ue-ensure-installed '(avy))
(setq avy-style 'at)
(global-set-key (kbd "C-;") 'avy-goto-char)
(global-set-key (kbd "C-'") 'avy-goto-word-1)

(setq tramp-persistency-file-name (expand-file-name "tramp" ue-var-dir))

(defalias 'list-buffers 'ibuffer)

(setq erc-modules '(completion irccontrols list match move-to-prompt netsplit networks noncommands readonly ring track))


(defvar ue-basic-enabled t)
(provide 'ue-basic)
