(defvar ue-dir (file-name-directory load-file-name))
(defvar ue-etc-dir (expand-file-name "etc" ue-dir))
(defvar ue-lib-dir (expand-file-name "lib" ue-dir))
(defvar ue-profiles-dir (expand-file-name "profiles" ue-dir))
(defvar ue-var-dir (expand-file-name "var" ue-dir))

(add-to-list 'load-path ue-etc-dir)
(add-to-list 'load-path ue-lib-dir)
(add-to-list 'load-path ue-profiles-dir)

(require 'package)

(setq package-user-dir (expand-file-name "packages" ue-var-dir))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

(require 'ue)

(defvar ue-profile (car (split-string (system-name) "\\\.")))
(require (intern (concat "ue-profile-" ue-profile)) nil t)

(setq custom-file (expand-file-name "custom.el" ue-var-dir))
(if (file-exists-p custom-file)
    (load custom-file))

(server-start)
