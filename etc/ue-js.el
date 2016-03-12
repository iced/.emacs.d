(ue-ensure-installed '(js2-mode nodejs-repl))
(require 'js2-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(add-hook 'js2-mode-hook
          (lambda ()
            (tern-mode t)
            (auto-revert-mode -1)))


(if (boundp 'ue-company-enabled)
    (progn
      (ue-ensure-installed '(company-tern))
      (add-to-list 'company-backends 'company-tern)
      (add-hook 'js2-mode-hook #'company-mode)
      (define-key js2-mode-map (kbd "M-TAB") #'company-complete)))


(defvar ue-js-enabled t)
(provide 'ue-js)
