(ue-ensure-installed '(scala-mode2 ensime))

(require 'scala-mode2)
(require 'ensime)

(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(setq ensime-sbt-command "sbt")
(setq user-emacs-ensime-directory (expand-file-name "ensime" ue-var-dir))


(if (boundp 'ue-company-enabled)
    (progn
      (setq company-idle-delay nil)
      (define-key scala-mode-map (kbd "M-TAB") #'company-complete)
      (add-hook 'scala-mode-hook #'company-mode)))

(defvar ue-scala-enabled t)
(provide 'ue-scala)
