(ido-mode t)
(setq ido-save-directory-list-file (expand-file-name "ido" ue-var-dir))
(setq ido-everywhere t)
(setq ido-enable-flex-matching t)

(add-to-list 'ido-ignore-buffers "\\`\\*")
(add-to-list 'ido-ignore-files "\\`\\.")
(add-to-list 'ido-ignore-directories "\\`\\.")

(defvar ue-ido-enabled t)
(provide 'ue-ido)
