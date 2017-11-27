(use-package org
  :init
  (setq org-src-fontify-natively t)
  (setq org-M-RET-may-split-line nil)
  (setq org-display-custom-times t)
  (setq org-time-stamp-custom-formats '("<%F>" . "<%F %H:%M>"))
  (if (boundp 'ue-ido-enabled)
      (progn
        (setq org-completion-use-ido t)
        (setq org-outline-path-complete-in-steps nil)))
  :bind
  ("C-c l" . org-store-link)
  ("C-c a" . org-agenda)
  ("C-c c" . org-capture))

(defvar ue-org-enabled t)
(provide 'ue-org)
