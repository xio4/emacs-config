;; -*- lexical-binding: t -*-

;;;###autoload
(defun ecfg-json-module-init ()
  (ecfg-install json-mode
                (add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))
                (require 'json-mode)
                )
)
;;;###autoload (ecfg-auto-module "\\.json\\'" json)
