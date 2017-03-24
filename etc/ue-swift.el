(ue-ensure-installed '(swift-mode))

(require 'swift-mode)


(if (boundp 'ue-company-enabled)
    (progn
      (ue-ensure-installed '(company-sourcekit))
      (add-to-list 'company-backends 'company-sourcekit)
      (add-hook 'swift-mode-hook #'company-mode)
      (define-key swift-mode-map (kbd "M-TAB") #'company-complete)))


(if (boundp 'ue-flycheck-enabled)
    (progn
      (ue-ensure-installed '(flycheck-swift))
      (flycheck-swift-setup)))


(defvar ue-swift-enabled t)
(provide 'ue-swift)
