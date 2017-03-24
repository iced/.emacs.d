(ue-ensure-installed '(cider clj-refactor flycheck-clojure))

(require 'cider)
(require 'clj-refactor)

(setq cider-prompt-for-symbol nil)

(add-hook 'cider-mode-hook #'eldoc-mode)
(add-hook 'cider-mode-hook (lambda ()
                             (clj-refactor-mode 1)
                             (cljr-add-keybindings-with-prefix "C-c C-m")))


(if (boundp 'ue-paredit-enabled)
    (progn
      (add-hook 'clojure-mode-hook #'enable-paredit-mode)
      (add-hook 'cider-repl-mode-hook #'enable-paredit-mode)))


(if (boundp 'ue-company-enabled)
    (progn
      (define-key cider-mode-map (kbd "M-TAB") #'company-complete)
      (add-hook 'cider-mode-hook #'company-mode)
      (define-key cider-repl-mode-map (kbd "M-TAB") #'company-complete)
      (add-hook 'cider-repl-mode-hook #'company-mode)))


(defvar ue-clojure-enabled t)
(provide 'ue-clojure)
