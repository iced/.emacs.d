(ue-ensure-installed '(anaconda-mode virtualenvwrapper pydoc))

(setq anaconda-mode-installation-directory (expand-file-name "anaconda-mode" ue-var-dir))

(setq python-shell-interpreter "ipython")

(require 'anaconda-mode)
(require 'virtualenvwrapper)
(require 'pydoc)

(add-hook 'python-mode-hook #'anaconda-mode)
(add-hook 'python-mode-hook #'eldoc-mode)

(venv-initialize-interactive-shells)
(venv-initialize-eshell)

(defun pydoc-at-point ()
  (interactive)
  (pydoc (thing-at-point 'symbol)))

(define-key python-mode-map (kbd "C-c C-d") #'pydoc-at-point)


(if (boundp 'ue-basic-enabled)
    (delight 'anaconda-mode nil "anaconda-mode"))


(if (boundp 'ue-company-enabled)
    (progn
      (ue-ensure-installed '(company-anaconda))
      (add-to-list 'company-backends 'company-anaconda)
      (add-hook 'anaconda-mode-hook #'company-mode)
      (define-key anaconda-mode-map (kbd "M-TAB") #'company-complete)
      (add-hook 'inferior-python-mode-hook #'company-mode)
      (define-key inferior-python-mode-map (kbd "M-TAB") #'company-complete)))

(defvar ue-python-enabled t)
(provide 'ue-python)
