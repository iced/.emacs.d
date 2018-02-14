(require 'ue-sanitize)
(require 'ue-enchant)
(require 'ue-ido)
(require 'ue-projectile)
(require 'ue-company)
(require 'ue-flycheck)
(require 'ue-eshell)
(require 'ue-git)
(require 'ue-smartparens)
(require 'ue-org)
(require 'ue-elisp)
(require 'ue-python)
(require 'ue-clojure)
(require 'ue-yasnippet)

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

(setq inferior-lisp-program "sbcl")

(if (and (boundp ue-elisp-enabled)
         (boundp ue-flycheck-enabled))
    (setq flycheck-checkers (delq 'emacs-lisp-checkdoc flycheck-checkers)))

(setq org-agenda-files '("~/org/tasks.org"))
(setq org-capture-templates
      '(("n" "Note" entry (file "~/org/notes.org")
         "* %?")
        ("t" "Task" entry (file+headline "~/org/tasks.org" "Tasks")
         "* TODO %?")))

(set-face-attribute 'org-agenda-date-today nil :slant 'normal)

(use-package osx-dictionary
  :ensure t
  :init
  (setq osx-dictionary-mode-header-line nil)
  :bind
  ("C-=" . osx-dictionary-search-word-at-point))

(use-package ledger-mode
  :ensure t
  :init
  (require 'ob-ledger)
  :bind
  ("C-c C-v" . ledger-mode-clean-buffer))

(provide 'ue-profile-icedm)
