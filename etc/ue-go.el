(ue-ensure-installed '(go-mode go-eldoc))

(require 'go-mode)
(require 'go-eldoc)

(add-hook 'go-mode-hook #'go-eldoc-setup)

(add-hook 'before-save-hook #'gofmt-before-save)

(define-key go-mode-map (kbd "C-c C-d") #'godoc-at-point)
(define-key go-mode-map (kbd "M-.") #'godef-jump)


(if (boundp 'ue-company-enabled)
    (progn
      (ue-ensure-installed '(company-go))
      (add-to-list 'company-backends 'company-go)
      (add-hook 'go-mode-hook #'company-mode)
      (define-key go-mode-map (kbd "M-TAB") #'company-complete)))


(if (boundp 'ue-projectile-enabled)
    (progn
      (ue-ensure-installed '(go-projectile))
      (require 'go-projectile)))

(defvar ue-go-enabled t)
(provide 'ue-go)
