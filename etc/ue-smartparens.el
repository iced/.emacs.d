(use-package smartparens
  :ensure t
  :config
  (require 'smartparens-config)
  (show-smartparens-global-mode t)
  (sp-use-smartparens-bindings)
  :delight smartparens-mode smartparens-strict-mode)

(defvar ue-smartparens-enabled t)
(provide 'ue-smartparens)
