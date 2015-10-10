;; -*- lexical-binding: t -*-

;;;###autoload
(defun ecfg-flycheck-module-init ()

  (defun find-jshintrc ()
    (expand-file-name ".jshintrc"
                      (locate-dominating-file
                       (or (buffer-file-name) default-directory) ".jshintrc")))

  (ecfg-install flycheck
                (add-to-list 'auto-mode-alist '("\\.js[x]\\'" . flycheck-mode))
                (require 'flycheck)

                (flycheck-define-checker jsxhint-checker
                                         "A JSX syntax and style checker based on JSXHint."

                                         :command ("jsxhint" (config-file "--config=" jshint-configuration-path) source)
                                         :error-patterns
                                         ((error line-start (1+ nonl) ": line " line ", col " column ", " (message) line-end))
                                         :modes (web-mode))

                (add-hook 'web-mode-hook
                          (lambda ()
                            (when (equal web-mode-content-type "jsx")
                              (setq-local jshint-configuration-path (find-jshintrc))
                              (flycheck-select-checker 'jsxhint-checker)
                              (flycheck-mode))))

                (add-hook 'js2-mode-hook
                          (lambda ()
                            (setq flycheck-jshintrc (find-jshintrc))
                            (flycheck-mode))))
)
;;;###autoload (ecfg-auto-module "\\.js[x]\\'" flycheck)
