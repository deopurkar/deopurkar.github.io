(TeX-add-style-hook "template"
 (lambda ()
    (LaTeX-add-bibitems
     "wiles"
     "taylor-wiles"
     "reich")
    (LaTeX-add-labels
     "sec:intro"
     "thm:bigfermat")
    (TeX-add-symbols
     "Z"
     "Q"
     "R"
     "C"
     "N")
    (TeX-run-style-hooks
     "url"
     "cite"
     "hyperref"
     "thmtools"
     "ytableau"
     "fullpage"
     "tikz"
     "amsthm"
     "amssymb"
     "amsmath"
     "latex2e"
     "art10"
     "article"
     "")))

