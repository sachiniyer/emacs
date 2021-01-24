;;; multi-project-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "multi-project" "multi-project.el" (0 0 0 0))
;;; Generated autoloads from multi-project.el

(autoload 'multi-project-compile "multi-project" "\
Compiles a project based upon the current directory of the buffer." t nil)

(autoload 'multi-project-root "multi-project" "\
Jumps to the root of a project based upon current directory." t nil)

(autoload 'multi-project-change-tags "multi-project" "\
Visits tags file based upon current directory. The optional
PROJECT argument will change tags to the specified PROJECT.

\(fn &optional PROJECT)" t nil)

(autoload 'multi-project-last "multi-project" "\
Jumps to the last chosen project." t nil)

(autoload 'multi-project-anchor "multi-project" "\
Prevent the tracking of switching between projects and always
use the anchored project." t nil)

(autoload 'multi-project-reset-anchor "multi-project" "\
Clears out the anchoring of a project." t nil)

(autoload 'multi-project-display-change-tags "multi-project" nil t nil)

(autoload 'multi-project-display-projects "multi-project" "\
Displays a buffer with the projects" t nil)

(autoload 'multi-project-find-file "multi-project" "\
Search a TAGS file for a particular file that match a user's input." t nil)

(defadvice find-tag (before multi-project-find-tag (TAGNAME &optional NEXT-P REGEXP-P)) "\
Find tag in project tags table based upon the current directory." (let ((project (multi-project-find-by-directory))) (when project (multi-project-change-tags (car project)))))

(autoload 'multi-project-present-project "multi-project" "\
Jumps to the present project." t nil)

(autoload 'multi-project-present-project-new-frame "multi-project" "\
Jumps to the present project in a new frame." t nil)

(autoload 'multi-project-visit-project "multi-project" "\
Makes a new frame with the list of projects to visit." t nil)

(autoload 'multi-project-interactive-grep "multi-project" "\
Run ‘grep-find’ interactively." t nil)

(autoload 'multi-project-shell "multi-project" "\
Create a shell with a buffer name of the project.
The function first looks if the current directory is within a
known project.  If no projects are found, then the current
project is used." t nil)

(defvar multi-project-mode nil "\
Non-nil if Multi-Project mode is enabled.
See the `multi-project-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `multi-project-mode'.")

(custom-autoload 'multi-project-mode "multi-project" nil)

(autoload 'multi-project-mode "multi-project" "\
Toggle multi-project mode.

If called interactively, enable Multi-Project mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "multi-project" '("multi-project-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; multi-project-autoloads.el ends here
