(defvar ue-dir (file-name-directory load-file-name))
(defvar ue-etc-dir (expand-file-name "etc" ue-dir))
(defvar ue-var-dir (expand-file-name "var" ue-dir))
(defvar ue-profiles-dir (expand-file-name "profiles" ue-dir))

(add-to-list 'load-path ue-etc-dir)
(add-to-list 'load-path ue-profiles-dir)


(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(setq package-user-dir (expand-file-name "packages" ue-var-dir))
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(defun ue-ensure-installed (packages)
  (dolist (package packages)
    (unless (package-installed-p package)
      (package-install package))))


(require 'ue-defaults)

(require (intern (concat "ue-profile-machine-" (system-name))) nil t)
