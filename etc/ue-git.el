(use-package magit
  :ensure t
  :bind
  ("C-x g" . magit-status))

(use-package git-timemachine
  :ensure t)

(defvar ue-git-enabled t)
(provide 'ue-git)
