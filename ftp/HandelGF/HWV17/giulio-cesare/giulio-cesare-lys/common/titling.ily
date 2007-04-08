
operaBookTitleMarkup = \markup \override #'(baseline-skip . 6) \column {
  \fill-line { \when-property #'header:composer
               \column { \vspace #10
                         \fill-line { \fontsize #10 \italic \fromproperty #'header:composer }
                         \vspace #6 } }
  \fill-line { \when-property #'header:title
               \column { \vspace #6
                         \fill-line { \fontsize #12 \fromproperty #'header:title }
                         \vspace #4
                         \fill-line { \fontsize #8 \fromproperty #'header:subtitle }
                         \vspace #2 } }
  \fill-line { \when-property #'header:opus
               \column { \vspace #2
                         \fill-line { \fontsize #5 \fromproperty #'header:opus }
                         \fill-line { \fontsize #5 \fromproperty #'header:date }
                         \vspace #4 } }
  \fill-line { \when-property #'header:title
               \column { \vspace #4
                         \fill-line { " " \postscript #"-20 0 moveto 40 0 rlineto stroke" " " }
                         \vspace #4 } }
  \fill-line { \when-property #'header:edition
               \column { \hspace #2
                         \fill-line { \fontsize #5 \fromproperty #'header:edition }}}
}

operaScoreTitleMarkup = \markup \override #'(baseline-skip . 3) \column {
  \fill-line { \when-property #'header:act
               \column { 
                 \vspace #4
                 \fill-line { \fontsize #6 \fromproperty #'header:act }
                 \vspace #2
               } 
             }
  \fill-line { \when-property #'header:scene
               \column { 
                 \fill-line { \fontsize #3 \fromproperty #'header:scene }
                 \vspace #2
               }
             }
  \fill-line { \when-property #'header:scenedescr
               \column { 
                 \fill-line { \fontsize #1 \fromproperty #'header:scenedescr }
               }
             }
  \fill-line { \when-property #'header:piece
               \column { 
                 \vspace #2
                 \fill-line { \fontsize #4 \fromproperty #'header:piece }
               }
             }
}

operaOddHeaderMarkup = \markup \fill-line {
  " "
  \on-the-fly #(lambda (layout props arg)
                (if (< 1 (chain-assoc-get 'page:page-number props -1))
                    (interpret-markup layout props arg)
                    empty-stencil))
  \fromproperty #'page:page-number-string
}

operaEvenHeaderMarkup = \markup \fill-line {
  \fromproperty #'page:page-number-string
  " "
}

operaOddFooterMarkup = \markup {
  \column {
    \fill-line {

      % put copyright only on pagenr. 1 
      \on-the-fly #(lambda (layout props arg)
		    (if (= 1 (chain-assoc-get 'page:page-number props   -1))
		     (interpret-markup layout props arg)
		     empty-stencil))
      \fromproperty #'header:longcopyright
    }
    \fill-line {
      % put tagline only on last page
      \on-the-fly #(lambda (layout props arg)
		    (if (chain-assoc-get 'page:last?  props #f)
		     (interpret-markup layout props arg)
		     empty-stencil))
      \fromproperty #'header:tagline
    }
  }
}

operaEvenFooterMarkup = \markup {
  \column {
    \fill-line {
      % put tagline only on last page
      \on-the-fly #(lambda (layout props arg)
		    (if (chain-assoc-get 'page:last?  props #f)
		     (interpret-markup layout props arg)
		     empty-stencil))
      \fromproperty #'header:tagline
    }
  }
}
