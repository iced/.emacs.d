(ido-mode t)
(setq ido-save-directory-list-file (expand-file-name "ido" ue-var-dir))
(setq ido-everywhere t)

(add-to-list 'ido-ignore-buffers "\\`\\*")

(defvar ue-ido-enabled t)
(provide 'ue-ido)
