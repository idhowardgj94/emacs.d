; force use teminal like mode
;; to famaliar emacs keyboard binding
(if (fboundp 'menu-bar-mode) (menu-bar-mode 1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode 1))


;; set directory looking too.
(defun add-setting-path (str)
  (add-to-list 'load-path (expand-file-name str user-emacs-directory)))

(add-setting-path "theme")
(add-setting-path "packages")
;; load custom setting theme
(load (expand-file-name "custom.el" user-emacs-directory))
;; install dash
(unless (package-installed-p 'dash)
  (package-refresh-contents)
  (package-install 'dash))

;; default package
(require 'setup-packages)

;; install packages
(defun install-packages ()
   (packages-install
   '(
     cider
     clj-refactor
     clojure-mode
     clojure-mode-extra-font-locking
     company
     css-eldoc
     deadgrep
     diff-hl
     diminish
     dockerfile-mode
     editorconfig
     elm-mode
     edn
     elisp-slime-nav
     eproject
     exec-path-from-shell
     forge
     gist
     go-mode
     highlight-escape-sequences
     htmlize
     html-to-hiccup
     hydra
     inflections
     magit
     markdown-mode
     )))
(install-packages)
;; do not have backup file at all
(setq make-backup-files nil)

;; About line, I think that linum is a good option
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

;; Enable Evil
(require 'evil)
(evil-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(wheatgrass))
 '(package-selected-packages
   '(html-to-hiccup htmlize highlight-escape-sequences go-mode gist forge exec-path-from-shell eproject elisp-slime-nav edn elm-mode editorconfig dockerfile-mode diminish diff-hl deadgrep css-eldoc company clojure-mode-extra-font-locking clj-refactor neotree cider magit use-package evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
