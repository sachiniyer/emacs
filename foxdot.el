(defvar foxdot-buffer-name "*FoxDot*")

(defun foxdot-start ()
  (interactive)
  (progn
    (setq
     python-shell-interpreter-args (concat foxdot-cli-path "foxdot-cli.py")
     fd-code-buffer (format (buffer-name))
     )
    (run-python (python-shell-parse-command))
    (python-shell-switch-to-shell)
    (rename-buffer foxdot-buffer-name)
    (switch-to-buffer-other-window fd-code-buffer)
    ))

(defun foxdot-execute(start end)
  (interactive "r")
  (progn
    (setq
     fd-code (buffer-substring-no-properties start end)
     fd-code-buffer (format (buffer-name))
     )
    (append-to-buffer (get-buffer foxdot-buffer-name) start end)
    (switch-to-buffer-other-window (get-buffer foxdot-buffer-name))
    (execute-kbd-macro "\C-m")
    (switch-to-buffer-other-window fd-code-buffer)
    (execute-kbd-macro "\C-g")
    ))

(global-set-key [?\C-c ?\C-e] `foxdot-execute)
(global-set-key [?\C-c ?\C-f] `foxdot-start)

(provide 'foxdot-mode)