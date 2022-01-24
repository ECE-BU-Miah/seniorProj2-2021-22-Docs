(TeX-add-style-hook
 "proposal"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "letterpaper" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("caption" "width=11cm" "font=footnotesize" "labelfont=bf" "format=default" "justification=centerlast") ("subcaption" "list=true" "labelformat=simple") ("todonotes" "colorinlistoftodos") ("algorithm2e" "ruled" "vlined" "linesnumbered")))
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
    "amsmath"
    "amssymb"
    "bm"
    "graphicx"
    "rotating"
    "caption"
    "subcaption"
    "pgfgantt"
    "booktabs"
    "array"
    "hyperref"
    "todonotes"
    "soul"
    "easyReview"
    "setspace"
    "multirow"
    "algorithm2e"
    "tikz"
    "siunitx")
   (LaTeX-add-labels
    "fig:fleet"
    "fig:steerSystem"
    "fig:AstuffFleetSteeringSetup"
    "sec:sysID-Example1"
    "fig:exMIMO"
    "sec:sysID-Example2"
    "fig:ex2fig1"
    "fig:ex2fig2"
    "sec:sysID-Example3"
    "fig:exIO"
    "fig:nonlinGraph"
    "fig:steeringmodelarchitecture"
    "fig:brakeModelArchitecture"
    "fig:accelerationModelArchitecture"
    "fig:shiftModelArchitecture"
    "fig:speedControlModelArchitecture"
    "fig:speedModelArchitecture"
    "fig:subFunctionalBlock"
    "fig:steeringModelBlockDiagram"
    "fig:lexusvehicle"
    "fig:vehicleSetup"
    "sec:simresults"
    "byWireSteerModel"
    "manualSteerModel"
    "tab:byWireSteerCoeffA"
    "tab:byWireSteerCoeffB"
    "tab:manualSteerCoeffA"
    "tab:manualSteerCoeffB"
    "byWireAccelModel"
    "manualAccelModel"
    "tab:manualAccelCoeffA"
    "tab:manualAccelCoeffB"
    "sec:timeline"
    "fig:gantt1"
    "fig:gantt2")
   (LaTeX-add-environments
    '("problem" LaTeX-env-args ["argument"] 1)
    '("remark" LaTeX-env-args ["argument"] 1)
    '("prelab" LaTeX-env-args ["argument"] 1)
    '("example" LaTeX-env-args ["argument"] 1))
   (LaTeX-add-bibliographies
    "bib/references.bib"))
 :latex)

