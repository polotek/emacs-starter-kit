;;; starter-kit-js.el --- Some helpful Javascript helpers
;;
;; Part of the Emacs Starter Kit

;; (autoload 'espresso-mode "espresso" "Start espresso-mode" t)
;; (add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
;; (add-to-list 'auto-mode-alist '("\\.json$" . espresso-mode))
;; (add-hook 'espresso-mode-hook 'moz-minor-mode)
;; (add-hook 'espresso-mode-hook 'esk-paredit-nonlisp)
;; (add-hook 'espresso-mode-hook 'run-coding-hook)
;; (setq espresso-indent-level 2)

;; If you prefer js2-mode, use this instead:
(autoload 'js2-mode "js2" "Start js2-mode" t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-mode-hook 'moz-minor-mode)
(add-hook 'js2-mode-mode-hook 'run-coding-hook)
(setq js2-mode-indent-level 2)

(eval-after-load 'espresso
  '(progn (define-key espresso-mode-map "{" 'paredit-open-curly)
          (define-key espresso-mode-map "}" 'paredit-close-curly-and-newline)
          ;; fixes problem with pretty function font-lock
          (define-key espresso-mode-map (kbd ",") 'self-insert-command)
          (font-lock-add-keywords
           'espresso-mode `(("\\(function *\\)("
                             (0 (progn (compose-region (match-beginning 1)
                                                       (match-end 1) "ƒ")
                                       nil)))))))

(provide 'starter-kit-js)
;;; starter-kit-js.el ends here
