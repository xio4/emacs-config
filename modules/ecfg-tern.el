;; -*- lexical-binding: t -*-

;;;###autoload
(defun ecfg-tern-module-init ()
  (ecfg-install auto-complete
    (ecfg-install tern
        (ecfg-install tern-auto-complete
            (add-to-list 'auto-mode-alist '("\\.js[x]\\'" . tern-mode))
            (add-hook 'web-mode-hook
                (lambda ()
                (if (equal web-mode-content-type "jsx")
                    (tern-mode t)))
                (eval-after-load 'tern
                '(progn
                    (require 'tern-auto-complete)
                    (tern-ac-setup)
                    (defun delete-tern-process ()
                        (interactive)
                        (delete-process "Tern"))
                    ))
                ))))

)
;;;###autoload (ecfg-auto-module "\\.js[x]\\'" tern)
