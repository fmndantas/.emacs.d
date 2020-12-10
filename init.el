;; C-x o -> M-2
(global-set-key (kbd "M-2") 'windmove-left)

;; C-x o -> f8
(global-set-key (kbd "M-3") 'windmove-right)

;; C-x C-3 -> f5
(global-set-key (kbd "M-1") 'split-window-right)

;; C-x O -> f6
(global-set-key (kbd "M-4") 'delete-window)

;; revert buffers automatically
(global-auto-revert-mode t)

;; sets font size to 11 px height
(set-face-attribute 'default nil :height 120)

;; shows matched bracket
(show-paren-mode 1)

;; avoids initial screen
(setq inhibit-startup-message t)

;; disables tool bar, menu bar and scroll bar
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; highlights current line
(global-hl-line-mode t)

;; avoid creation of temporary files
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)

;; enables electric-mode to match pair of symbols
(electric-pair-mode 1)

;; enables package and includes melpa on list of packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; yasnippet
(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;; sunrise-commander
(add-to-list 'load-path "~/.emacs.d/plugins/sunrise-commander")
(require 'sunrise)

(add-to-list 'auto-mode-alist '("\\.srvm\\'" . sr-virtual-mode))
(global-set-key (kbd "C-x C-f") 'sunrise-cd)

;; sunrise-commander popviewer-mode
(require 'sunrise-popviewer)
(sunrise-popviewer-mode 1)

;; matherial-theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(material-theme spacemacs-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(load-theme 'material t)
