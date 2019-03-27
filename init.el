(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp/")

;;加载对应的自配置文件

;;加载插件
(require 'init-packages)

;;加载方法
(require 'init-function)

;;加载页面样式组件
(require 'init-ui)

;;加载默认设置
(require 'init-better-defaults)

;;设置默认绑定键
(require 'init-keybindings)

;;设置python
(require 'init-python)

;; 设置go
(require 'init-go)

;;设置自定义文件
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

(load-file custom-file)
