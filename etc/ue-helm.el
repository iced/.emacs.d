(ue-ensure-installed '(helm))

(require 'helm-config)

(global-set-key (kbd "M-x") 'helm-M-x)


(defvar ue-helm-enabled t)
(provide 'ue-helm)
