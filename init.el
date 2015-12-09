(defvar ue-dir (file-name-directory load-file-name))
(defvar ue-etc-dir (expand-file-name "etc" ue-dir))
(defvar ue-var-dir (expand-file-name "var" ue-dir))

(add-to-list 'load-path ue-etc-dir)

(require 'ue-look)
(require 'ue-basic)
(require 'ue-magit)
(require 'ue-company)
(require 'ue-paredit)
(require 'ue-emacs-lisp)
(require 'ue-clojure)
