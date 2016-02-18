(ue-ensure-installed '(delight))
(delight 'eldoc-mode nil "eldoc")

(ue-ensure-installed '(json-mode))
(ue-ensure-installed '(csv-mode))
(ue-ensure-installed '(yaml-mode))

(ue-ensure-installed '(dockerfile-mode))

(ue-ensure-installed '(magit))
(global-set-key (kbd "C-x g") #'magit-status)

(ue-ensure-installed '(ag))

(ue-ensure-installed '(undo-tree))
(setq undo-tree-visualizer-diff t)
(global-undo-tree-mode 1)

(defalias 'list-buffers 'ibuffer)

(server-start)

(defvar ue-basic-enabled t)
(provide 'ue-basic)
