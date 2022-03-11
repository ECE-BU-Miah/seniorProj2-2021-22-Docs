(TeX-add-style-hook
 "list-of-symbolds"
 (lambda ()
   (LaTeX-add-environments
    '("prelab" LaTeX-env-args ["argument"] 1)
    '("example" LaTeX-env-args ["argument"] 1)))
 :latex)

