(ue-ensure-installed '(js3-mode nodejs-repl))

(require 'js3-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js3-mode))

(add-hook 'js3-mode-hook
          (lambda ()
            (setq js3-auto-indent-p t)
            (setq js3-enter-indents-newline t)
            (setq js3-indent-on-enter-key t)
            (tern-mode t)
            (auto-revert-mode -1)))


(if (boundp 'ue-company-enabled)
    (progn
      (ue-ensure-installed '(company-tern))
      (add-to-list 'company-backends 'company-tern)
      (add-hook 'js3-mode-hook #'company-mode)
      (define-key js3-mode-map (kbd "M-TAB") #'company-complete)))


(defvar ue-js-enabled t)
(provide 'ue-js)
