(add-hook 'lisp-mode-hook #'eldoc-mode)

(ue-ensure-installed '(slime))

(require 'slime)
(slime-setup '(slime-repl))

(setq inferior-lisp-program "sbcl")


(if (boundp 'ue-paredit-enabled)
    (progn
      (add-hook 'lisp-mode-hook #'enable-paredit-mode)
      (add-hook 'slime-repl-mode-hook #'enable-paredit-mode)))


(if (boundp 'ue-company-enabled)
    (progn
      (define-key lisp-mode-map (kbd "M-TAB") #'company-complete)
      (add-hook 'lisp-mode-hook #'company-mode)
      (define-key slime-repl-mode-map (kbd "M-TAB") #'company-complete)
      (add-hook 'slime-repl-mode-hook #'company-mode)))

(defvar ue-cl-enabled t)
(provide 'ue-cl)
