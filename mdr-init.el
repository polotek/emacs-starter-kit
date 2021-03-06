(global-linum-mode 1)
(setq vc-handled-backends nil)

;; (require 'haml-mode)
(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)

;; yasnippets
;; (setq load-path (cons "~/.emacs.d/lisp/yasnippet" load-path))
;; (require 'yasnippet)
;; (yas/initialize)
;; (yas/load-directory "~/.emacs.d/lisp/yasnippet/snippets")

;; dired enhancements
(load "dired+.elc")

;; psvn subversion enhancements
;; (require 'psvn)

;; github gist integration
(require 'gist)

(require 'color-theme)
;;(color-theme-initialize)
(load "zen-and-art.elc")
(color-theme-zen-and-art)
