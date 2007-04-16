
oddHeaderMarkup = \markup \fill-line {
  " "
  \on-the-fly #(lambda (layout props arg)
                (if (< 1 (chain-assoc-get 'page:page-number props -1))
                    (interpret-markup layout props arg)
                    empty-stencil))
  \fromproperty #'page:page-number-string
}

evenHeaderMarkup = \markup \fill-line {
  \fromproperty #'page:page-number-string
  " "
}

oddFooterMarkup = \markup {
  \column {
    \fill-line {
      % put copyright only on pagenr. 1 
      \on-the-fly #(lambda (layout props arg)
		    (if (and (= 1 (chain-assoc-get 'page:page-number props -1))
                             (not (chain-assoc-get 'page:last?  props #f)))
		     (interpret-markup layout props arg)
		     empty-stencil))
      \fromproperty #'header:longcopyright
    }
    \fill-line {
      % put notice and tagline on last page
      \on-the-fly #(lambda (layout props arg)
		    (if (chain-assoc-get 'page:last?  props #f)
		     (interpret-markup layout props arg)
		     empty-stencil))
      \column {
        \fromproperty #'header:notes
        \vspace #2
        \fromproperty #'header:tagline
      }
    }
  }
}

evenFooterMarkup = \markup {
  \column {
    \fill-line {
      % put notice and tagline on last page
      \on-the-fly #(lambda (layout props arg)
		    (if (chain-assoc-get 'page:last?  props #f)
		     (interpret-markup layout props arg)
		     empty-stencil))
      \column {
        \fill-line { \fromproperty #'header:notes }
        \vspace #2
        \fill-line { \fromproperty #'header:tagline }
      }
    }
  }
}
