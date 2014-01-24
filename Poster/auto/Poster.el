(TeX-add-style-hook "Poster"
 (lambda ()
    (LaTeX-add-bibliographies
     "sigproc")
    (LaTeX-add-labels
     "sec:introduction"
     "sec:implementation"
     "sec:testbed-setup"
     "fig:system-arch"
     "fig:kinect-deployment"
     "sec:mark-chain-pred"
     "fig:transitional-matrix"
     "sec:simulation"
     "sec:results"
     "fig:energy-consumption"
     "sec:concl-future-work")
    (TeX-run-style-hooks
     "hyperref"
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

