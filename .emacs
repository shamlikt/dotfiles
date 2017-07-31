(put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(show-paren-style (quote expression)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(setq org-agenda-files '("~/vyoma_time.org"))
(global-set-key "\C-ca" 'org-agenda)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(ido-mode t)
(global-set-key (kbd"C-c r") (lambda ()
                               (interactive)
                               (revert-buffer t t t)
                               (message "buffer is reverted")))





(menu-bar-mode 0)
(tool-bar-mode 0)
;; (scroll-bar-mode 0)
(flyspell-mode 1)
(server-start 1)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(add-hook 'html-mode-hook 'multi-web-mode)

(package-initialize)
(put 'scroll-left 'disabled nil)

(projectile-global-mode t)

(global-flycheck-mode)

                
(defun my-compile ()
  "Use compile to run python programs"
  (interactive)
  (compile (concat "python " (buffer-name))))
(setq compilation-scroll-output t)

(local-set-key "\C-c\C-c" 'my-compile)
(put 'narrow-to-region 'disabled nil)
