(ue-ensure-installed '(projectile))

(setq projectile-known-projects-file (expand-file-name "projectile-bookmarks" ue-var-dir))
(setq projectile-cache-file (expand-file-name "projectile-cache" ue-var-dir))

(require 'projectile)

(projectile-global-mode)

(defvar ue-projectile-enabled t)
(provide 'ue-projectile)
