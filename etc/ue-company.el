(require 'ue-package)

(ue-package-ensure-installed '(company))

(require 'company)

(setq company-idle-delay nil)
(setq company-tooltip-flip-when-above t)
(setq company-dabbrev-downcase nil)

(defvar ue-company-enabled t)
(provide 'ue-company)
