(ue-ensure-installed '(company company-flx))

(setq company-idle-delay nil)
(setq company-tooltip-flip-when-above t)

(require 'company)
(company-flx-mode +1)

(delight 'company-mode nil "company")


(defvar ue-company-enabled t)
(provide 'ue-company)
