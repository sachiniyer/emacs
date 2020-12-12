;;; helm-perspeen-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "helm-perspeen" "helm-perspeen.el" (0 0 0 0))
;;; Generated autoloads from helm-perspeen.el

(eval-after-load 'helm-buffers '(progn (define-key helm-buffer-map (kbd "C-c t") #'(lambda nil (interactive) (helm-exit-and-execute-action 'helm-perspeen--switch-to-buffer-tab))) (add-to-list 'helm-type-buffer-actions '("Open buffer with new perspeen's tab" . helm-perspeen--switch-to-buffer-tab) t)))

(eval-after-load 'helm-files '(progn (define-key helm-find-files-map (kbd "C-c t") #'(lambda nil (interactive) (helm-exit-and-execute-action 'helm-perspeen--open-file-tab))) (add-to-list 'helm-find-files-actions '("Open file with new perspeen's tab" . helm-perspeen--open-file-tab) t) (add-to-list 'helm-type-file-actions '("Open file with new perspeen's tab" . helm-perspeen--open-file-tab) t)))

(eval-after-load 'helm-projectile '(progn (define-key helm-projectile-projects-map (kbd "C-c w") #'(lambda nil (interactive) (helm-exit-and-execute-action 'helm-perspeen--create-workspace))) (add-to-list 'helm-source-projectile-projects-actions '("Create perspeen's WorkSpace `C-c w'" . helm-perspeen--create-workspace) t)))

(autoload 'helm-perspeen "helm-perspeen" "\
Display workspaces (perspeen) with helm interface.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-perspeen" '("helm-")))

;;;***

;;;### (autoloads nil nil ("helm-perspeen-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; helm-perspeen-autoloads.el ends here
