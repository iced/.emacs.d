(require 'ue-basic)
(require 'ue-ido)
(require 'ue-smex)
(require 'ue-company)
(require 'ue-projectile)
(require 'ue-org)
(require 'ue-yas)
(require 'ue-flycheck)
(require 'ue-paredit)
(require 'ue-emacs-lisp)
(require 'ue-clojure)
(require 'ue-python)
(require 'ue-go)
(require 'ue-js)
(require 'ue-swift)
(require 'ue-theme)

(ue-theme-set "zenburn")

(setq insert-directory-program "gls")
(set-default-font "Source Code Pro")
(set-face-attribute 'default nil :height 140)

(dolist (dir '("Applications/" "Desktop/" "Documents/" "Downloads/" "Dropbox/" "Library/" "Movies/" "Music/" "Pictures/" "Public/"))
  (progn
    (add-to-list 'ido-ignore-files dir)
    (add-to-list 'ido-ignore-directories dir)))

(pyenv-mode-set "default")

(setq org-agenda-files '("~/org/it.org" "~/org/journal.org"))
(setq org-capture-templates
      '(("n" "Note" entry (file+headline "~/org/journal.org" "NOTES") "** %?")
        ("t" "TODO" entry (file+headline "~/org/journal.org" "TODOS") "** TODO %?")))

(ue-ensure-installed '(osx-dictionary))
(delight 'osx-dictionary-mode "Dictionary" "osx-dictionary")

(setq osx-dictionary-dictionary-choice '("Dictionary"))
(global-set-key (kbd "C-c t") 'osx-dictionary-search-input)

(add-hook 'osx-dictionary-mode-hook (lambda () (toggle-truncate-lines -1)))

(setq flycheck-swift-sdk-path "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS10.1.sdk")


(provide 'ue-profile-machine-icedm)
