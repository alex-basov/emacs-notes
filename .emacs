(require 'package)

;; Melpa packages
(add-to-list 'package-archives
    '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)


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


