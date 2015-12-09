(delight 'eldoc-mode nil "eldoc")

(if (boundp 'ue-paredit-enabled)
    (delight 'paredit-mode nil "paredit"))

(if (boundp 'company-mode)
    (delight 'company-mode nil "company"))

(defvar ue-lisps-enabled t)
(provide 'ue-lisps)
