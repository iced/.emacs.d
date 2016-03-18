(ue-ensure-installed '(pyenv-mode anaconda-mode))

(setq anaconda-mode-installation-directory (expand-file-name "anaconda-mode" ue-var-dir))

(setq python-shell-interpreter "ipython")

(require 'pyenv-mode)
(require 'anaconda-mode)

(add-hook 'python-mode-hook #'anaconda-mode)
(add-hook 'python-mode-hook #'anaconda-eldoc-mode)

(defun pydoc-at-point ()
  (interactive)
  (pydoc (thing-at-point 'symbol)))

(define-key python-mode-map (kbd "C-c C-d") #'anaconda-mode-show-doc)
(define-key python-mode-map (kbd "C-c C-e") #'pyenv-mode-set)


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
