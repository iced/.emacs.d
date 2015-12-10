(ue-ensure-installed '(company))
(require 'company)

(setq company-idle-delay nil)
(setq company-tooltip-flip-when-above t)

(delight 'company-mode nil "company")

(defvar ue-company-enabled t)
(provide 'ue-company)
