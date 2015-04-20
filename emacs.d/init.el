;; load the integrated emacs package manager
(require 'package)
;; Add melpa as a package archive
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
;; Apparently some packages targeting prior emacs versions should be obtained from elpa
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
;; load the package list by starting the package manager
(package-initialize)

;; add lein to the exec path
(add-to-list 'exec-path "/usr/local/bin")

;; load common lisp compatibility mode and load.d
(require 'cl)
(add-to-list 'load-path "~/.emacs.d/load.d/")
;; load comapny mode and flycheck
;;(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'after-init-hook 'global-company-mode)

(require 'evil)
(require 'key-chord)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-mode 1)

;; Set default font to 18 px inconsolata
(set-default-font "-*-Inconsolata-normal-normal-normal-*-18-*-*-*-m-0-iso10646-1")

;; Guarantee cider is installed
(unless (package-installed-p 'cider)
  (package-install 'cider))

;; All this crap below was added automagically by emacs
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(menu-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
