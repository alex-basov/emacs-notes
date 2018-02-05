(require 'package)

;; Melpa packages
(add-to-list 'package-archives
    '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :foundry "outline" :family "Fira Mono")))))


;; Enable recent files
(recentf-mode 1)
(setq recent-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; install auto-complete package first
;; Loadauto-complete package
(ac-config-default)
(require 'auto-complete)
;; Start auto-complete
(global-auto-complete-mode t)


;; install emmet-mode first
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.


;; Hide toolbar, scrollbars, menu bar
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(menu-bar-mode -1)

(w32-send-sys-command 61488)

;; Enable swiper
(ivy-mode 1)
(global-set-key "\C-s" 'swiper)

