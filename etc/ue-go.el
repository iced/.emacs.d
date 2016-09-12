(if (eq system-type 'darwin)
    (exec-path-from-shell-copy-env "GOPATH"))

(ue-ensure-installed '(go-mode go-eldoc go-gopath))

(require 'go-mode)
(require 'go-eldoc)
(require 'go-gopath)

(add-hook 'go-mode-hook #'go-eldoc-setup)
(add-hook 'go-mode-hook (lambda ()
                          (setq tab-width 4)
                          (set (make-local-variable 'compile-command)
                               "go build")))

(setq gofmt-command "goimports")
(add-hook 'before-save-hook #'gofmt-before-save)

(setq godoc-command "godoc")
(define-key go-mode-map (kbd "C-c C-d") #'godoc-at-point)
(define-key go-mode-map (kbd "M-.") #'godef-jump)

(load-file (expand-file-name
            "src/golang.org/x/tools/cmd/guru/go-guru.el"
            (expand-file-name ".." (file-name-directory (executable-find "guru")))))
(add-hook 'go-mode-hook #'go-guru-hl-identifier-mode)

(define-key go-mode-map (kbd "C-c C-e") #'go-gopath-set-gopath)


(if (boundp 'ue-company-enabled)
    (progn
      (ue-ensure-installed '(company-go))
      (add-to-list 'company-backends 'company-go)
      (add-hook 'go-mode-hook #'company-mode)
      (define-key go-mode-map (kbd "M-TAB") #'company-complete)))


(defvar ue-go-enabled t)
(provide 'ue-go)
