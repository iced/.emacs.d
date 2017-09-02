(defun ue-is-gui (frame)
  (memq (framep frame) '(x w32 ns)))

(defun ue-is-osx ()
  (eq system-type 'darwin))

(defun ue-is-windows ()
  (eq system-type 'windows-nt))

(defun ue-is-linux ()
  (eq system-type 'gnu/linux))

(defun ue-theme-set (theme)
  (mapc #'disable-theme custom-enabled-themes)
  (load-theme theme t))

(provide 'ue)
