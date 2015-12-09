(require 'ue-package)

(ue-package-ensure-installed '(magit))

(require 'magit)

(defvar ue-magit-enabled t)
(provide 'ue-magit)
