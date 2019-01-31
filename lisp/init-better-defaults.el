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
(set-default-font "-*-Menlo-normal-normal-normal-*-12-*-*-*-m-0-iso10646-1")

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

;;(global-company-mode t)
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-show-numbers t);;显示序号
(setq company-idle-delay 0.2);;菜单延迟
(setq company-minimum-prefix-length 1);;开始补全数字
;;(add-hook 'python-mode-hook (lambda () (setq company-mode nil)))

;; 补全后端使用anaconda
;;(add-to-list 'company-backends '(company-anaconda :with company-yasnippet))
;; 补全快捷键
(global-set-key (kbd "<C-tab>") 'company-complete)
;; 补全菜单选项快捷键
(define-key company-active-map (kbd "M-n") 'company-select-next)
(define-key company-active-map (kbd "M-p") 'company-select-previous)

;;查询便捷性
(require 'popwin)    ;;when require, wh(setq company-minimum-prefix-length 1)en not require
(popwin-mode t)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)


;;替换选中区域nn
(delete-selection-mode t)

;;设置y代表yes，n代表no
(fset 'yes-or-no-p 'y-or-n-p)

;;设置lisp模式下`不用默认生成对
(sp-local-pair 'emacs-lisp-mode "`" nil :actions nil)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)

;;设置默认打开空白
(setq initial-buffer-choice 'xah-new-empty-buffer)

(provide 'init-better-defaults)
