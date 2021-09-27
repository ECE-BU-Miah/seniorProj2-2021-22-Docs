(TeX-add-style-hook
 "labNotebook"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("labbook" "fontsize=11pt" "paper=letter" "openany" "captions=tableheading" "index=totoc" "hyperref")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "bottom=10em") ("babel" "english") ("inputenc" "utf8") ("fontenc" "T1") ("mathpazo" "osf") ("beramono" "scaled=.88") ("berasans" "scaled=.86") ("footmisc" "norule") ("algorithm2e" "ruled" "vlined" "linesnumbered") ("xcolor" "dvipsnames") ("scrlayer-scrpage" "headsepline") ("hyperref" "pdfauthor={Kalli Allen, Darrah Beebe, and Jason Braker}" "pdftitle={Laboratory Journal}" "pdfsubject={labNotebookSeniorProject3}" "bookmarksopen=true" "linktocpage=true" "urlcolor=linkcolor" "citecolor=linkcolor" "linkcolor=linkcolor" "backref=page" "pdfpagelabels=true" "plainpages=false" "colorlinks=true" "bookmarks=true" "pdfview=FitB") ("microtype" "stretch=10") ("mcode" "framed" "numbered" "autolinebreaks" "useliterate")))
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
    "labbook"
    "labbook10"
    "geometry"
    "babel"
    "lipsum"
    "inputenc"
    "fontenc"
    "mathpazo"
    "beramono"
    "berasans"
    "booktabs"
    "array"
    "amsmath"
    "graphicx"
    "etoolbox"
    "footmisc"
    "lastpage"
    "float"
    "algorithm2e"
    "xcolor"
    "epstopdf"
    "scrhack"
    "scrlayer-scrpage"
    "chngcntr"
    "hyperref"
    "microtype"
    "mcode"
    "todonotes"
    "pgfplots")
   (TeX-add-symbols
    "HRule"
    "currentYear")
   (LaTeX-add-environments
    '("remark" LaTeX-env-args ["argument"] 1)
    '("prelab" LaTeX-env-args ["argument"] 1)
    '("example" LaTeX-env-args ["argument"] 1))
   (LaTeX-add-bibliographies
    "bib/references.bib")
   (LaTeX-add-xcolor-definecolors
    "titleblue"
    "linkcolor"))
 :latex)

