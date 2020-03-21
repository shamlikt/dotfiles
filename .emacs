(put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(custom-safe-themes
   (quote
    ("2b6bd2ebad907ee42b3ffefa4831f348e3652ea8245570cdda67f0034f07db93" "b550fc3d6f0407185ace746913449f6ed5ddc4a9f0cf3be218af4fb3127c7877" default)))
 '(package-selected-packages
   (quote
    (discover-js2-refactor flymake-gjshint go-projectile go-rename go-stacktracer nlinum evil-python-movement protobuf-mode bln-mode groovy-mode butler jenkins jenkins-watch company-jedi jedi jedi-core magit go-playground company company-go yaml-mode suscolors-theme projectile-git-autofetch neotree helm-projectile gruvbox-theme go-guru go-gopath go-dlv go-direx go-complete go-autocomplete go-add-tags flycheck fireplace exec-path-from-shell)))
 '(show-paren-style (quote expression)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(setq org-agenda-files '("~/intellicar_time.org"))
(global-set-key "\C-ca" 'org-agenda)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(add-to-list 'package-archives
                 '("melpa" . "http://melpa.org/packages/"))
(ido-mode t)
(global-set-key (kbd"C-c r") (lambda ()
                               (interactive)
                               (revert-buffer t t t)
                               (message "buffer is reverted")))


; josnlint
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/share/npm/bin"))
(setq exec-path (append exec-path '("/usr/local/share/npm/bin")))
(global-set-key (kbd "C-c j v") 'flymake-json-load)

(menu-bar-mode 0)
(tool-bar-mode 0)

;(toggle-scroll-bar -1) 
(flyspell-mode 1)
(server-start 1)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(add-hook 'html-mode-hook 'multi-web-mode)

(package-initialize)
(put 'scroll-left 'disabled nil)

(projectile-mode t)

(global-flycheck-mode t)
(server-start)

;(require 'zoom-frm)

(defun my-compile ()
  "Use compile to run python programs"
  (interactive)
  (compile (concat "python " (buffer-name))))
(setq compilation-scroll-output t)

(local-set-key "\C-c\C-c" 'my-compile)
(put 'narrow-to-region 'disabled nil)

(add-to-list 'load-path "~/")
(require 'neotree)
(global-set-key "\C-ct" 'neotree-toggle)

(load-theme 'gruvbox-dark-hard t)
(load-file "~/.emacs.d/init.el")
;;(global-nlinum-mode t)
(scroll-bar-mode -1)
