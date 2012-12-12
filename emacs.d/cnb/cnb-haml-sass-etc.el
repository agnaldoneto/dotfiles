(when (require 'haml-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.haml\\'" . haml-mode)))

(when (require 'sass-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.sass\\'" . sass-mode))
  (setq scss-compile-at-save nil))

(when (require 'flymake-haml nil t)
  (add-hook 'haml-mode-hook 'flymake-haml-load)
  (add-hook 'sass-mode-hook 'flymake-sass-load))

(when (require 'rhtml-mode)
  (add-to-list 'auto-mode-alist '("\\.rhtml\\'" . rhtml-mode))
  (add-hook 'rhtml-mode-hook
            (lambda () (rinari-launch))))

(provide 'cnb-haml-sass-etc)