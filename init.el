(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (replace-regexp-in-string
                          "[ \t\n]*$"
                          ""
                          (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq eshell-path-env path-from-shell) ; for eshell users
    (setq exec-path (split-string path-from-shell path-separator))))

(when window-system (set-exec-path-from-shell-PATH))
(setenv "GOPATH" "/home/shamlik/go_code")
(add-to-list 'exec-path "/home/shamlik/go_code")
(add-to-list 'exec-path (expand-file-name "/home/shamlik/go_code/bin/godef"))
(add-hook 'before-save-hook 'gofmt-before-save)

;(add-hook 'after-init-hook 'global-company-mode)
;(add-hook 'go-mode-hook 'company-mode)

(defun auto-complete-for-go ()
  (auto-complete-mode 1))
(add-hook 'go-mode-hook 'auto-complete-for-go)
(with-eval-after-load 'go-mode
   (require 'go-autocomplete))
(defun my-go-mode-hook ()
  ; Call Gofmt before saving                                                    
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; Godef jump key binding                                                      
  (local-set-key (kbd "C-c C-j") 'godef-jump)
  (local-set-key (kbd "C-c C-r") 'pop-tag-mark)
  (local-set-key (kbd "C-c C-c") 'go-run)
  (local-set-key (kbd "C-c C-k") 'kill-compilation)

  )
(add-hook 'go-mode-hook 'my-go-mode-hook)


(provide 'init)

;;;
