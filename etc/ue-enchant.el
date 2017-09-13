(use-package eldoc
  :delight eldoc-mode)

(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode t)
  :delight undo-tree-mode)

(use-package which-key
  :ensure t
  :config
  (which-key-mode t)
  :delight which-key-mode)

(use-package anzu
  :ensure t
  :config
  (global-anzu-mode t)
  :bind
  (([remap query-replace] . anzu-query-replace)
   ([remap query-replace-regexp] . anzu-query-replace-regexp)
   :map isearch-mode-map
   ([remap isearch-query-replace] . anzu-isearch-query-replace)
   ([remap isearch-query-replace-regexp] . anzu-isearch-query-replace-regexp))
  :delight anzu-mode)

(use-package json-mode
  :ensure t)

(use-package yaml-mode
  :ensure t)

(use-package avy
  :ensure t
  :init
  (setq avy-style 'at)
  :bind
  ("C-;" . avy-goto-char)
  ("C-'" . avy-goto-word-1))

(defvar ue-enchant-enabled t)
(provide 'ue-enchant)