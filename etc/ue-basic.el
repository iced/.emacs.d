(require 'ue-package)

;; tweaking mode names
(ue-package-ensure-installed '(delight))
(require 'delight)

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

(defvar ue-basic-enabled t)
(provide 'ue-basic)
