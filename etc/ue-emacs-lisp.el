(if (boundp 'ue-paredit-enabled)
    (add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode))

(if (boundp 'ue-company-enabled)
    (progn
      (add-hook 'emacs-lisp-mode-hook #'company-mode)
      (add-hook 'emacs-lisp-mode-hook
                (lambda () (local-set-key (kbd "M-TAB") #'company-complete)))))

(defvar ue-emacs-lisp-enabled t)
(provide 'ue-emacs-lisp)
