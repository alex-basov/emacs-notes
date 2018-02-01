(require 'package)

;; Melpa packages
(add-to-list 'package-archives
    '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)

;; Loadauto-complete package
(require 'auto-complete)

;; Start auto-complete
(global-auto-complete-mode t)

;; Set a global hot-key for goto-line
(global-set-key (kbd "C-c l") 'goto-line)

;; impatient mode

