\version "2.16.1"
%\include "definitions.ily"

inlineScoreExtensionsExOne = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c'{
	    	     	    \set Staff.instrumentName = \markup{\larger{\concat{R.H. \super d}}}
	    	     	    \cadenzaOn
		    	    \clef treble
		    	    \once \override Beam #'auto-knee-gap = #1
		    	    \once \override Beam #'positions = #'(-1.3 . -1.3)
		    	    c8-1[ c'-5] 
		    	    b-1[ a'-5] g-4[ c,-1] c'4-5
		    	    \bar "||" 
		    	    \stopStaff
		    	    \once \override TextScript #'extra-offset = #'(0.8 . 5.2 )
		    	    \hideNotes 
		    	    b,4-\markup{\larger{\concat{L.H. \super d}}} b2.
		    	    \startStaff
		    	    \clef bass
		    	    \unHideNotes
		    	    \once \override Beam #'auto-knee-gap = #1
		    	    \once \override Beam #'positions = #'( 1.0 . 1.2 )
		    	    c,8-1[ c,-5] 
		    	    d-1[ e,-5] f-4[ c'-1] c,4-5
		    	    \bar "||" 
		    	    \stopStaff
		    	    \once \override TextScript #'extra-offset = #'(0.8 . 5.2 )
		    	    \hideNotes 
		    	    d'4-\markup{\larger{\concat{R.H. \super d}}} d2.
		    	    \startStaff
		    	    \clef treble
		    	    \unHideNotes
		    	    \once \override Beam #'auto-knee-gap = #1
		    	    \once \override Beam #'positions = #'(-1 . -1)
		    	    c'16-1[ c'-5] 
		    	    c-1[ c'-5]
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.3\in
	      ragged-right = ##t
	    }
	    }
}
inlineScoreExtensionsExTwo = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c'{
	    	     	    \set Staff.instrumentName = \markup{\larger{\concat{L.H. \super d}}}
	    	     	    \cadenzaOn
		    	    \clef bass
		    	    \unHideNotes
		    	    c,,16-5[ c'-1] 
		    	    \once \override Beam #'auto-knee-gap = #1
		    	    \once \override Beam #'positions = #'(1.7 . 1.7)
		    	    c-5[ c'-1]
		    	    \bar "||"
		    	    \stopStaff
		    	    \once \override TextScript #'extra-offset = #'(0.8 . 5.2 )
		    	    \hideNotes 
		    	    d,4-\markup{\larger{\concat{R.H. \super d}}} d2.
		    	    \startStaff
		    	    \clef treble
		    	    \unHideNotes
		    	    c'8-1 c'4^\switchFiveOne 
		    	    c'8-5
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.3\in
	      ragged-right = ##t
	    }
	    }
}
inlineScoreExtensionsExThree = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c{
	    	     	    \cadenzaOn
		    	    \clef bass
		    	    c,8-5 c'4^\switchOneFive c'8_1
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	    }
	    }
}

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneExtensionsContractions = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{  }
    \paragraph{ \inlineScoreExtensionsExOne }
    \paragraph{ \inlineScoreExtensionsExTwo }
    \paragraph{  }
    \paragraph{ 
    	    \larger "N.B." The \larger{ \up-tied-lyric \finger 5 \finger 1 }means
    	    that after striking \larger C  with the \concat{ 5 \super th } finger, the thumb is shifted on the 
    	    key without striking it.
    }
    \paragraph{
    	    In a similar manner the left hand "thus:   " \inlineScoreExtensionsExThree
    }
    \paragraph{ }
    \paragraph{
    	    Which mode of fingering should be much practised in various ways, the \caps "legato-style" requiring 
    	    it very frequently.
    }
    \paragraph{
    	    The shakes should be practised with every finger, not excluding the thumb; and upon the 
    	    short as well as long keys.
    }
    \paragraph{ }
}
}
