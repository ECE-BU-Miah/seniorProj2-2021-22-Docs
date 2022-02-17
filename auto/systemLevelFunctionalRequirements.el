(TeX-add-style-hook
 "systemLevelFunctionalRequirements"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("mdframed" "framemethod=TikZ") ("tocbibind" "nottoc" "notlof" "notlot") ("tocloft" "titles" "subfigure") ("todonotes" "colorinlistoftodos")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art12"
    "inputenc"
    "geometry"
    "graphicx"
    "booktabs"
    "array"
    "paralist"
    "epstopdf"
    "siunitx"
    "verbatim"
    "subfig"
    "caption"
    "hyperref"
    "fancyhdr"
    "sectsty"
    "tikz"
    "mdframed"
    "enumerate"
    "tocbibind"
    "tocloft"
    "todonotes"
    "soul")
   (TeX-add-symbols
    "HRule")
   (LaTeX-add-labels
    "sec:Literature"
    "fig:sysBlockDiag")
   (LaTeX-add-environments
    '("remark" LaTeX-env-args ["argument"] 1)
    '("prelab" LaTeX-env-args ["argument"] 1)
    '("example" LaTeX-env-args ["argument"] 1))
   (LaTeX-add-bibliographies
    "bib/references.bib"))
 :latex)

