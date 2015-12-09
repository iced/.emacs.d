(if (boundp 'ue-paredit-enabled)
    (add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode))

(defvar ue-emacs-lisp-enabled t)
(provide 'ue-emacs-lisp)
