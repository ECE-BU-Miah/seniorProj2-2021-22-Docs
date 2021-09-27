(TeX-add-style-hook
 "poster"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("beamer" "final")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("beamerposter" "scale=1.24")))
   (add-to-list 'LaTeX-verbatim-environments-local "semiverbatim")
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
    "beamer"
    "beamer10"
    "beamerposter"
    "tikz"
    "todonotes"
    "epstopdf"
    "hyperref"
    "subfigure"
    "amssymb"
    "amsmath"
    "bm"
    "siunitx"
    "mathtools"
    "xcolor"
    "soul"
    "geometry"
    "graphicx"
    "booktabs")
   (LaTeX-add-labels
    "fig:highLevelDiagram"
    "fig:helicoterModel"
    "fig:algorithmFramework"
    "fig:LQGModel"
    "fig:NeuralNetwork"
    "fig:simStepPitch"
    "fig:simStepYaw"
    "fig:simPitchVolt"
    "fig:simYawVolt"
    "fig:simResults"
    "fig:Setup"
    "fig:stepPitchADP"
    "fig:stepYawADP"
    "fig:ADP_Results"
    "fig:stepPitch"
    "fig:stepYaw"
    "fig:expResults"
    "fig:time0"
    "fig:time10"
    "fig:posistionAtTime")
   (LaTeX-add-environments
    '("remark" LaTeX-env-args ["argument"] 1)
    '("prelab" LaTeX-env-args ["argument"] 1)
    '("example" LaTeX-env-args ["argument"] 1))
   (LaTeX-add-lengths
    "sepwid"
    "onecolwid"
    "twocolwid"
    "threecolwid"))
 :latex)

