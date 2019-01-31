;; 开启新的buffer
(global-set-key (kbd "<f6>") 'xah-new-empty-buffer)

;; 切换到jupyter
(global-set-key (kbd "<f7>") '(lambda()
				(interactive)
				(ein:jupyter-server-start
				 (executable-find
				  "jupyter")
				 "/Users/liangruijia/Documents")
				(switch-to-buffer "*ein:notebooklist http://127.0.0.1:8888*")))
;; 退出jupyter
(global-set-key (kbd "<f8>") '(lambda()
				(interactive)
				(ein:jupyter-server-stop)))
;; 快捷注释
(global-set-key [?\C-c ?\C-/] 'comment-or-uncomment-region)

;; 切换新行
(global-set-key (kbd "<s-return>") '(lambda()
				      (interactive)
				      (move-end-of-line 1)
				      (newline-and-indent)))

(provide 'init-keybindings)
