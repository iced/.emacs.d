(use-package cider
  :ensure t
  :init
  (setq cider-prompt-for-symbol nil)
  (if (boundp 'ue-paredit-enabled)
      (progn
        (add-hook 'clojure-mode-hook #'enable-paredit-mode)
        (add-hook 'cider-repl-mode-hook #'enable-paredit-mode)))
  :config
  (if (boundp 'ue-company-enabled)
      (bind-keys :map cider-mode-map
                 ("M-TAB" . company-complete)
                 :map cider-repl-mode-map
                 ("M-TAB" . company-complete))))

(defvar ue-clojure-enabled t)
(provide 'ue-clojure)
