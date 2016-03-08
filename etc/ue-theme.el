(defun ue-theme-set (name)
  (interactive
   (list
    (completing-read "Theme: " '("misterioso" "zenburn"))))
  (mapcar #'disable-theme custom-enabled-themes)
  (require (intern (concat "ue-theme-" name)))
  (funcall (intern (concat "ue-theme-" name "-init"))))

(defvar ue-theme-enabled t)
(provide 'ue-theme)
