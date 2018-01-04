(use-package python
  :init
  (setq-default python-shell-interpreter "ipython")
  (setq-default python-shell-interpreter-args "--simple-prompt --no-banner --pprint")
  (setq-default  python-shell-completion-native-enable nil)
  (if (boundp 'ue-smartparens-enabled)
      (add-hook 'python-mode-hook #'smartparens-strict-mode)))

(use-package anaconda-mode
  :ensure t
  :init
  (setq anaconda-mode-installation-directory (expand-file-name "anaconda-mode" ue-var-dir))
  (add-hook 'python-mode-hook #'anaconda-mode)
  (add-hook 'python-mode-hook #'anaconda-eldoc-mode)
  :bind
  (:map anaconda-mode-map
        ("C-c C-d" . anaconda-mode-show-doc))
  :delight anaconda-mode)

(use-package company-anaconda
  :if (boundp 'ue-company-enabled)
  :ensure t
  :init
  (add-to-list 'company-backends 'company-anaconda)
  :bind
  (:map anaconda-mode-map
        ("M-TAB" . company-complete)
        ("M-," . anaconda-mode-go-back)
        ("M-*" . anaconda-mode-find-assignments)))

(use-package pyenv-mode
  :ensure t
  :init
  (add-hook 'python-mode-hook #'pyenv-mode)
  (setq pyenv-mode-mode-line-format
      '(:eval
        (when (and (pyenv-mode-version) (equal major-mode 'python-mode))
          (concat "py:" (pyenv-mode-version)))))
  :bind
  (:map pyenv-mode-map
        ("C-c C-e" . pyenv-mode-set)))

(use-package pyenv-mode-auto
  :ensure t)

(defvar ue-python-enabled t)
(provide 'ue-python)
