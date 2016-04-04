(defun ue-theme-misterioso-init ()
  (load-theme 'misterioso t)

  (custom-set-faces
   '(header-line ((t (:background "steel" :foreground "#333333")))))

  (if (boundp 'ue-helm-enabled)
      (custom-set-faces
       '(helm-source-header ((t (:background "#22083397778B" :foreground "white"))))))

  (if (boundp 'ue-company-enabled)
      (custom-set-faces
       '(company-tooltip ((t (:background "steel")))))))


(defvar ue-theme-misterioso-enabled t)
(provide 'ue-theme-misterioso)
