(require 'ue-basic)
(require 'ue-ido)
(require 'ue-helm)
(require 'ue-company)
(require 'ue-projectile)
(require 'ue-yas)
(require 'ue-paredit)
(require 'ue-emacs-lisp)
(require 'ue-cl)
(require 'ue-clojure)
(require 'ue-python)
(require 'ue-go)
(require 'ue-ess)
(require 'ue-scala)
(require 'ue-theme)

(ue-theme-load "zenburn")

(menu-bar-mode -1)
(setq insert-directory-program "gls")
(set-face-attribute 'default nil :height 140)

(dolist (dir '("Applications/" "Desktop/" "Documents/" "Downloads/" "Library/" "Movies/" "Music/" "Pictures/" "Public/"))
  (progn
    (add-to-list 'ido-ignore-files dir)
    (add-to-list 'ido-ignore-directories dir)))

(setq org-agenda-files '("~/org/it.org"))

(provide 'ue-profile-machine-icedm)
