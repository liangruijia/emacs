(setq ring-bell-function 'ignore)


(global-auto-revert-mode t)

(global-linum-mode t)


(setq-default abbrev-mode t)
 (define-abbrev-table 'global-abbrev-table '(
                                              ;; signature
                                              ("8lrj" "liangruijia")
                                              ;; Microsoft
                                              ("8Lrj" "梁瑞加")
                                              ))

(setq make-backup-files nil)

(setq auto-save-default nil)

;;设置字体
;;(set-default-font "Courier New-13")
;;(set-default-font "Monaco-12")
;;(set-default-font "Courier-13")
;;(set-default-font "-*-Menlo-normal-normal-normal-*-12-*-*-*-m-0-iso10646-1")

(recentf-mode 1)			
(setq recentf-max-menu-items 25)

;;行首C-k同时删除该行
(setq-default kill-whole-line t)
(global-hungry-delete-mode t)

;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)

;;命令查找
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-c C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> k") 'counsel-descbinds)

;;(global-company-mode t)
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-show-numbers t);;显示序号
(setq company-idle-delay 0.2);;菜单延迟
(setq company-minimum-prefix-length 1);;开始补全数字
;;(add-hook 'python-mode-hook (lambda () (setq company-mode nil)))

;; 补全后端使用anaconda
;;(add-to-list 'company-backends '(company-anaconda :with company-yasnippet))

;;查询便捷性
(require 'popwin)    ;;when require, wh(setq company-minimum-prefix-length 1)en not require
(popwin-mode t)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)


;;替换选中区域
(delete-selection-mode t)

;;设置y代表yes，n代表no
(fset 'yes-or-no-p 'y-or-n-p)

;;设置lisp模式下`不用默认生成对
(sp-local-pair 'emacs-lisp-mode "`" nil :actions nil)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)

;;设置默认打开空白
;; (setq initial-buffer-choice 'xah-new-empty-buffer)

;;设置neotree的样式
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; (global-set-key "\C-n" 'ac-next)
;; (global-set-key "\C-p" 'ac-previous)
;; 设置编码优先级
(prefer-coding-system 'gb18030)
(prefer-coding-system 'gbk)
(prefer-coding-system 'utf-8)

;; 设置开启大小写转换
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'set-goal-column 'disabled nil)

;; 设置js模式为js2mode
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))
(require 'nodejs-repl)

(provide 'init-better-defaults)
