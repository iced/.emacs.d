(ue-ensure-installed '(smex))

(smex-initialize)
(setq smex-save-file (expand-file-name "smex-items" ue-var-dir))

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)


(defvar ue-smex-enabled t)
(provide 'ue-smex)
