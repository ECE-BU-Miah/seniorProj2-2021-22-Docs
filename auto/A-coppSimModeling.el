(TeX-add-style-hook
 "A-coppSimModeling"
 (lambda ()
   (LaTeX-add-labels
    "ch:Chapter1"
    "fig:runtRoverDims"
    "fig:runtRoverChassis"
    "fig:runtRoverWheel"
    "fig:runtRoverModels")
   (LaTeX-add-environments
    '("prelab" LaTeX-env-args ["argument"] 1)
    '("example" LaTeX-env-args ["argument"] 1)))
 :latex)

