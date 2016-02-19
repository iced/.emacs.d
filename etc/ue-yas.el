(ue-ensure-installed '(yasnippet))

(setq yas-snippet-dirs '())
(add-to-list 'yas-snippet-dirs (expand-file-name "yas" ue-dir))

(yas-global-mode 1)
(delight 'yas-minor-mode nil "yasnippet")

(defvar ue-yas-enabled t)
(provide 'ue-yas)
