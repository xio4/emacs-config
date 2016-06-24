### See https://github.com/maslennikov/emacs-config

## Install eslint
npm install -g eslint babel-eslint eslint-plugin-react jscs tern

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

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; Compile emacs with support xft
 '(default ((t (:family "Liberation Mono" :foundry "unknown" :slant normal :weight normal :height 110 :width normal)))))
(load-file "~/.emacs.config/init.el")
```
