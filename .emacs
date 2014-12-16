;;Adding directories to paths
;;---------------------------
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'load-path (expand-file-name "~/.elisp"))

;;Auto-Generated Stuff
;;--------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes (quote ("9dae95cdbed1505d45322ef8b5aa90ccb6cb59e0ff26fef0b8f411dfc416c552" default)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;SLIME
;;-----
(add-to-list 'load-path (expand-file-name "~/.elisp/slime-2.11"))
(require 'slime-autoloads)
;; Set your lisp system and, optionally, some contribs
     (setq inferior-lisp-program "/usr/bin/clisp")
     (setq slime-contribs '(slime-fancy))

;;TabBar
;;------
(tabbar-mode)
(global-set-key [f7] 'tabbar-backward-tab)
(global-set-key [f8] 'tabbar-forward-tab)

;;Linum
;;-----
(global-linum-mode 1)

;;Enable visual feedback on selections
(setq transient-mark-mode t)

;;Disable Annoying Stuff
;;----------------------
(put 'overwrite-mode 'disabled t)

;;General Key Bindings
;;--------------------
(global-set-key "\C-c\C-a" 'mark-whole-buffer)

;;Activate minor modes
(global-font-lock-mode t)
(column-number-mode t)
(set-scroll-bar-mode 'right)

;;set title bar
(setq frame-title-format '(buffer-file-name "%f" ("%b")))

;;disable C-z when in a window system
(when window-system
  (global-unset-key "\C-z"))

;;turn on mouse wheel scrolling
(if (load "mwheel" t)
  (mwheel-install))

;;require that files end in a newline
(setq require-final-newline 'query)

;;makes cut and paste work (but not with old stuff like terminals)
(setq x-select-enable-clipboard t)

;;use spaces in stead of tabs
(setq-default indent-tabs-mode nil)

;;don't echo passwords
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt)

;;enable urls in manual
(add-hook 'Man-mode-hook 'goto-address)

;;makes F open all marked files in dired-mode
(eval-after-load "dired"
  '(progn
     (define-key dired-mode-map "F" 'my-dired-find-file)
     (defun my-dired-find-file (&optional arg)
       "Open each of the marked files, or the file under the point, or when prefix arg, the next N files "
       (interactive "P")
       (let* ((fn-list (dired-get-marked-files nil arg)))
         (mapc 'find-file fn-list)))))
