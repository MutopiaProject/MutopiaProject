\version "2.16.0"

%\include "definitions.ily"

scoreFingeringExerciseThirty = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c{
	    	     	     \clef bass
	    	     	     \key c \major
	    	     	     \time 4/4
	    	     	     c,16_5[ c'_1 e_2 c_1] c,_5[ c'_1 e_2 c_1]  d,_5[ d'_1 f_2 d_1] d,[ d' f d]
	    	     	     \bar "|." \noBreak
	    	     	     \time 5/8
	    	     	     c16-5[ e-3 d-4 f-2] e-3[ g-1 d-4 f-2] c-5[ e-3]
	    	     	     \bar "|." \noBreak
	    	     	     \time 4/4
	    	     	     c16-3[ e-1 d-3 f-1] e-3[ g-1 f-3 a-1] g-3[ b-1 a c] b[ d c8-2]
	    	     	     \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseThirtyOne = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c{
	    	     	     \clef bass
	    	     	     \time 3/4
	    	     	     d16-4[ fis-2 e-3 g-1] fis-3[ a-1 g-4 bes-2] a-3[ c-1 bes8-2]
	    	     	     \bar "|." \noBreak
	    	     	     \time 4/4
	    	     	     \stemDown
	    	     	     <c, e>16-3-2[ g'-1 g,-5 g'-1] <c, e>-3-2[ g'-1 g,-5 g'-1] <b, d>-4-2[ g'-1 g,-5 g'-1] <b, d>-4-2[ g'-1 g,-5 g'-1]
	    	     	     \stemNeutral
	    	     	     \bar "|." \noBreak
	    	     	     \time 3/4
	    	     	     c,,16-5[ c'-1 ees-4 g-2] c-1[ g-2 ees-4 c-1] \once \override Stem #'transparent = ##t \once \override Flag #'transparent = ##t c,4-5
	    	     	     \bar "|." \noBreak
	    	     	     e'!16-5-4 f-4-3 g-3-2 a-1-1 bes-2-2 a-1-1 g-3-2 f-4-3 \once \override Stem #'transparent = ##t \once \override Flag #'transparent = ##t e4-5-4
	    	     	     \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseThirtyTwo = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c{
	    	     	     \clef bass
	    	     	     \time 3/4
	    	     	     c'16-1[ g-2 e-4 g-2] c,-5[ c-1 g-2 e-4] c4-5
	    	     	     \bar "|." \noBreak
	    	     	     e''8-1[ c-2] \preTrill c8.\trill^\trillOne[ b32-3 c-1] c,4-5
	    	     	     \bar "|." \noBreak
	    	     	     \time 4/4
	    	     	     g16-5[ g'-1 fis-2 g-1] a-2[ g-1 fis-2 g-1] g,-5[ g'-1 fis-2 g-1] b-2[ g-1 fis-2 g-1] |
	    	     	     \bar "|" \noBreak
	    	     	     g,-5[ g'-1 fis-2 g-1] a-2[ g-3 fis-4 g-3] b-1[ g-3 fis-4 g-3] c-1[ g-3 fis-4 g-3] |
	    	     	     \bar "|" \noBreak
	    	     	     
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseThirtyThree = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c{
	    	     	     \clef bass
	    	     	     \time 4/4
	    	     	     d'-1[ g,-3 fis-4 g-3] b-1[ d,-3 cis-4 d-3] g-1[ b,-3 ais b-3] d-1[ g,-3 fis-4 g-3] |
	    	     	     \bar "|"
	    	     	     b-1[ g-3 fis-4 g-3] d-5[ d'-1 fis-2 d-1] g,-5[ g'-1 b-2 g-1] g,4-5
	    	     	     \bar "|."
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

partOneFingeringLeftHand = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{ \scoreFingeringExerciseThirty }
    \paragraph{ \scoreFingeringExerciseThirtyOne }
    \paragraph{ \scoreFingeringExerciseThirtyTwo }
    \paragraph{ \scoreFingeringExerciseThirtyThree }
    \paragraph{  }
    \paragraph{ The majority of the preceding passages for the right hand can be used 
    		for the same exercise with the left hand, by the ingenuity and industry
    		of the pupil, which is very advantageous. }
    \paragraph{  }
    \paragraph{  }
}
}
