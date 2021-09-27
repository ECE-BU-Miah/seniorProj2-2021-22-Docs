(TeX-add-style-hook
 "proposal"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "letterpaper" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("caption" "width=11cm" "font=footnotesize" "labelfont=bf" "format=default" "justification=centerlast") ("algorithm2e" "ruled" "vlined" "linesnumbered")))
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
    "amsmath"
    "amssymb"
    "bm"
    "graphicx"
    "rotating"
    "subfigure"
    "caption"
    "pgfgantt"
    "booktabs"
    "array"
    "hyperref"
    "soul"
    "easyReview"
    "setspace"
    "multirow"
    "algorithm2e"
    "tikz"
    "siunitx")
   (LaTeX-add-environments
    '("remark" LaTeX-env-args ["argument"] 1)
    '("prelab" LaTeX-env-args ["argument"] 1)
    '("example" LaTeX-env-args ["argument"] 1))
   (LaTeX-add-bibliographies
    "bib/references.bib"))
 :latex)

