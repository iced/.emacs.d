(require 'ue-sanitize)
(require 'ue-enchant)
(require 'ue-ido)
(require 'ue-projectile)
(require 'ue-company)
(require 'ue-flycheck)
(require 'ue-git)
(require 'ue-paredit)
(require 'ue-elisp)
(require 'ue-python)
(require 'ue-clojure)

(use-package zenburn-theme
  :ensure t
  :config
  (ue-theme-set 'zenburn))

(set-default-font "Source Code Pro")
(set-face-attribute 'default nil :height 140)

(setq insert-directory-program "gls")

(if (boundp ue-ido-enabled)
    (dolist (dir '("Applications/" "Desktop/" "Documents/" "Downloads/" "Dropbox/" "Library/" "Movies/" "Music/" "Pictures/" "Public/"))
      (progn
        (add-to-list 'ido-ignore-files dir)
        (add-to-list 'ido-ignore-directories dir))))

(if (and (boundp ue-elisp-enabled)
         (boundp ue-flycheck-enabled))
    (setq flycheck-checkers (delq 'emacs-lisp-checkdoc flycheck-checkers)))

(provide 'ue-profile-icedm)
