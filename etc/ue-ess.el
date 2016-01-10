(ue-ensure-installed '(ess))

(require 'ess)

(add-to-list 'auto-mode-alist '("\\.m\\'" . octave-mode))


(if (boundp 'ue-company-enabled)
    (progn
      (define-key ess-mode-map (kbd "M-TAB") #'company-complete)
      (add-hook 'ess-mode-hook #'company-mode)
      (define-key inferior-ess-mode-map (kbd "M-TAB") #'company-complete)
      (add-hook 'inferior-ess-mode-hook #'company-mode)))

(defvar ue-ess-enabled t)
(provide 'ue-ess)
