;; ME
(setq user-full-name "Sachin Iyer"
      user-mail-address "sachinjiyer@gmail.com")


;; THEMING
(setq doom-font (font-spec :family "Hack" :size 12 :weight 'normal)
      doom-variable-pitch-font (font-spec :family "Hack" :size 13))
(setq doom-theme 'doom-zenburn)
(setq display-line-numbers-type t)
(setq doom-modeline-height 18)
(setq doom-modeline-project-detection 'auto)
(setq doom-modeline-minor-modes nil)


;; UTILITY FUNCTIONS
(defun ds/counsel-linux-app-format-function (name comment exec)
  (format "% -45s %s"
          (propertize name 'face 'font-lock-builtin-face)
          (or comment "")))
(setq counsel-linux-app-format-function #'ds/counsel-linux-app-format-function)

(defun scratch ()
  "create a new scratch buffer to work in. (could be *scratch* - *scratchX*)"
  (interactive)
  (let ((n 0)
        bufname)
    (while (progn
             (setq bufname (concat "*scratch"
                                   (if (= n 0) "" (int-to-string n))
                                   "*"))
             (setq n (1+ n))
             (get-buffer bufname)))
    (switch-to-buffer (get-buffer-create bufname))
    (if (= n 1) initial-major-mode)))

(defun open-apps()
  (interactive)
  (start-process "Spotify" nil "spotify")
  (start-process "Brave" nil "brave")
  (start-process "Discord" nil "discord")
  (start-process "Signal" nil "signal-desktop")
  (start-process "Calendar" nil "gnome-calendar"))

(defun iwb ()
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))


;; KEYBINDS
(map! "M-[" #'previous-buffer
      "M-]" #'next-buffer
      "s-;" #'previous-buffer
      "s-'" #'next-buffer

      "M-&" #'execute-extended-command
      "M-*" #'helm-run-external-command
      "M-)" #'counsel-linux-app
      "M-\"" #'multi-vterm

      "s-h" #'windmove-left
      "s-l" #'windmove-right
      "s-k" #'windmove-up
      "s-j" #'windmove-down
      "s-b" #'counsel-switch-buffer

      "s-N" #'split-window-right
      "s-M" #'split-window-below
      "s-n" #'+evil/window-vsplit-and-follow
      "s-m" #'+evil/window-split-and-follow
      "s-o" #'delete-window
      "s-O" #'delete-other-windows
      "s-i" #'kill-current-buffer
      "s-I" #'kill-buffer-and-window
      "s-f" #'find-file)


;; GENERAL CONFIG

;; EXWM
(use-package! exwm
  :config
  (use-package! exwm-config
    :config
    (exwm-config-default)
    (setq exwm-input-simulation-keys
          `(([?\C-h] . [left])
            ([?\C-j] . [down])
            ([?\C-k] . [up])
            ([?\C-l] . [right])
            ([?\C-d] . [delete])
            ([?\C-a] . [home])
            ([?\C-e] . [end])
            ([?\C-k] . [S-end delete])))
    (exwm-init)))

(after! exwm
  (map! :map exwm-mode-map
        "M-[" #'previous-buffer
        "M-]" #'next-buffer
        "M-&" #'execute-extended-command
        "M-*" #'helm-run-external-command
        "M-)" #'counsel-linux-app
        "M-\"" #'multi-vterm

        "s-h" #'windmove-left
        "s-l" #'windmove-right
        "s-k" #'windmove-up
        "s-j" #'windmove-down
        "s-b" #'counsel-switch-buffer

        "s-N" #'split-window-right
        "s-M" #'split-window-below
        "s-n" #'+evil/window-vsplit-and-follow
        "s-m" #'+evil/window-split-and-follow
        "s-o" #'delete-window
        "s-O" #'delete-other-windows
        "s-i" #'kill-current-buffer
        "s-I" #'kill-buffer-and-window
        "s-f" #'find-file))


;; EVIL
(use-package! evil
  :config
  (setq evil-cross-lines 1)
  (setq evil-move-beyond-eol 1)
  (setq evil-want-fine-undo t))


;; ORG
(setq initial-major-mode 'org-mode)
(use-package! org
  :config
  (add-hook! 'org-mode-hook #'auto-fill-mode))
(setq org-directory "~/docs/todo/")

;; PYTHON
(use-package! ein
  :config
  (setq ein:output-area-inlined-images t))


;; PDF
(after! pdf-view
  ;; open pdfs scaled to fit page
  (add-hook! 'pdf-view-mode-hook #'pdf-view-midnight-minor-mode)
  (setq-default pdf-view-display-size #'fit-width)
  (add-hook! 'pdf-view-mode-hook (evil-colemak-basics-mode -1))
  ;; automatically annotate highlights
  (setq pdf-annot-activate-created-annotations t
        pdf-view-resize-factor 1.1)
  ;; faster motion
  (map!
   :map pdf-view-mode-map
   :n "g g"          #'pdf-view-first-page
   :n "G"            #'pdf-view-last-page
   :n "N"            #'pdf-view-next-page-command
   :n "E"            #'pdf-view-previous-page-command
   :n "e"            #'evil-collection-pdf-view-previous-line-or-previous-page
   :n "n"            #'evil-collection-pdf-view-next-line-or-next-page
   :localleader
   (:prefix "o"
    (:prefix "n"
     :desc "Insert" "i" 'org-noter-insert-note
     ))
   ))

;; VTERM
(use-package! vterm
  :config
  (add-to-list 'vterm-eval-cmds #'("update-pwd" (lambda (path) (setq default-directory path))))
  (push (list "find-file-below"
              (lambda (path)
                (if-let* ((buf (find-file-noselect path))
                          (window (display-buffer-below-selected buf nil)))
                    (select-window window)
                  (message "Failed to open file: %s" path))))
        vterm-eval-cmds))

(multi-vterm)
(setq my-init-files '("/home/siyer/docs/todo/rolling.org"
                      "/home/siyer/docs/todo/today.org"))
(dolist (elem my-init-files)
  (find-file elem))

(use-package! xkcd
  :config
  (setq xkcd-cache-dir "/home/siyer/.xkcd-cache/"))

(after! xkcd
  (ignore-errors
    (with-temp-buffer
      (xkcd)
      (xkcd-kill-buffer))
    (let ((last-xkcd-png (concat xkcd-cache-dir (number-to-string xkcd-latest) ".png")))
      (if (file-exists-p last-xkcd-png)
          (setq fancy-splash-image last-xkcd-png)))))
