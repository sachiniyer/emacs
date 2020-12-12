(define-package "lean-mode" "20200930.604" "A major mode for the Lean language"
  '((emacs "24.3")
    (dash "2.12.0")
    (dash-functional "1.2.0")
    (s "1.10.0")
    (f "0.19.0")
    (flycheck "30"))
  :commit "cc1f5fadf8e9ae08aa25828985edc97df04d94a7" :keywords
  '("languages")
  :authors
  '(("Leonardo de Moura" . "leonardo@microsoft.com")
    ("Soonho Kong      " . "soonhok@cs.cmu.edu")
    ("Gabriel Ebner    " . "gebner@gebner.org")
    ("Sebastian Ullrich" . "sebasti@nullri.ch"))
  :maintainer
  '("Sebastian Ullrich" . "sebasti@nullri.ch")
  :url "https://github.com/leanprover/lean-mode")
;; Local Variables:
;; no-byte-compile: t
;; End:
