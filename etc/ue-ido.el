(ue-ensure-installed '(flx-ido ido-ubiquitous))

(setq ido-save-directory-list-file (expand-file-name "ido" ue-var-dir))
(ido-mode t)
(flx-ido-mode 1)
(ido-everywhere 1)
(ido-ubiquitous-mode 1)
(setq ido-enable-flex-matching t)

(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

(add-to-list 'ido-ignore-files "\\`\\.")
(add-to-list 'ido-ignore-directories "\\`\\.")
(add-to-list 'ido-ignore-buffers "^\*")

(defvar ue-ido-enabled t)
(provide 'ue-ido)
