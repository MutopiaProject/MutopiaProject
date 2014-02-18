\version "2.16.0"

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneRemarksOnScales = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{" "}
    \paragraph{ 
    	    The right hand has the thumb on the \caps "key-note" or \caps tonic, and on the \concat{4 \super th} of the
    	    \caps "key-note," in the following \caps major and \caps minor keys: \larger "C, G, D, A, E," and \larger B.
    }
    \paragraph{ 
    	    In all \caps major keys with one or more flats, the thumb is put on \larger C, and \larger F.
    }
    \paragraph{ 
    	    The left hand has the thumb on the \caps "key-note," and on the \concat{5 \super th} of the \caps key, in the
    	    following \caps major and \caps minor keys: \larger "F, C, G, D, A," and \larger E.
    }
    \paragraph{ 
    	    In the \caps major keys of \larger{ \concat{B \flat}, \concat{E \flat}, \concat{A \flat} and \concat{D \flat},}
    	    the thumb is put on the \concat{3 \super d} and \concat{7 \super th} of the key.
    }
    \paragraph{" "}
  }
}
