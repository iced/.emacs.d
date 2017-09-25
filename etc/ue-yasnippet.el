(use-package yasnippet
  :ensure t
  :init
  (setq yas-snippet-dirs '())
  (add-to-list 'yas-snippet-dirs (expand-file-name "yas" ue-dir))
  (yas-global-mode 1)
  :delight yas-minor-mode)

(defvar ue-yasnippet-enabled t)
(provide 'ue-yasnippet)
