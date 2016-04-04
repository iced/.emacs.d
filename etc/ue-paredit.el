(ue-ensure-installed '(paredit))

(require 'paredit)

(if (boundp 'ue-basic-enabled)
    (delight 'paredit-mode nil "paredit"))


(defvar ue-paredit-enabled t)
(provide 'ue-paredit)
