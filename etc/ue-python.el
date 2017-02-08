(ue-ensure-installed '(pyenv-mode anaconda-mode))

(setq anaconda-mode-installation-directory (expand-file-name "anaconda-mode" ue-var-dir))

(setq python-shell-interpreter "ipython")
(setq python-shell-interpreter-args "--simple-prompt --pprint")
(setq python-shell-completion-native-enable nil)

(require 'pyenv-mode)
(require 'anaconda-mode)

(setq pyenv-mode-mode-line-format
      '(:eval
        (when (and (pyenv-mode-version) (equal major-mode 'python-mode))
          (concat "[" (pyenv-mode-version) "] "))))

(add-hook 'python-mode-hook #'anaconda-mode)
(add-hook 'python-mode-hook #'anaconda-eldoc-mode)
(add-hook 'python-mode-hook #'pyenv-mode)

(define-key python-mode-map (kbd "C-c C-d") #'anaconda-mode-show-doc)
(define-key python-mode-map (kbd "C-c C-e") #'pyenv-mode-set)

(delight 'anaconda-mode nil "anaconda-mode")

(setq flymake-python-pyflakes-executable "flake8")


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
