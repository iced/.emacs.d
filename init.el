;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-recipes")
(setq packages-list '(cider clojure-mode distel magit paredit))
(el-get 'sync packages-list)

;; title
(setq frame-title-format '("" invocation-name " - " "%b"))

;; no startup messages, scratch text, menu, toolbar, scrollbar and tooltip popups
(setq inhibit-startup-message t)
(setq initial-scratch-message "")
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(tooltip-mode 0)

;; no yes/no prompts
(fset 'yes-or-no-p 'y-or-n-p)

;; no process kill confirmations
(setq kill-buffer-query-functions
      (remq 'process-kill-buffer-query-function
            kill-buffer-query-functions))

;; wind move
(windmove-default-keybindings)

;; remove trailing whitespaces on save
(add-hook 'before-save-hook 'whitespace-cleanup)

;; theme
(setq custom-enabled-themes '(misterioso))
(load-theme 'misterioso)

;; font
(when window-system
  (set-face-font 'default "-*-terminus-medium-*-*-*-20-*-*-*-*-*-*-*"))

(custom-set-faces
 '(fixed-pitch ((t nil)))
 '(variable-pitch ((t nil))))

;; enable global font lock
(global-font-lock-mode t)

;; visual selection
(transient-mark-mode t)

;; truncate lines
(setq default-truncate-lines t)

;; no backups and autosaves
(setq backup-inhibited t)
(setq auto-save-default nil)

;; cursor
(blink-cursor-mode 0)
(setq-default cursor-in-non-selected-windows nil)

;; parens
(show-paren-mode t)

;; tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;; one line for minibuffer
(setq max-mini-window-height 1)

;; open archives
(auto-compression-mode t)

;; bookmarks
(setq bookmark-default-file "~/.emacs.d/var/bookmark")

;; tramp
(setq tramp-persistency-file-name "~/.emacs.d/var/tramp")

;; eshell
(setq eshell-directory-name "~/.emacs.d/var/eshell")

;; ido
(ido-mode 'both)
(setq ido-save-directory-list-file "~/.emacs.d/var/ido")

;; browser
(setq browse-url-browser-function 'w3m-browse-url)

;; lisp
(add-hook 'emacs-lisp-mode-hook (lambda () (paredit-mode)))
(add-hook 'lisp-mode-hook (lambda () (paredit-mode)))
(add-hook 'lisp-interaction-mode-hook (lambda () (paredit-mode)))

;; c modes
(setq c-basic-offset 2)
(add-hook 'c-mode-common-hook
          (lambda ()
            (local-set-key "\^M" 'c-context-line-break)))

;; ruby
(add-hook 'ruby-mode-hook
          (lambda ()
            (local-set-key "\^M" 'newline-and-indent)))

;; rhtml
(eval-after-load "rhtml-mode"
  '(progn
     (put 'erb-face 'face-defface-spec '((t nil)))
     (face-spec-set 'erb-face '((t nil)))
     (put 'erb-out-delim-face 'face-defface-spec '((t (:inherit erb-delim-face))))
     (face-spec-set 'erb-out-delim-face '((t (:inherit erb-delim-face))))))

;; clojure
(add-hook 'clojure-mode-hook (lambda ()
                               (paredit-mode)
                               (cider-mode)))

(add-hook 'cider-repl-mode-hook (lambda () (paredit-mode)))
(setq cider-repl-use-clojure-font-lock t)

;; erlang
(distel-setup)
(setq erl-reload-dwim t)

(add-hook 'erlang-mode-hook
          (lambda ()
            (setq inferior-erlang-machine-options '("-sname" "emacs"))))

(add-hook 'erlang-shell-mode-hook
          (lambda ()
            (local-set-key "\C-\M-i" 'erl-complete)
            (local-set-key "\M-?" 'erl-complete)
            (local-set-key "\M-." 'erl-find-source-under-point)
            (local-set-key "\M-," 'erl-find-source-unwind)
            (local-set-key "\M-*" 'erl-find-source-unwind)))

(setq auto-mode-alist (append
                       '(("rebar.config$" . erlang-mode)
                         ("\\.app.src$" . erlang-mode)
                         ("\\.app$" . erlang-mode))
                       auto-mode-alist))
