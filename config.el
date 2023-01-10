;; ME
(setq user-full-name "Sachin Iyer")

;; THEMING
(setq doom-scratch-initial-major-mode 'fundamental-mode)

(setq doom-font (font-spec :family "Hack" :size 12 :weight 'light)
      doom-big-font (font-spec :family "Hack" :size 12 )
      doom-variable-pitch-font (font-spec :family "Hack" :size 12 :weight 'light)
      doom-unicode-font (font-spec :family "Hack" :weight 'light)
      doom-serif-font (font-spec :family "Hack" :weight 'light))

(defvar required-fonts '("Hack"))

(defvar available-fonts
  (delete-dups (or (font-family-list)
                   (split-string (shell-command-to-string "fc-list : family")
                                 "[,\n]"))))

(defvar missing-fonts
  (delq nil (mapcar
             (lambda (font)
               (unless (delq nil (mapcar (lambda (f)
                                           (string-match-p (format "^%s$" font) f))
                                         available-fonts))
                 font))
             required-fonts)))

(if missing-fonts
    (pp-to-string
     `(unless noninteractive
        (add-hook! 'doom-init-ui-hook
          (run-at-time nil nil
                       (lambda ()
                         (message "%s missing the following fonts: %s"
                                  (propertize "Warning!" 'face '(bold warning))
                                  (mapconcat (lambda (font)
                                               (propertize font 'face 'font-lock-variable-name-face))
                                             ',missing-fonts
                                             ", "))
                         (sleep-for 0.5))))))
  ";; No missing fonts detected")


(setq doom-theme 'doom-zenburn)

(setq display-line-numbers-type t)


;; UTILITY FUNCTIONS
(defun ds/counsel-linux-app-format-function (name comment exec)
  (format "% -45s %s"
          (propertize name 'face 'font-lock-builtin-face)
          (or comment "")))
(setq counsel-linux-app-format-function #'ds/counsel-linux-app-format-function)

;; (defun scratch ()
;;   "create a new scratch buffer to work in. (could be *scratch* - *scratchX*)"
;;   (interactive)
;;   (let ((n 0)
;;         bufname)
;;     (while (progn
;;              (setq bufname (concat "*scratch"
;;                                    (if (= n 0) "" (int-to-string n))
;;                                    "*"))
;;              (setq n (1+ n))
;;              (get-buffer bufname)))
;;     (switch-to-buffer (get-buffer-create bufname))
;;     (if (= n 1) initial-major-mode)))

(defun open-apps()
  (interactive)
  (start-process "Spotify" nil "spotify")
  (start-process "Firefox" nil "firefox-developer-edition")
  (start-process "Discord" nil "discord")
  (start-process "Signal" nil "signal-desktop")
  (start-process "Element" nil "element-desktop")
  (start-process "KeepassXC" nil "keepassxc"))

(defun iwb ()
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

(defun exwm-workspace-switch-0 ()
  (interactive)
  (exwm-workspace-switch 0))

(defun exwm-workspace-switch-1 ()
  (interactive)
  (exwm-workspace-switch 1))

(defun exwm-workspace-switch-2 ()
  (interactive)
  (exwm-workspace-switch 2))

(defun exwm-workspace-switch-3 ()
  (interactive)
  (exwm-workspace-switch 3))

(defun exwm-workspace-switch-4 ()
  (interactive)
  (exwm-workspace-switch 4))

(defun exwm-workspace-switch-5 ()
  (interactive)
  (exwm-workspace-switch 5))

(defun exwm-workspace-switch-6 ()
  (interactive)
  (exwm-workspace-switch 6))

(defun exwm-workspace-switch-7 ()
  (interactive)
  (exwm-workspace-switch 7))

(defun exwm-workspace-switch-8 ()
  (interactive)
  (exwm-workspace-switch 8))

(defun exwm-workspace-switch-9 ()
  (interactive)
  (exwm-workspace-switch 9))


;; KEYBINDS
(map! "s-[" #'previous-buffer
      "s-]" #'next-buffer
      "s-*" #'helm-run-external-command
      "s-)" #'counsel-linux-app
      "s-\"" #'multi-vterm
      "s-;" #'evil-make

      "s-0" #'exwm-workspace-switch-0
      "s-1" #'exwm-workspace-switch-1
      "s-2" #'exwm-workspace-switch-2
      "s-3" #'exwm-workspace-switch-3
      "s-4" #'exwm-workspace-switch-4
      "s-5" #'exwm-workspace-switch-5
      "s-6" #'exwm-workspace-switch-6
      "s-7" #'exwm-workspace-switch-7
      "s-8" #'exwm-workspace-switch-8
      "s-9" #'exwm-workspace-switch-9

      "s-h" #'windmove-left
      "s-l" #'windmove-right
      "s-k" #'windmove-up
      "s-j" #'windmove-down
      "s-b" #'counsel-switch-buffer
      "s-B" #'ibuffer-list-buffers

      "s-M" #'split-window-right
      "s-N" #'split-window-below
      "s-m" #'+evil/window-vsplit-and-follow
      "s-n" #'+evil/window-split-and-follow
      "s-o" #'delete-window
      "s-O" #'delete-other-windows
      "s-i" #'kill-current-buffer
      "s-I" #'kill-buffer-and-window
      "s-u" #'ido-kill-buffer
      "s-f" #'find-file)


;; GENERAL CONFIG
(global-auto-revert-mode t)

;; EXWM

(defun efs/run-in-background (command)
  (let ((command-parts (split-string command "[ ]+")))
    (apply #'call-process `(,(car command-parts) nil 0 nil ,@(cdr command-parts)))))

(defun efs/exwm-init-hook ()
  ;; Make workspace 1 be the one where we land at startup
  (exwm-workspace-switch-create 1))

(defun efs/exwm-update-class ()
  (exwm-workspace-rename-buffer exwm-class-name))

;; This function isn't currently used, only serves as an example how to
;; position a window
(defun efs/position-window ()
  (let* ((pos (frame-position))
         (pos-x (car pos))
          (pos-y (cdr pos)))

    (exwm-floating-move (- pos-x) (- pos-y))))

(defun efs/configure-window-by-class ()
  (interactive)
  (pcase exwm-class-name
    ("Firefox" (exwm-workspace-move-window 2))
    ("Sol" (exwm-workspace-move-window 3))
    ("mpv" (exwm-floating-toggle-floating)
           (exwm-layout-toggle-mode-line))))

;; This function should be used only after configuring autorandr!
(defun efs/update-displays ()
  (efs/run-in-background "autorandr --change --force")
  (message "Display config: %s"
           (string-trim (shell-command-to-string "autorandr --current"))))

(use-package exwm
  :config
  (setq exwm-workspace-number 5)
  (add-hook 'exwm-update-class-hook #'efs/exwm-update-class)
  (add-hook 'exwm-manage-finish-hook #'efs/configure-window-by-class)
  (add-hook 'exwm-init-hook #'efs/exwm-init-hook)
  (setq exwm-layout-show-all-buffers t)

  ;; move all buffers to current workspace every time - might be a bit too much computation
  (setq exwm-layout-show-all-buffers t)
  (setq exwm-workspace-show-all-buffers t)
  (require 'exwm-randr)
  (exwm-randr-enable)
  (start-process-shell-command "xrandr" nil "xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal")

  (setq exwm-randr-workspace-monitor-plist '(2 "DP-1"))

  (add-hook 'exwm-randr-screen-change-hook #'efs/update-displays)
  (efs/update-displays)

  (setq exwm-workspace-warp-cursor t)

  (exwm-enable))

(after! exwm
  (map! :map exwm-mode-map
        "s-[" #'previous-buffer
        "s-]" #'next-buffer
        "s-*" #'helm-run-external-command
        "s-)" #'counsel-linux-app
        "s-\"" #'multi-vterm
        "s-;" #'evil-make

        "s-0" #'exwm-workspace-switch-0
        "s-1" #'exwm-workspace-switch-1
        "s-2" #'exwm-workspace-switch-2
        "s-3" #'exwm-workspace-switch-3
        "s-4" #'exwm-workspace-switch-4
        "s-5" #'exwm-workspace-switch-5
        "s-6" #'exwm-workspace-switch-6
        "s-7" #'exwm-workspace-switch-7
        "s-8" #'exwm-workspace-switch-8
        "s-9" #'exwm-workspace-switch-9


        "s-h" #'windmove-left
        "s-l" #'windmove-right
        "s-k" #'windmove-up
        "s-j" #'windmove-down
        "s-b" #'counsel-switch-buffer
        "s-B" #'ibuffer-list-buffers

        "s-M" #'split-window-right
        "s-N" #'split-window-below
        "s-m" #'+evil/window-vsplit-and-follow
        "s-n" #'+evil/window-split-and-follow
        "s-o" #'delete-window
        "s-O" #'delete-other-windows
        "s-i" #'kill-current-buffer
        "s-I" #'kill-buffer-and-window
        "s-u" #'ido-kill-buffer
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

;; PROJECTILE
(after! projectile (setq projectile-project-root-files-bottom-up (remove ".git"
          projectile-project-root-files-bottom-up)))


;; VTERM
(after! vterm
  :config
  (add-to-list 'vterm-eval-cmds #'("update-pwd" (lambda (path) (setq default-directory path))))
  (push (list "find-file-below"
              (lambda (path)
                (if-let* ((buf (find-file-noselect path))
                          (window (display-buffer-below-selected buf nil)))
                    (select-window window)
                  (message "Failed to open file: %s" path))))
        vterm-eval-cmds)
  (multi-vterm))

(setq my-init-files '("/home/siyer/docs/todo/rolling.org"
                      "/home/siyer/docs/todo/today.org"))
(dolist (elem my-init-files)
  (find-file elem))
(after! projectile (setq projectile-project-root-files-bottom-up (remove ".git"
                                                                         projectile-project-root-files-bottom-up)))


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

;; (setq curr-myargs '("send" "--quiet" "-t" "-C" " "))
;; (setq send-mail-function 'sendmail-send-it)
;; (setq sendmail-program "gmi")
;; (defun set-gmi-sendmail-arguments ()
;;   (interactive)
;;   (widen)
;;   (goto-char (point-min))
;;   (search-forward "<")
;;   (setq curr-email (thing-at-point 'symbol))
;;   (set-text-properties 0 (length curr-email) nil curr-email)
;;   (message "%s" curr-email)
;;   (setq user-mail-address curr-email)
;;   (setq user-full-name "Sachin Iyer")
;;   (setq curr-account (cdr (assoc curr-email emails)))
;;   (setq curr-myargs (reverse (cons curr-account (reverse (nbutlast curr-myargs)))))
;;   (setq message-sendmail-extra-arguments curr-myargs))

;; (advice-add 'notmuch-mua-send-and-exit :before #'set-gmi-sendmail-arguments)
