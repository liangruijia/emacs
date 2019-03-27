(require 'go-mode)

;; 保存go文件，自动格式化
(add-hook 'before-save-hook 'gofmt-before-save)

;; 删除无效的引用
(add-hook 'go-mode-hook (lambda()
			  (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))

;; 自动补全
(require 'company-go)
(add-hook 'go-mode-hook (lambda ()
			  (set (make-local-variable 'company-backends) '(company-go))
			  (company-mode)))
(provide 'init-go)
