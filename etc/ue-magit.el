(require 'ue-package)

(ue-package-ensure-installed '(magit))

(require 'magit)

(global-set-key (kbd "C-x g") #'magit-status)

(defvar ue-magit-enabled t)
(provide 'ue-magit)
