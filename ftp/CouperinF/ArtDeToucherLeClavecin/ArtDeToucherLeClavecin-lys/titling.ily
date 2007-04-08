
bookTitleMarkup = \markup \column {
  %% Compositeur, libretiste
  \fill-line {
    \when-property #'header:composer \column {
      \vspace #6
      \fill-line { \fontsize #10 \italic \fromproperty #'header:composer }
      \vspace #1
      \when-property #'header:poet \fill-line {
        \fontsize #10 \italic \fromproperty #'header:poet 
      }
      \vspace #5 
    }
  }
  %% Titre
  \fill-line { 
    \when-property #'header:title \column {
      \vspace #3
      \fill-line { \fontsize #12 \fromproperty #'header:title }
      \when-property #'header:subtitle \column {
        \vspace #4
        \fill-line { \fontsize #8 \fromproperty #'header:subtitle }
      }
      \vspace #10
      \fill-line { " " \postscript #"-20 0 moveto 40 0 rlineto stroke" " " }
      \vspace #3
    }
  }
  %% Opus, date
  \fill-line {
    \when-property #'header:opus \column {
      \vspace #1
      \fill-line { \fontsize #5 \fromproperty #'header:opus }
    }
    \when-property #'header:date \column {
      \vspace #1
      \fill-line { \fontsize #5 \fromproperty #'header:date }
      \vspace #1 
    }
  }
}

scoreTitleMarkup = \markup \override #'(baseline-skip . 3) \column {
  %% Simple titre
  \fill-line {
    \when-property #'header:titre \column { 
      \fill-line { \fontsize #3 \fromproperty #'header:titre }
      \vspace #1
    }
  }
  %% Simple titre, plus petit
  \fill-line {
    \when-property #'header:petitTitre \column { 
      \fill-line { \italic \fromproperty #'header:petitTitre }
    }
  }
}

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
		    (if (= 1 (chain-assoc-get 'page:page-number props -1))
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

evenFooterMarkup = \markup {
  \column {
    
    \fill-line {
      % put notice and second page
      \on-the-fly #(lambda (layout props arg)
		    (if (= 2 (chain-assoc-get 'page:page-number props -1))
		     (interpret-markup layout props arg)
		     empty-stencil))
      \fromproperty #'header:notes
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
