(ue-ensure-installed '(anaconda-mode virtualenvwrapper))
(require 'anaconda-mode)
(require 'virtualenvwrapper)

(delight 'anaconda-mode nil "anaconda-mode")

(setq anaconda-mode-installation-directory (expand-file-name "anaconda-mode" ue-var-dir))

(add-hook 'python-mode-hook #'anaconda-mode)
(add-hook 'python-mode-hook #'eldoc-mode)

(venv-initialize-interactive-shells)


(if (boundp 'ue-company-enabled)
    (progn
      (ue-ensure-installed '(company-anaconda))
      (add-to-list 'company-backends 'company-anaconda)
      (add-hook 'anaconda-mode-hook #'company-mode)
      (define-key anaconda-mode-map (kbd "M-TAB") #'company-complete)))

(defvar ue-python-enabled t)
(provide 'ue-python)
