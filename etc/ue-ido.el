(use-package ido
  :init
  (setq ido-save-directory-list-file (expand-file-name "ido" ue-var-dir))
  (setq ido-enable-flex-matching t)
  (ido-mode t)
  (ido-everywhere t)
  (add-to-list 'ido-ignore-files "\\`\\.")
  (add-to-list 'ido-ignore-directories "\\`\\.")
  (add-to-list 'ido-ignore-buffers "^\*"))

(use-package flx-ido
  :ensure t
  :init
  (setq ido-use-faces nil)
  :config
  (flx-ido-mode t))

(use-package ido-completing-read+
  :ensure t
  :config
  (ido-ubiquitous-mode t))

(use-package smex
  :ensure t
  :init
  (setq smex-save-file (expand-file-name "smex" ue-var-dir))
  :config
  (smex-initialize)
  :bind
  (("M-x" . smex)
   ("M-X" . smex-major-mode-commands)))

(defvar ue-ido-enabled t)
(provide 'ue-ido)
