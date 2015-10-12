### See https://github.com/maslennikov/emacs-config

## Install eslint
npm install -g eslint babel-eslint eslint-plugin-react

## ~/.eslintrc example
```json
{
  "parser": "babel-eslint",
  "plugins": [ "react" ],
  "env": {
    "browser": true,
    "es6": true,
    "node": true
  },
  "ecmaFeatures": {
    "arrowFunctions": true,
    "blockBindings": true,
    "classes": true,
    "defaultParams": true,
    "destructuring": true,
    "forOf": true,
    "generators": true,
    "modules": true,
    "spread": true,
    "templateStrings": true,
    "jsx": true
  },
  "rules": {
    "consistent-return": [0],
    "key-spacing": [0],
    "quotes": [0],
    "new-cap": [0],
    "no-multi-spaces": [0],
    "no-shadow": [0],
    "no-unused-vars": [1],
    "no-use-before-define": [2, "nofunc"],
    "react/jsx-no-undef": 1,
    "react/jsx-uses-react": 1,
    "react/jsx-uses-vars": 1
  }
}
```
## .emacs example
```cl
;;in case you use windows, teach it the utf8
(prefer-coding-system 'utf-8)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(ecb-layout-name "left14")
 '(ecb-layout-window-sizes
   (quote
    (("left14"
      (ecb-directories-buffer-name 0.3235294117647059 . 0.7142857142857143)
      (ecb-history-buffer-name 0.3235294117647059 . 0.2619047619047619))
     ("left8"
      (ecb-directories-buffer-name 0.32116788321167883 . 0.5111111111111111)
      (ecb-sources-buffer-name 0.32116788321167883 . 0.2222222222222222)
      (ecb-methods-buffer-name 0.32116788321167883 . 0.1111111111111111)
      (ecb-history-buffer-name 0.32116788321167883 . 0.13333333333333333)))))
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--C-mouse-1))
 '(ecb-source-path (quote (".")))
 '(ecb-tip-of-the-day nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; Compile emacs with support xft
 '(default ((t (:family "Liberation Mono" :foundry "unknown" :slant normal :weight normal :height 110 :width normal)))))
(load-file "~/.emacs.config/init.el")
```
