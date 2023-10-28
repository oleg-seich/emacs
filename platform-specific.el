(cond ((eq system-type 'darwin)
       (setq mac-option-key-is-meta nil)
       (setq mac-command-key-is-meta t)
       (setq mac-command-modifier 'meta)
       (setq mac-option-modifier nil)
       (setq mac-escape-modifier nil)

       ;;(https://github.com/emacs-mirror/emacs/blob/master/etc/PROBLEMS)
       ;; *** Display artifacts on GUI frames on X-based systems.
       ;; This is known to be caused by using double-buffering (which is enabled`
       ;; by default in Emacs 26 and later). The artifacts typically appear
       ;; after commands that cause Emacs to scroll the display.
       ;; You can disable double-buffering by evaluating the following form:`
       (modify-all-frames-parameters '((inhibit-double-buffering . t)))
       ;; Note that disabling double-buffering will cause flickering of the
       ;; display in some situations.
       ))
