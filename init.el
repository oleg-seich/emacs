(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))

(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

(require 'package)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("marmalade" . "http://marmalade-repo.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
		("org" . "https://orgmode.org/elpa/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(setq my-packages '(use-package))

(dolist (pkg my-packages)
  (unless (package-installed-p pkg)
    (package-install pkg)))

(load-user-file "platform-specific.el")
(load-user-file "packages.el")
(load-user-file "appearance.el")
(load-user-file "functions.el")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("45b84ddcc65bdf01d9cc76061a9473e3291d82c9209eac0694fbbb81c57b92fd" default))
 '(package-selected-packages
   '(github-modern-theme wrap-region markdown-mode magit zenburn-theme which-key swiper shrink-path prescient nerd-icons lv elisp-refs compat)))
 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
