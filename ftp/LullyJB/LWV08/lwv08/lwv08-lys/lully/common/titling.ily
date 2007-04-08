
balletBookTitleMarkup = \markup \column {
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
      \vspace #1
      \fill-line { \fontsize #5 \fromproperty #'header:date }
      \vspace #1 
    }
  }
}

balletScoreTitleMarkup = \markup \override #'(baseline-skip . 3) \column {
  %% Partie
  \fill-line {
    \when-property #'header:partie \column { 
      \vspace #1
      \fill-line { \fontsize #6 \fromproperty #'header:partie }
      \vspace #1
      \fill-line {
        \when-property #'header:partieTitre
        \column {
          \fill-line { \italic \fontsize #3 \fromproperty #'header:partieTitre }
          \vspace #1
        }
      }
      \fill-line {
        \when-property #'header:partieTexte \column {
          \override #'(linewidth . 70) 
          \fontsize #2 \fromproperty #'header:partieTexte
        }
      }
    }
  }
  %% Entree
  \fill-line { 
    \when-property #'header:entree \column { 
      \vspace #1
      \fill-line { \fontsize #4 \fromproperty #'header:entree }
      \vspace #1
      \fill-line {
        \when-property #'header:entreeTitre
        \italic \column {
          \fill-line { \fontsize #3 \fromproperty #'header:entreeTitre }
          \vspace #1
        }
      }
      \fill-line {
        \when-property #'header:entreeTexte
        \column {
          \override #'(linewidth . 70)
          \fontsize #2 \fromproperty #'header:entreeTexte
        }
      }
    }
  }
  %% Simple titre
  \fill-line {
    \when-property #'header:titre \column { 
      \vspace #1
      \fill-line { \fontsize #3 \fromproperty #'header:titre }
    }
  }
  %% Simple titre, plus petit
  \fill-line {
    \when-property #'header:petitTitre \column { 
      \vspace #1
      \fill-line { \fontsize #2 \fromproperty #'header:petitTitre }
    }
  }
}

balletOddHeaderMarkup = \markup \fill-line {
  " "
  \on-the-fly #(lambda (layout props arg)
                (if (< 1 (chain-assoc-get 'page:page-number props -1))
                    (interpret-markup layout props arg)
                    empty-stencil))
  \fromproperty #'page:page-number-string
}

balletEvenHeaderMarkup = \markup \fill-line {
  \fromproperty #'page:page-number-string
  " "
}

balletOddFooterMarkup = \markup {
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

balletEvenFooterMarkup = \markup {
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
