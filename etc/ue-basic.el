(ue-ensure-installed '(delight))
(require 'delight)

(delight 'eldoc-mode nil "eldoc")


(ue-ensure-installed '(json-mode))
(require 'json-mode)


(ue-ensure-installed '(csv-mode))
(require 'csv-mode)


(ue-ensure-installed '(yaml-mode))
(require 'yaml-mode)


(ue-ensure-installed '(magit))
(require 'magit)

(global-set-key (kbd "C-x g") #'magit-status)

(defvar ue-basic-enabled t)
(provide 'ue-basic)
