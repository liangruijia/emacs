(require 'elpy)
(elpy-enable)

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
    (add-hook 'elpy-mode-hook 'flycheck-mode))

(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;;(elpy-use-ipython)
(setq python-shell-interpreter "jupyter"
      python-shell-interpreter-args "console --simple-prompt"
      python-shell-prompt-detect-failure-warning nil)
(add-to-list 'python-shell-completion-native-disabled-interpreters
             "jupyter")
(require 'ein-connect)

;; 设置禁用全局补全
(add-hook 'ein:notebook-mode-hook (lambda () (setq company-mode nil)))

;; 设置jupyter选择键
;; (add-hook 'ein:notebook-mode-hook (lambda () (define-key map (kbd "C-n") 'ac-next)))
;; (add-hook 'ein:notebook-mode-hook (lambda () (define-key map (kbd "C-p") 'ac-previous)))

;; 设置python-mode换行绑定
(define-key elpy-mode-map (kbd "<C-return>") '(lambda()
				      (interactive)
				      (move-end-of-line 1)
				      (newline-and-indent)))
(define-key elpy-mode-map (kbd "<M-return>") '(lambda()
						(interactive)
						(elpy-shell-send-statement-and-step)
				      (move-end-of-line 1)
				      (newline-and-indent)))
;; 
;; (define-key elpy-mode-map (kbd "<M-return>") 'elpy-shell-send-statement-and-step)


;; 补全菜单选项快捷键
(define-key ac-completing-map (kbd "C-n") 'ac-next)
(define-key ac-completing-map (kbd "C-p") 'ac-previous)
(define-key ac-completing-map (kbd "<C-tab>") 'auto-complete)

(provide 'init-python)
