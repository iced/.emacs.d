(use-package projectile
  :ensure t
  :init
  (setq projectile-known-projects-file (expand-file-name "projectile-bookmarks" ue-var-dir))
  (setq projectile-cache-file (expand-file-name "projectile-cache" ue-var-dir))
  (setq projectile-mode-line
        '(:eval
          (if (file-remote-p default-directory)
              ""
            (if (equal (projectile-project-name) "-")
                ""
              (format " [%s]" (projectile-project-name))))))
  :config
  (projectile-global-mode))

(defvar ue-projectile-enabled t)
(provide 'ue-projectile)
