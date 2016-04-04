(ue-ensure-installed '(company))

(setq company-idle-delay nil)
(setq company-tooltip-flip-when-above t)

(require 'company)

(delight 'company-mode nil "company")


(defvar ue-company-enabled t)
(provide 'ue-company)
