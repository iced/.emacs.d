(use-package rust-mode
  :ensure t)

(use-package flycheck-rust
  :if (boundp 'ue-flycheck-enabled)
  :ensure t
  :init
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

(use-package racer
  :ensure t
  :init
  (add-hook 'rust-mode-hook #'racer-mode)
  (add-hook 'racer-mode-hook #'eldoc-mode)
  :config
  (if (boundp 'ue-company-enabled)
      (bind-keys :map rust-mode-map
                 ("M-TAB" . company-complete)))
  :bind
  (:map rust-mode-map
        ("C-c C-d" . racer-describe))
  :delight racer-mode)

(use-package cargo
  :ensure t
  :init
  (add-hook 'rust-mode-hook #'cargo-minor-mode)
  :delight cargo-minor-mode)

(defvar ue-rust-enabled t)
(provide 'ue-rust)
