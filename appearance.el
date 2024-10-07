(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(fringe-mode 5)

(set-face-attribute 'default nil :family "FiraCode" :height 120 :weight 'normal)
(set-background-color "#edede1")

(show-paren-mode)
(electric-pair-mode)

(global-hl-line-mode 1)
(set-face-foreground 'hl-line nil)

(setq inhibit-startup-screen t)
(delete-selection-mode t)

(setq-default tab-width 4)
(setq-default c-basic-offset 4)
(setq-default indent-tabs-mode nil)

(setq highlight-indent-guides-method 'character)

(mood-line-mode t)

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(global-set-key (kbd "C-z ") 'undo)

(global-auto-revert-mode 1)

(setq auto-save-default nil)
(setq make-backup-files nil)
(setq ring-bell-function 'ignore)

(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(windmove-default-keybindings 'meta)
