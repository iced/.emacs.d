(require 'ue-package)

(ue-package-ensure-installed '(cider))

(require 'cider)

(add-hook 'cider-mode-hook #'eldoc-mode)

(if (boundp 'ue-paredit-enabled)
    (progn
      (add-hook 'clojure-mode-hook #'enable-paredit-mode)
      (add-hook 'cider-repl-mode-hook #'enable-paredit-mode)))

(defvar ue-clojure-enabled t)
(provide 'ue-clojure)
