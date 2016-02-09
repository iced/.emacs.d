(ue-ensure-installed '(scala-mode2 ensime))

(require 'scala-mode2)
(require 'ensime)

(add-hook 'scala-mode-hook (lambda ()
                             (ensime-mode)
                             (if (boundp 'ue-company-enabled)
                                 (kill-local-variable 'company-idle-delay))))

(setq ensime-sbt-command "sbt")
(setq user-emacs-ensime-directory (expand-file-name "ensime" ue-var-dir))


(if (boundp 'ue-company-enabled)
    (progn
      (define-key scala-mode-map (kbd "M-TAB") #'company-complete)))

(defvar ue-scala-enabled t)
(provide 'ue-scala)
