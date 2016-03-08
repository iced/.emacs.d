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

(defun ue-go-gb-set-gopath ()
  (interactive)
  (let ((project-dir (ue-go-gb-env-value "GB_PROJECT_DIR")))
    (unless (eq project-dir nil)
      (setenv "GOPATH" (concat project-dir ":" (expand-file-name "vendor" project-dir))))))

(define-key go-mode-map (kbd "C-c C-e") #'ue-go-gb-set-gopath)


(if (boundp 'ue-company-enabled)
    (progn
      (ue-ensure-installed '(company-go))
      (add-to-list 'company-backends 'company-go)
      (add-hook 'go-mode-hook #'company-mode)
      (define-key go-mode-map (kbd "M-TAB") #'company-complete)))


(defvar ue-go-enabled t)
(provide 'ue-go)
