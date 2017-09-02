(use-package company
  :ensure t
  :init
  (setq company-idle-delay nil)
  (setq company-tooltip-flip-when-above t)
  (global-company-mode t)
  :bind
  (:map company-mode-map
        ("M-TAB" . company-complete))
  :delight company-mode)

(defvar ue-company-enabled t)
(provide 'ue-company)
