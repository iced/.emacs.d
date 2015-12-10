(require 'ue-package)

(ue-package-ensure-installed '(projectile))

(require 'projectile)

(setq projectile-known-projects-file (expand-file-name "projectile-bookmarks" ue-var-dir))
(setq projectile-cache-file (expand-file-name "projectile-cache" ue-var-dir))

(projectile-global-mode)

(defvar ue-projectile-enabled t)
(provide 'ue-projectile)
