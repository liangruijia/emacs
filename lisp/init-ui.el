(tool-bar-mode -1)

(menu-bar-mode 0)

(scroll-bar-mode -1)

(setq inhibit-splash-screen t)

(setq-default cursor-type 'bar)

(setq initial-frame-alist (quote ((fullscreen . maximized))))

(global-hl-line-mode t)

(provide 'init-ui)

;;(load-theme 'monokai t)
;;(load-theme 'zenburn t)
(load-theme 'solarized-light t)
;;(custom-theme-set-faces
;; 'monokai
;; `(hl-line ((t (:background ,"#141414"))))
;; )
;;(load-theme 'ubuntu t)

;;(load-theme 'light-blue t)
;;设置显示时间
(display-time-mode t)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-format "%m-%d %A %H:%M")

;;设置标题显示主机名+全路径
(setq frame-title-format
   (list (format "%s %%S: %%j " (system-name))
	 '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;;默认开启text模式
(setq default-major-mode 'text-mode)
(setq initial-major-mode 'text-mode)
(add-hook 'org-mode-hook 'turn-on-auto-fill)
