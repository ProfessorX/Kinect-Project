(TeX-add-style-hook "Poster"
 (lambda ()
    (LaTeX-add-bibliographies
     "sigproc")
    (LaTeX-add-labels
     "sec:introduction"
     "sec:implementation"
     "sec:results"
     "sec:related-works"
     "sec:concl-future-work")
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

