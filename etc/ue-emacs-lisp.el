(add-hook 'emacs-lisp-mode-hook #'eldoc-mode)


(if (boundp 'ue-paredit-enabled)
    (add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode))


(if (boundp 'ue-company-enabled)
    (progn
      (define-key emacs-lisp-mode-map (kbd "M-TAB") #'company-complete)
      (add-hook 'emacs-lisp-mode-hook #'company-mode)))


(defvar ue-emacs-lisp-enabled t)
(provide 'ue-emacs-lisp)
