;; go get github.com/nsf/gocode
;; go get github.com/rogpeppe/godef
;; go get golang.org/x/tools/cmd/goimports
;; go get golang.org/x/tools/cmd/gorename
;; go get golang.org/x/tools/cmd/oracle
;; go get github.com/constabulary/gb/...

(if (eq system-type 'darwin)
    (exec-path-from-shell-copy-env "GOPATH"))

(ue-ensure-installed '(go-mode go-eldoc))

(require 'go-mode)
(require 'go-eldoc)

(add-hook 'go-mode-hook #'go-eldoc-setup)
(add-hook 'go-mode-hook (lambda ()
                          (setq tab-width 4)
                          (set (make-local-variable 'compile-command)
                               "gb build")))

(setq gofmt-command "goimports")
(add-hook 'before-save-hook #'gofmt-before-save)

(define-key go-mode-map (kbd "C-c C-d") #'godoc-at-point)
(define-key go-mode-map (kbd "M-.") #'godef-jump)

(load-file (expand-file-name
            "src/golang.org/x/tools/cmd/oracle/oracle.el"
            (expand-file-name ".." (file-name-directory (locate-file "oracle" exec-path)))))


(defun ue-go-gb-env-line (name)
  (unless (eq buffer-file-name nil)
    (let ((gbe-env (split-string (shell-command-to-string "gb env") "\n")))
      (car (remove-if-not (lambda (e) (string-prefix-p name e)) gbe-env)))))

(defun ue-go-gb-env-value (name)
  (let ((env-line (ue-go-gb-env-line name)))
    (unless (eq env-line nil)
      (substring env-line (+ (length name) 2) -1))))

(defun ue-go-gb-root ()
  (if (executable-find "gb")
      (ue-go-gb-env-value "GB_PROJECT_DIR")))

(defun ue-go-projectile-root ()
  (if (boundp 'ue-projectile-enabled)
      (if (projectile-project-p)
          (projectile-project-root))))

(defun ue-go-root ()
  (or
   (ue-go-gb-root)
   (ue-go-projectile-root)
   (getenv "GOPATH")
   default-directory))

(defun ue-go-expand-gopath (gopath)
  (let* ((expanded-gopath (expand-file-name "." gopath))
         (expanded-vendor-gopath (expand-file-name "vendor" gopath)))
    (if (file-exists-p expanded-vendor-gopath)
        (concat expanded-gopath ":" expanded-vendor-gopath)
      expanded-gopath)))

(defun ue-go-set-gopath (gopath)
  (interactive
   (list
    (read-directory-name "GOPATH=" (expand-file-name "." (ue-go-root)))))
  (setenv "GOPATH" (ue-go-expand-gopath gopath)))

(define-key go-mode-map (kbd "C-c C-e") #'ue-go-set-gopath)


(if (boundp 'ue-company-enabled)
    (progn
      (ue-ensure-installed '(company-go))
      (add-to-list 'company-backends 'company-go)
      (add-hook 'go-mode-hook #'company-mode)
      (define-key go-mode-map (kbd "M-TAB") #'company-complete)))


(defvar ue-go-enabled t)
(provide 'ue-go)
