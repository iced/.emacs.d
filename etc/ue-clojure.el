(require 'ue-package)

(ue-package-ensure-installed '(cider))

(require 'cider)

(add-hook 'cider-mode-hook #'eldoc-mode)

(if (boundp 'ue-paredit-enabled)
    (progn
      (add-hook 'clojure-mode-hook #'enable-paredit-mode)
      (add-hook 'cider-repl-mode-hook #'enable-paredit-mode)))

(if (boundp 'ue-company-enabled)
    (progn
      (add-hook 'cider-mode-hook #'company-mode)
      (define-key cider-mode-map (kbd "M-TAB") #'company-complete)
      (add-hook 'cider-repl-mode-hook
                (lambda ()
                  (company-mode)
                  (local-set-key (kbd "M-TAB") #'company-complete)))))

(defvar ue-clojure-enabled t)
(provide 'ue-clojure)
