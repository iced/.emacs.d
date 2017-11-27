(use-package eshell
  :init
  (setq eshell-banner-message "")
  (setq eshell-directory-name (expand-file-name "eshell" ue-var-dir))
  :config
  (if (boundp 'ue-company-enabled)
      (bind-keys :map eshell-mode-map
                 ("M-TAB" . company-complete))))

(defvar ue-eshell-enabled t)
(provide 'ue-eshell)
