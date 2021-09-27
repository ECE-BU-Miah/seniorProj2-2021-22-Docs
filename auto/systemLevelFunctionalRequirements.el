(TeX-add-style-hook
 "systemLevelFunctionalRequirements"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("mdframed" "framemethod=TikZ") ("tocbibind" "nottoc" "notlof" "notlot") ("tocloft" "titles" "subfigure")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
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
    "todonotes"
    "fancyhdr"
    "sectsty"
    "tikz"
    "mdframed"
    "enumerate"
    "tocbibind"
    "tocloft")
   (TeX-add-symbols
    "HRule")
   (LaTeX-add-environments
    '("remark" LaTeX-env-args ["argument"] 1)
    '("prelab" LaTeX-env-args ["argument"] 1)
    '("example" LaTeX-env-args ["argument"] 1)))
 :latex)

