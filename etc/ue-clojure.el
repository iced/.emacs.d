(use-package cider
  :ensure t
  :init
  (setq cider-prompt-for-symbol nil)
  (if (boundp 'ue-smartparens-enabled)
      (progn
        (add-hook 'clojure-mode-hook #'smartparens-strict-mode)
        (add-hook 'cider-repl-mode-hook #'smartparens-strict-mode)))
  :config
  (if (boundp 'ue-company-enabled)
      (bind-keys :map cider-mode-map
                 ("M-TAB" . company-complete)
                 :map cider-repl-mode-map
                 ("M-TAB" . company-complete))))

(use-package clj-refactor
  :ensure t
  :init
  (add-hook 'clojure-mode-hook
            (lambda ()
              (clj-refactor-mode t)
              (cljr-add-keybindings-with-prefix "C-c C-m")))
  :delight clj-refactor-mode)

(defvar ue-clojure-enabled t)
(provide 'ue-clojure)
