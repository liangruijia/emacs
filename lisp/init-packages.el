;;插件管理
;;  __        __             __   ___
;; |__)  /\  /  ` |__/  /\  / _` |__
;; |    /~~\ \__, |  \ /~~\ \__> |___
;;                      __   ___        ___      ___
;; |\/|  /\  |\ |  /\  / _` |__   |\/| |__  |\ |  |
;; |  | /~~\ | \| /~~\ \__> |___  |  | |___ | \|  |
(require 'cl)

(when (>= emacs-major-version 24)
;;  (add-to-list 'package-archives '(("gnu" . "http://elpa.emacs-china.org/gnu/")
  ;;				   ("melpa" . "http://elpa.emacs-china.org/melpa/")) t)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/")))
  )



;;add whatever packages you want here
(defvar liang/packages '(
				 company
				 monokai-theme
				 hungry-delete
				 swiper
				 counsel
				 smartparens
				 better-defaults
				 ein
				 elpy
				 flycheck
				 py-autopep8
				 ;;company-jedi
				 ;;virtualenvwrapper
				 exec-path-from-shell
				 popwin
				 magit
				 evil
				 yaml-mode
				 )  "Default packages")

(setq package-selected-packages liang/packages)

(defun liang/packages-installed-p ()
  (loop for pkg in liang/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (liang/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg liang/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; let emacs could find the execuable
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


(provide 'init-packages)
