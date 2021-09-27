(TeX-add-style-hook
 "finalReport"
 (lambda ()
   (setq TeX-command-extra-options
         "-shell-escape")
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("book" "letterpaper" "12pt" "titlepage" "openright" "twoside" "final")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("mcode" "framed" "numbered" "autolinebreaks" "useliterate") ("algorithm2e" "english" "algo2e" "algoruled" "vlined" "linesnumbered")))
   (add-to-list 'LaTeX-verbatim-environments-local "minted")
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
    "preamble"
    "private/thesis-margins-and-spaces"
    "private/00-frontpage"
    "parts/02-abstract"
    "parts/03-acknowledgements"
    "parts/04-dedication"
    "private/toc-lot-lof"
    "private/list-of-symbols"
    "parts/10-introduction"
    "book"
    "bk12"
    "ifthen"
    "mcode"
    "algorithm2e"
    "booktabs"
    "caption"
    "subcaption"
    "enumitem"
    "todonotes"
    "epstopdf"
    "easyReview"
    "soul"
    "float"
    "graphicx")
   (TeX-add-symbols
    "thesisauthor"
    "advisor"
    "thesistitlecoverpage"
    "nameofprogram"
    "academicunit"
    "nameOfUniversity"
    "graduationyear")
   (LaTeX-add-environments
    '("remark" LaTeX-env-args ["argument"] 1)
    '("prelab" LaTeX-env-args ["argument"] 1)
    '("example" LaTeX-env-args ["argument"] 1))
   (LaTeX-add-bibliographies
    "bib/references.bib")
   (LaTeX-add-pagestyles
    "myFancy"
    "plain"))
 :latex)

