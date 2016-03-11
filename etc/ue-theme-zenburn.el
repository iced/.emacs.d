(defun ue-theme-zenburn-init ()
  (ue-ensure-installed '(zenburn-theme))
  (load-theme 'zenburn t))


(defvar ue-theme-zenburn-enabled t)
(provide 'ue-theme-zenburn)
