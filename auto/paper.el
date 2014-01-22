(TeX-add-style-hook "paper"
 (lambda ()
    (LaTeX-add-bibliographies
     "reference")
    (LaTeX-add-environments
     "example"
     "definition"
     "conjecture"
     "lemma"
     "theorem"
     "corollary"
     "proposition")
    (TeX-add-symbols
     "endexam")
    (TeX-run-style-hooks
     "subfigure"
     "footnotesize"
     "tight"
     "color"
     "usenames"
     "url"
     "array"
     "wasysym"
     "pifont"
     "stmaryrd"
     "dsfont"
     "sans"
     "amsmath"
     "mathrsfs"
     "amssymb"
     "algorithmicx"
     "algpseudocode"
     "algorithm"
     "graphicx"
     "cite"
     ""
     "latex2e"
     "sig-alternate10"
     "sig-alternate"
     "preprint"
     "abstract"
     "intro")))
