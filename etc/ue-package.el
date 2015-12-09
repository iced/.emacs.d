(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(setq package-user-dir (expand-file-name "packages" ue-dir))
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(defun ue-package-ensure-installed (packages)
  (dolist (package packages)
    (unless (package-installed-p package)
      (package-install package))))

(defvar ue-package-enabled t)
(provide 'ue-package)
