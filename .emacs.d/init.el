;;;;;;PLUGINS;;;;;;
;; PLUGIN LIST:
;;Dirvish
;;evil
;;key-chord
;;vterm
;;which-key
;;writeroom-mode

;;ADD AND INITIALIZE MELPA PACKAGE REPOSITORY
(require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;;install and initialize use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)

;;Adding lisp subdirectory to load-path
(add-to-list 'load-path (locate-user-emacs-file "lisp/"))

;;PACKAGES

(use-package evil
  :ensure t
  :config
  (evil-mode)
  (setq evil-default-state 'emacs)  ;;Default state for evil mode
  (key-chord-define evil-insert-state-map "jj" 'evil-normal-state) ;;remap jj to <ESC> 
)

(use-package key-chord
  :ensure t
  :config
  (key-chord-mode)
  (setq key-chord-two-keys-delay 0.5) ;;delay for key chord presses
  )
  
(use-package writeroom-mode
  :ensure t
  :config
  (writeroom-mode)
  (global-set-key (kbd "C-c w") 'writeroom-mode) ;;set keybinding for writeroom-mode
 )
  
(use-package dirvish
  :ensure t
  :config
  (dirvish)
  )

(use-package vterm
  :ensure t
  :requires
  (vterm-module)
  :config
  (vterm)
  )

(use-package which-key
  :ensure t
  :config
  )

;;;;;;;;SETTINGS;;;;;;;;

(tool-bar-mode -1)  ;;disable tool bar
(menu-bar-mode -1)  ;;disable menu bar
(global-display-line-numbers-mode 1)  ;;display line numbers

;; Enable fido mode
(fido-mode t)
(fido-vertical-mode t) 

;;Enable Visual Line Mode always
(global-visual-line-mode 1)

;;List directories first in dired
(setq dired-listing-switches "--group-directories-first -al")

;;;;;;;;;;;KEYBINDINGS/KEYBOARD SHORTCUTS;;;;;;;;;;;;
(global-set-key (kbd "C-c l") 'locate)  ;;Locate a file on the filesystem
(global-set-key (kbd "C-c s") 'repunctuate-sentences)  ;;Make single-spaced sentences double-spaced


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tsdh-dark))
 '(delete-selection-mode nil)
 '(global-display-line-numbers-mode t)
 '(package-selected-packages '(which-key dirvish vterm writeroom-mode key-chord evil))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Open Sans" :foundry "GOOG" :slant normal :weight regular :height 143 :width normal)))))
(put 'upcase-region 'disabled nil)
