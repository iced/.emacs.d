(require 'ue-package)

(ue-package-ensure-installed '(paredit))

(require 'paredit)

(defvar ue-paredit-enabled t)
(provide 'ue-paredit)
