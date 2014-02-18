\version "2.16.0"

inlineScoreRightHandFingering = \markup { \general-align #Y #CENTER 
   \score {
	    	    \new Staff
	    	     \relative c''{
	    	     	     \set Staff.instrumentName = \markup {\column{ \line{Right}\line{Hand}}}
		    	    \clef treble
		    	    \time 2/4
		    	    \stemDown
		    	    c16-1 d-2 e-3 f-4  g-5 f-4 e-3 d-2
		    	    c-1 d-2 e-3 f-4    g-5 f-4 e-3 d-2
		    	    c4-1
		    	    \stopStaff
		    	    \override TextScript #'extra-offset = #'(0.1 . 4.7 )
		    	    \hideNotes c-\markup{and so on, a great many times.}
		     }
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##t
	    }
	    }
}
inlineScoreLeftHandFingering = \markup { \general-align #Y #CENTER 
   \score {
	    	    \new Staff
	    	     \relative c{
	    	     	     \set Staff.instrumentName = \markup {\column{ \line{Left}\line{Hand}}}
		    	    \clef bass
		    	    \time 2/4
		    	    \stemDown
		    	    c16-5 d-4 e-3 f-2  g-1 f-2 e-3 d-4
		    	    \override TextScript #'extra-offset = #'(1.6 . 4.9 )
		    	    c4-5-\markup{etc.}
		    	    \stopStaff
		    	    \override TextScript #'extra-offset = #'(1.6 . 7.0 )
		    	    \hideNotes c-\markup{\column{
		    	    	    \line{\larger {N.B.} Let every note be played even, in }
		    	    	    \line{"regard to time; and with equal strength."}
		    	    	    }
		    	    	    }
		     }
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##t
	    }
	    }
}

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOnePrelimDirections = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{" "}
    \paragraph{
    	    The hand and arm should be held in a horizontal position; neither depressing 
    	    nor raising the wrist: the seat should therefore be adjusted accordingly.  The 
    	    fingers and thumb should be placed over the keys, always ready to strike; bending 
    	    the fingers in, more or less in proportion to their length.  All unnecessary motion 
    	    must be avoided.
    }
    \paragraph{" "}
    \paragraph{
    	    Let the pupil now begin to practise, \caps slowly at first, the following passage; 
    	    observing to keep down the first key 'till the second has been struck, and so on.
    }
    \paragraph{" "}
    \paragraph{
    	    The \finger 1 is for the thumb, and \finger 2, \finger 3, \finger 4, \finger 5, for the
    	    succeeding fingers.
    }
    \paragraph{" "}
    \paragraph{ \inlineScoreRightHandFingering }
    \paragraph{ \inlineScoreLeftHandFingering }
    \paragraph{" "}
  }
}
