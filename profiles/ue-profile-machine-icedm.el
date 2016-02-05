(require 'ue-basic)
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
(require 'ue-theme-misterioso)
(require 'ue-osx)

(set-face-attribute 'default nil :height 140)

(ue-add-to-path "/usr/local/bin")
(ue-add-to-path "/Users/iced/.bin")

(setenv "GOPATH" "/Users/iced/dev/go")
(ue-add-to-path "/Users/iced/dev/go/bin")

(provide 'ue-profile-machine-icedm)
