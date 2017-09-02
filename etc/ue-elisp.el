(use-package elisp-mode
  :init
  (add-hook 'emacs-lisp-mode-hook #'eldoc-mode)
  (if (boundp 'ue-flycheck-enabled)
      (setq flycheck-emacs-lisp-load-path 'inherit))
  (if (boundp 'ue-paredit-enabled)
      (add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)))

(defvar ue-elisp-enabled t)
(provide 'ue-elisp)
