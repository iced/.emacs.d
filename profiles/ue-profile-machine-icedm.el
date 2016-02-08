(require 'ue-basic)
(require 'ue-osx)
(require 'ue-ido)
(require 'ue-company)
(require 'ue-projectile)
(require 'ue-paredit)
(require 'ue-emacs-lisp)
(require 'ue-cl)
(require 'ue-clojure)
(require 'ue-python)
(require 'ue-go)
(require 'ue-ess)
(require 'ue-scala)
(require 'ue-theme-misterioso)

(set-face-attribute 'default nil :height 140)

(ue-add-to-path "/usr/local/bin")
(ue-add-to-path (expand-file-name "~/.bin"))

(setenv "GOPATH" (expand-file-name "~/dev/go"))
(ue-add-to-path (expand-file-name "~/dev/go/bin"))

(provide 'ue-profile-machine-icedm)
