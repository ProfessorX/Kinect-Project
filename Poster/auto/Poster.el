(TeX-add-style-hook "Poster"
 (lambda ()
    (LaTeX-add-labels
     "sec:introduction")
    (TeX-run-style-hooks
     "url"
     "graphicx"
     "array"
     "algorithmic"
     "cite"
     "amssymb"
     "amsmath"
     "latex2e"
     "sig-alternate10"
     "sig-alternate"
     "")))

