(require 'ue-basic)
(require 'ue-ido)
(require 'ue-smex)
(require 'ue-company)
(require 'ue-projectile)
(require 'ue-org)
(require 'ue-yas)
(require 'ue-paredit)
(require 'ue-emacs-lisp)
(require 'ue-clojure)
(require 'ue-python)
(require 'ue-go)
(require 'ue-js)
(require 'ue-theme)

(ue-theme-set "zenburn")

(menu-bar-mode -1)
(setq insert-directory-program "gls")
(set-face-attribute 'default nil :height 140)

(dolist (dir '("Applications/" "Desktop/" "Documents/" "Downloads/" "Dropbox/" "Library/" "Movies/" "Music/" "Pictures/" "Public/"))
  (progn
    (add-to-list 'ido-ignore-files dir)
    (add-to-list 'ido-ignore-directories dir)))

(setq org-agenda-files '("~/Dropbox/Data/org/it.org"))


(provide 'ue-profile-machine-icedm)
