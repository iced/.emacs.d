(setq org-src-fontify-natively t)

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)

(setq org-M-RET-may-split-line nil)


(if (boundp 'ue-ido-enabled)
    (progn
      (setq org-completion-use-ido t)
      (setq org-outline-path-complete-in-steps nil)))


(defvar ue-org-enabled t)
(provide 'ue-org)
