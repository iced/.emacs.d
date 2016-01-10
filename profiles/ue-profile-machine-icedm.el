(require 'ue-basic)
(require 'ue-ido)
(require 'ue-company)
(require 'ue-projectile)
(require 'ue-paredit)
(require 'ue-emacs-lisp)
(require 'ue-clojure)
(require 'ue-python)
(require 'ue-go)
(require 'ue-theme-misterioso)

(set-face-attribute 'default nil :height 180) ; 140 for laptop display, 180 for external

(menu-bar-mode t)

(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(add-to-list 'exec-path "/usr/local/bin")

(setenv "GOPATH" "~/dev/go")
(setenv "PATH" (concat "~/dev/go/bin:" (getenv "PATH")))
(add-to-list 'exec-path "~/dev/go/bin")

(setenv "PATH" (concat "~/.bin:" (getenv "PATH")))
(add-to-list 'exec-path "~/.bin")

(setq insert-directory-program "gls")

(provide 'ue-profile-machine-icedm)
