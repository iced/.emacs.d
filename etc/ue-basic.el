(require 'ue-package)

;; default mode
(setq initial-major-mode 'fundamental-mode)

;; cursor switching between windows
(windmove-default-keybindings)

;; ido
(ido-mode t)
(setq ido-save-directory-list-file (expand-file-name "ido" ue-var-dir))

;; always use y/n prompts
(fset 'yes-or-no-p 'y-or-n-p)

;; remove trailing whitespaces on save
(add-hook 'before-save-hook #'whitespace-cleanup)

;; disable backups
(setq backup-inhibited t)

;; disable auto saves
(setq auto-save-default nil)
(setq auto-save-list-file-prefix (expand-file-name "auto-save-" ue-var-dir))

;; don't use tabs
(setq-default indent-tabs-mode nil)

;; open compressed files
(auto-compression-mode t)

;; tweaking mode names
(ue-package-ensure-installed '(delight))
(require 'delight)

;; hide eldoc mode in mode line
(delight 'eldoc-mode nil "eldoc")

;; proper json mode support
(ue-package-ensure-installed '(json-mode))
(require 'json-mode)

;; proper csv mode support
(ue-package-ensure-installed '(csv-mode))
(require 'csv-mode)

(defvar ue-basic-enabled t)
(provide 'ue-basic)
