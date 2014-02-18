\version "2.16.1"

%\include "definitions.ily"

scoreFingeringExerciseOne = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
		    	    \clef treble
		    	    \cadenzaOn
		    	    g'8-5[ f-4] e-3[ e-3 d-2 d-2] c4-1 
		    	    \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	      line-width = 1.6\in 
	    }
	    }
}

scoreFingeringExerciseTwo = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
		    	    \clef treble
		    	    \cadenzaOn
		    	    \set Staff.instrumentName = \markup \override #'(baseline-skip . 1.5 ) {\column{ \tiny{ \line{But when the notes re-}\line{-peat too quick for the}\line{same finger, it is then}\line{necessary to change.}}}}
		    	    g'16-4[ f-3] e-2[ e-3 d-2 d-3] c4-2 
		    	    \bar "|."
		    	    \stemDown
		    	    g'16-4[ f-3] f-4[ e-3 d-2 c-1] c-4[ b-3 a-2 g-1] c8-4  
		    	    \bar "|."
		     }
	  \layout {
	      indent = 0.8\in
	      line-width=3.8\in
	      ragged-right = ##t	      
	    }
	    }
}

scoreFingeringExerciseThree = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c'{
		    	    \clef treble
		    	    \cadenzaOn
		    	     c16-2-3[ c-1-2 d-2-3 d-1-2] e-2-3[ e-1-2 f-2-3 f-1-2] g-2-3[ g a a] b[ b] c8-2-3 
		    	     \bar "|" \noBreak
		    	     c,16-3-4[ c-2-3 c-1-2] e-3-4[ e-2-3 e-1-2] g[ g g] c8-4-5
		    	     \bar "|." \noBreak
		    	     c,16-4[ c-3 c-2 c-1] e-4[ e-3 e-2 e-1] g-4[ g-3 g-2 g-1] c4-4
		    	     \bar "|" \noBreak
		    	     g'16-4[ g-3 a-4 g-3] f-2[ f-3 g-4 f-3] e-2[ e-3 f-4 e-3] d-2[ d-3 e-4 d-3] c4-2
		    	     \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseFour = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
		    	    \clef treble
		    	    \cadenzaOn
		    	    \stemDown
		    	    r16 bes16-3[ a-2 bes-3] c-4[ c-3 bes-2 c-3] d-4[ d-3 c-2 d-3] ees-4[ ees-3 d-2 ees-3] \stemNeutral 
		    	    \once \override Stem #'transparent = ##t 
		    	    \once \override Flag #'transparent = ##t
		    	    f16-4
			    \bar "|." \noBreak
			    r16 f16-3[ a-5 f-3] c-1[ c-3 f-5 c-3] \stemDown a-1[ a-3 c-5 a-3] \stemNeutral 
			    \once \override Stem #'transparent = ##t 
			    \once \override Flag #'transparent = ##t
			    f16-1
			    \bar "|."  \noBreak 
			    r16 f'16-3[ bes-5 f-3] d-1[ d-3 f-5 d-3] bes!-1[ bes-3 d-5 bes-3] 
			    \once \override Stem #'transparent = ##t 
			    \once \override Flag #'transparent = ##t
			    f16-1
			    \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseFive = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c'{
		    	    \clef treble
		    	    \cadenzaOn
			    r16 ees16-2[ d-1 ees-2] g-4[ g-2 f-1 g-2] \stemDown bes!-4[ bes-2 a-1 bes-2] ees!-4[ ees-2 d-1 ees-2] \stemNeutral 
			    \once \override Stem #'transparent = ##t 
			    \once \override Flag #'transparent = ##t
			    g16-4
			    \bar "|." \noBreak
			    s32
			    \key d \major
			    r16 d,16-1[ cis-2 d-1] fis-4[ fis-2 e-1 fis-2] a-4[ a-3 gis-2 a-3] d-5[ d-3 cis-2 d-3] fis4-5
			    \bar "|." \noBreak
			    s32
			    \set Staff.printKeyCancellation = ##f
			    \set Staff.lastKeySignature = #'()
			    \set Staff.keySignature = #'()
			    \key c \major
			    c,16-1-2[ e-3-4  d-1-2 f-3-4] e-1-2[ g-3-4 f-1-2 a-3-4] 
			    \stemDown g[ bes a c] b-1-2[ d-3-4 c8-2-3] \stemNeutral
			    \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseSix = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c'{
		    	    \clef treble
		    	    \cadenzaOn
		    	    \key bes \major
		    	    bes16-2[ d-4 c-1 ees-3] d-1[ f-3 ees-2 g-4] f-1[ aes-3 g-1 bes-3] \stemUp a-1[ c-3 bes8-2] \stemNeutral
		    	    \bar "|." \noBreak
		    	    s32
		    	    \set Staff.lastKeySignature = #'()
		    	    \set Staff.keySignature = #'()
		    	    \key g \major
		    	    e,16-1[ g-3 fis-2 a-4] g-1[ b-3 a-1 c-3]
		    	    \bar "|." \noBreak
		    	    s32
		    	    \key d \major
		    	    d16-5[ b-3 cis-4 a-2] b-3[ g-1 a-4 fis-2] g-3[ e-1 fis-3 d-1]
		    	    \bar "|." \noBreak
		    	    s32
		    	    \forceClef \sameSizeClef
		    	    \set Staff.lastKeySignature = #'()
		    	    \set Staff.keySignature = #'()
		    	    \key c \major
		    	    c8-1-2[ d-2-3 e-3-4] d-1-2[ e-2-3 f-3-4] e-1-2[ f-2-3 g-3-4] f-1-2[ g-2-3 a-3-4]
		    	    \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseSeven = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c'{
		    	    \clef treble
		    	    \cadenzaOn
		    	    \key d \major
		    	    d8-1[ e-2 fis-3] e-1[ fis-2 g-3] fis-2[ g-3 a-4] g-1[ a-2 b-3] \stemUp a-1[ b-2 c-3] \stemNeutral
		    	    \bar "|" \noBreak
		    	    b-1[ cis-2 d-3] cis-2[ d-3 e-4] d2-3
		    	    \bar "|." \noBreak
		    	    s32
		    	    \forceClef \sameSizeClef
		    	    \set Staff.lastKeySignature = #'()
		    	    \set Staff.keySignature = #'()
		    	    \key c \major
		    	    d,16-4[ c-3 b-2 c-1] f-4[ e-3 dis-2 e-1] a-4[ g-3 fis-2 g-1] d'-4[ c-3 b-2 c-1]
		    	    \bar "|" \noBreak
		    	    c'4-5
		    	    \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	    }
   }
}

scoreFingeringExerciseEight = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
		    	    \clef treble
		    	    \time 4/4
		    	    g16-3[ fis-2 e-1 fis-2] b-4[ a-3 gis-2 a-1] e'-4[ d-3 cis-2 d-1] g-4[ fis-3 e-2 fis-1]
		    	    \noBreak
		    	    \cadenzaOn
		    	    a4-5
		    	    \bar "|." \noBreak
		    	    \cadenzaOff
		    	    c,16-3[ bes-2 a-1 bes-2] ees-4[ d-3 cis-2 d-1] g-4[ f-3 e-2 f-1] bes4-4
		    	    \bar "|." \noBreak
		    	    bes16-4[ a-3 gis-2 a-5] g-4[ f-3 e-2 f-5] d-4[ c-3 b!-2 c-5] bes-4[ a-3 gis-2 a-5]
		    	    \bar "|" \noBreak
		    	    f4-1
		    	    \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseNine = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
	    	     	     \clef treble
	    	     	     \time 3/4
	        	     c8-3-1[ d32-4 c-3 b-2 c-1] c'8-5  
			     \bar "|." \noBreak
			     c,16-3[ bes-2 a-1 bes-2] g'8-5 
			     \bar "|." \noBreak
			     \set Staff.lastKeySignature = #'()
			     \set Staff.keySignature = #'()
			     d16-3[ cis-2  b-1 cis-2] a'8-5 
			     \bar "|."   \noBreak
			     e16-4[ d-3 cis!-2 d-1] a'8 
			     \bar "|." \noBreak
			     bes,16-2-2[ c-1-1 d-2-3 ees-3-4] f-4-5[ ees-3-4 d-2-3 c-1-1]
			     \once \override Stem #'transparent = ##t
			     \once \override Flag #'transparent = ##t
			     bes4-2-2
			     \bar "|." \noBreak
			     ees16-2-2[ f-1-1 g-2-3 aes-3-4] bes-4-5[ aes-3-4 g-2-3 f-1-1] 
			     \once \override Stem #'transparent = ##t 
			     \once \override Flag #'transparent = ##t
			     ees4-2-2
		    	     \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseTen = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
		    	    \clef treble
			      \time 4/4
			      c,16-1[ d-2 e-3 f-4] \stemDown g-1[ a-2 b-3 c-4] \stemNeutral d-5[ c b a] g-1[ f-4 e-3 d-2]
			      \noBreak
			      c16-1[ d-4 c-3 b-2] c-1[ e-2 g-3 c-5] g-3[ a-4 g-3 fis-2] g-1[ b-2 d-3 g-5]
			      \noBreak
			      cis,16-2[ e-3 a-5 g-4] f!-3[ e-2 d-1 c-2] b-1[ d-2 g-5 f-4] e-3[ d-2 c-1 b-2]
		    	      \bar "|"
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseEleven = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
		    	    \clef treble
			      \time 4/4
			      a16-1[ c-2 f-5 e] d[ c b-1 a-3]
			      gis16-2[ b-3 e-5 d-4] c!-3[ b-2 a-1 g-3]
			      \bar "|" \noBreak
			      fis16-2[ a-3 d-5 c] b[ a g f-2] 
			      \once \override Stem #'transparent = ##t 
			      \once \override Flag #'transparent = ##t
			      \once \override TextScript #'extra-offset = #'(2.1 . 3.8 )
			      e4*2-1-\markup{"&"}
			      \bar "|." \noBreak
			      \time 12/8
			      e8-1[ g-2 c-5] f,-1[ a-2 d-5] g,-1[ b e] a,[ c
			      \once \override TextScript #'extra-offset = #'(1.1 . 4.6 )
			      f]-\markup{"&"}
			      \bar "|." \noBreak 
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseTwelve = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
	    	     	     \clef treble
			     \time 18/8
			     \key ees \major
			     g8-1[ bes-3 ees-5] aes,-2[ c-3 f-5] bes,-2[ d-3 g-5] c,-1[ ees-3 aes-5] d,-1[ f-3 bes-5] ees,-2[ g-3 
			     \once \override TextScript #'extra-offset = #'(0.8 . 3.0 )
			     c-5]-\markup{"&"}
			     \bar "|." \noBreak
			     \set Staff.lastKeySignature = #'()
			     \set Staff.keySignature = #'()
			     \key c \major
			     \time 3/4
			     e,,16-1[ g-3 c-5 e,-1] f-2[ a-3 d-5 f,-1] g-2[ b-3 e-5 g,-1]
			     \bar "|."
			     \noBreak
			     \time 4/4
			     c'16-5[ g-2 e-1 c'-5] b-4[ f-2 d-1 b'-5] a-4[ e-2 c-1 a'-5]
			     \once \override Stem #'transparent = ##t
			     \once \override Flag #'transparent = ##t
			     \once \override TextScript #'extra-offset = #'(0.4 . 3.4 )
			     g4-4-\markup{"&"}
			     \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseThirdteen = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
		    	    \clef treble
			     c,16-1[ c'-5 b-4 c-5] a-3[ c-5 g-2 c-5] f,-1[ c'-5 e,-1 c'-5] d,-1[ c'-5 c,-1 c'-5]
			     \bar "|." \noBreak
			     e,16-2[ c-1 g'-3 e-2] c'-5[ g-3 e-2 c-1] a'-4[ f-1 c'-3 a-2] f'-5[ c-3 a-2 f-1]
			     \bar "|" \noBreak
			     ees'-4[ c-1 a'-4 ees-2] c'-5[ a-4 ees-2 c-1] d-2[ bes-1 f'-3 d-2] bes'-5[ f-3 d-2 bes-1]
			     \bar "|"
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseFourteen = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
		    	    \clef treble
			    ees-2[ bes-1 g'-4 ees-2] bes'-5[ g-4 ees-2 bes-1]  d-2[ bes-1 f'-3 d-2] bes'[ f d bes]
			    \bar "|." \noBreak
			    c,16-1[ e-2 g-3 c-5] d,-1[ f-2 b-4 d-5] e,-1[ g-2 c-4 e-5] f,-1[ a-2 c-3 f-5]
			    \bar "|" \noBreak
			    f,16-1[ a-2 d-4 f-5] g,-1[ b-2 d-4 f-5] a,-1[ c-2 d-4 e-5] d,-1[ fis-2 a-3 c-5]
			    \bar "|"
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseFifteen = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
		    	    \clef treble
			    b16-4[ g-2 d-1 b-2] g-1[ b-2 d-3 g-5] a,-1[ c-2 d-3 fis-5] b,-1[ d-2 f-4 g-5]
			    \bar "|" \noBreak
			    c,16-1[ e-2 g-3 c-5] a-1[ d-2 f-4 a-5] g,-1[ c-2 e-4 g-5] d,-1[ f-2 g-3 b-5]
			    \bar "|" \noBreak
			    \time 2/8
			    c,16-1[ e-2 g-3 c-5]
			    \bar "|." \noBreak
			    \key f \major
			    \time 4/4
			    f,16-1[ a-2 c-3 f-5] bes,-1[ d-2 f-3 bes-5] a,-1[ c-2 f-4 a-5] e,-1[ g-2 bes-3 e-5]
			    \bar "|"
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseSixteen = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
		    	    \clef treble
		    	    \key f \major
			    ees,16-1[ a-2 c-4 ees-5] fis,-1[ a-2 c-3 fis-5] g,-1[ bes!-2 d-3 g-5] g,-1[ b-2 d-4 fis-5]
			    \bar "|" \noBreak
		            \time 8/16
			    g,16-1[ bes!-2 c-3 e-5] f,[ a c-3  f-5]
			    \bar "|." \noBreak
			    \set Staff.lastKeySignature = #'()
			    \set Staff.keySignature = #'()
			    \key c \major
			    \time 4/4
			    f,16-1[ f'-4 a-5 g-4] f-3[ e-2 d-1 c-2] b!-1[ d-2 f-3 b-5] c,[ e g-3 c-5]
			    \bar "|." 
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseSeventeen = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c'{
		    	    \clef treble
		    	    \key c \major
		    	    \time 3/4
		    	    c16-1[ d'-5 c-3 b-2] c-1[ c'-5 b-4 a-3] g4-2
		    	    \bar "|." \noBreak
		    	    \time 4/4
		    	    c,,16-1[ e-2 g-3 c-1] e-2[ g-3 c-5 g-3] \stemDown e-2[ c-1 g-3 e-2] \stemNeutral c4-1 
		    	    \bar "|" \noBreak
		    	    d16-1[ f-2 b-4 d-1] f-2[ b-4 d-5 b-4] f-2[ d-1 b-4 f-2] d4-1
		    	    \bar "|" \noBreak
		    	    e''16-5[ b-3 gis-2 e-1] b-3[ gis-2 e-1 b-3] gis-2[ b-3 e-5 b-3] gis4-2
		    	    \bar "|"
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseEighteen = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c'{
		    	    \clef treble
		    	    \key c \major
		    	    \time 4/4
		    	    a''16-5[ e-3 c-2 a-1] f!-2[ d-1 b'-4 f-2] d'-5[ b-1 f'-3 d-2] b'-5[ f-1 d'-4 b-2]
		    	    \bar "|" \noBreak
		    	    f'16-5[ d-4 b-2 g-1] f-4[ d-3 b-2 g-1] f-4[ d-3 b-2 g-1] c4-3
		    	    \bar "|." \noBreak
		    	    \time 3/4
		    	    c16-1[ g'-3 e-2 c'-5] g-1[ e'-4 c-2 g'-5] e-1[ c'-4 g-2 e'-5]
		    	    \bar "|" \noBreak
		    	    a,,,16-1[ e'-3 cis-2 a'-5] e-1[ cis'-4 a-1 e'-3] cis-2[ a'-5 e-1 cis'-4]
		    	    \bar "|"
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseNineteen = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c'''{
		    	    \clef treble
		    	    \time 3/4
		    	    \key c \major
		    	    d16-5[ f,!-2 a-3 d,-1] f-5[ a,-2 d-4 f,!-1] a-5[ d,-2 f-4 a,-1]
		    	    \bar "|" \noBreak
		    	    bes-2[ f'-5 d-1 bes'-4] f-1[ d'-4 bes-2 f'-5] d-1[ bes'-4 f-2 d'-5]
		    	    \bar "|" \noBreak
		    	    \time 4/4
		    	    b!-4[ d-5 aes-2 b!-5] f-2[ aes!-4 d,-1 f-4] b,!-1[ d-5 aes-2 b-4] f4-1
		    	    \bar "|." \noBreak
		    	    cis''16-4[ e-5 bes-2 cis!-4] g-1[ bes-4 e,-1 g-5] cis,-2[ e-5 bes-2 cis!-4] g4-1
		    	    \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseTwenty = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
		    	    \clef treble
		    	    \time 4/4
		    	    \key c \major
		    	    a'16-4[ c!-5 fis,-2 a-5] ees-2[ fis!-4 c-2 ees-4] a,-1[ c-5 fis,-2 a-5] ees4-2
		    	    \bar "|." \noBreak
		    	    \time 2/4
		    	    \phrasingSlurDown
		    	    \override TextScript #'avoid-slur = #'inside
		    	    \override TextScript #'outside-staff-priority = ##f
		    	    c'16-1[\( ees-2 fis-3 a-4]_\markup {\smaller bis}  c-5[ a-4 fis-3 ees!-2]\)
		    	    \bar "|" \noBreak
		    	    \phrasingSlurDown
		    	    b!16-1[\( d-2 f!-3 aes-4]_\markup {\smaller bis} b!-5[ aes-4 f-3 d-2]\)
		    	    \bar "|" \noBreak
		    	    \phrasingSlurDown
		    	    bes16-1[\( des-2 e!-3 g-4]_\markup {\smaller bis} bes-5[ g-4 e-3 des!-2]\)
		    	    \bar "|" \noBreak
		    	    \phrasingSlurDown
		    	    a!16-1[\( c-2 ees-3 ges-4]_\markup {\smaller bis} a!-5[ ges-4 ees-3 c-2]\)
		    	    \bar "|"
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseTwentyOne = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
	    	     	     \clef treble
	    	     	     \time 2/4
	    	     	     \phrasingSlurDown
	    	     	     \override TextScript #'avoid-slur = #'inside
	    	     	     \override TextScript #'outside-staff-priority = ##f
	    	     	     aes16-1[\( b!-2 d-3 f!-4]_\markup {\smaller bis} aes-5[ f d b!]\)
	    	     	     \bar "|" \noBreak
	    	     	     \phrasingSlurDown
	    	     	     g16-1[\( bes-2 des-3 e!-4]_\markup {\smaller bis} g-5[ e des bes]\)
	    	     	     \bar "|" \noBreak
	    	     	     \override TextScript #'extra-offset = #'(2.1 . 3.8 )
	    	     	     \cadenzaOn
	    	     	     \hideNotes
	    	     	     c8-\markup{"&"} c8
	    	     	     \stopStaff
	    	     	     \override TextScript #'extra-offset = #'(1.6 . 7.0 )
	    	     	     c-\markup{\column{
		    	    	    \line{"downward 9 or 10 bars longer, keeping down the thumb"}
		    	    	    \line{"and every finger as long as possible; being one of the best"}
		    	    	    \line{"exercises for opening the hand."}
		    	    	    }
		    	    	    }
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseTwentyTwo = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
	    	     	     \clef treble		
	    	     	     \key c \major
	    	     	     \time 2/4
	    	     	     c,16-1[ c'-5 d,-1 d'-5] 
	    	     	     \beamUp
	    	     	     e,-1[ e'-5 f,-1 f'-5] |
	    	     	     \bar "|." \noBreak
	    	     	     \time 3/4
	    	     	     c,16-1-1[ c'-5-5 cis,-1-1 cis'-5-4] d,-1-1[ d'-5-5 dis,-1-1 dis'-5-4] e,-1-1[ e'-5-5 f,-1-1 f'-5-5] |
	    	     	     \bar "|." \noBreak
	    	     	     \time 4/4
	    	     	     \stemDown
	    	     	     <c, c'>4-1-5 <d d'>-1-5 <e e'>-1-5 <f f'>-1-5 |
	    	     	     \bar "|." \noBreak
	    	     	     \stopStaff
	    	     	     \hideNotes
	    	     	     \once \override TextScript #'extra-offset = #'(1.1 . 7.7 )
	    	     	     c'4-\markup{\column{ \smaller 
		    	    	    \line{"But when"}
		    	    	    \line{"wanted"}
		    	    	    \line{"legato, thus:"}
		    	    	    }
		    	     }
		    	     \repeat unfold 3 {c4}
		    	     \noBreak
		    	     \startStaff \unHideNotes
		    	     \phrasingSlurUp \stemDown
		    	     <c, c'>4-1-4\( <d d'>^1^\markup{ \finger {5-4} } <e e'>^1^\markup { \finger "5-4" } <f f'>-1-5\) 
		    	     \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseTwentyThree = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c'{
	    	     	     \key c \major
	    	     	     \time 4/4
	    	     	     \stemUp
	    	     	     <c e>16-1-3[ <d f>-2-4 <e g>-3-5 <f a>-1-3]
	    	     	     \stemDown
	    	     	     <g b>-2-4[ <a c>-3-5 <b d>-1-3 <c e>-2-4]
	    	     	     \stemDown
	    	     	     <d f>-3-5[ <c e>-2-4 <b d>-1-3 <a c>-3-5]
	    	     	     \stemUp
	    	     	     <g b>-2-4[ <f a>-1-3 <e g>-3-5 <d f>-2-4]
	    	     	     \noBreak
	    	     	     \time 1/4
	    	     	     \once \override Stem #'transparent = ##t
	    	     	     \once \override Flag #'transparent = ##t
	    	     	     <c e>4-1-3
	    	     	     \bar "|." \noBreak
	    	     	     \time 3/4
	    	     	     \stemDown
	    	     	     <c' e>16-1-2[ <f a>-3-5 <e g>-2-4 <d f>-1-3]
	    	     	     <c e>-1-2[ <f a>-3-5 <e g>-2-4 <d f>-1-3]
	    	     	     \once \override Stem #'transparent = ##t
	    	     	     \once \override Flag #'transparent = ##t
	    	     	     <c e>4-1-2 
	    	     	     \bar "|." \noBreak
	    	     	     \key f \major
	    	     	     <bes d>16-2-3[ <c ees>-1-4 <d f>-3-5 <c ees>-1-4]
	    	     	     <bes d>-2-3[ <c ees>-1-4 <d f>-3-5 <c ees>-1-4] <bes d>4-2-3 |
	    	     	     \bar "|." \noBreak
	    	     	     \time 5/4
	    	     	     <f c'>16-1-3 <a f'>-2-5 <f c'>16-1-3 <a f'>-2-5
	    	     	     <g e'>-1-4 <bes! g'>-2-5 <g e'> <bes g'>
	    	     	     <a f'>-1-4 <c a'>-2-5 <a f'> <c a'>
	    	     	     <bes! f'>-1-3 <d bes'>-2-5 <bes f'> <d bes'>
	    	     	     <a f'>-1-4 <c a'>-2-5 <a f'> <c a'>
	    	     	     \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseTwentyFour = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
	    	     	     \time 4/4
	    	     	     \key d \major
	    	     	     <d fis>16-1-3[ <e g>-2-4 <fis a>-3-5 <e g>-2-4]
	    	     	     <d fis>-1-3[ <e g>-2-4 <d fis>-1-3 <cis e>-2-4]
	    	     	     <b d>-1-3[  <cis e>-2-4 <d fis>-3-5 <cis e>-2-4] 
	    	     	     <b d>-1-3[ <b d>-1-3 <cis e>-2-4 <d fis>-3-5]
	    	     	     \noBreak
	    	     	     <e g>-1-3[ <fis a>-2-4 <g b>-3-5 <fis a>-2-4]
	    	     	     <e g>-1-3[ <fis a>-3-5 <e g>-2-4 <d fis>-1-3]
	    	     	     <cis e>-3-5[ <b d>-2-4 <a cis>-1-3 <b d>-2-4] 
	    	     	     <a cis>4-1-3
	    	     	     \bar "|." \noBreak
	    	     	     \set Staff.lastKeySignature = #'()
	    	     	     \set Staff.keySignature = #'()
	    	     	     \key c \major
	    	     	     <c, e>8-|-1-3[^Staccato <d f>-|-1-3 <e g>-|-1-3 <f a>-|-1-3]
	    	     	     <g b>-|-1-3[ <a c>-| <b d>-| <c e>-|] 
	    	     	     \noBreak
	    	     	     <c, e>8-|-2-4[^"thus:"^"or" <d f>-|-2-4 <e g>-|-2-4 <f a>-|-2-4]
	    	     	     <g b>-|-2-4[ <a c>-| <b d>-| <c e>-|] |
	    	     	     \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseTwentyFive = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
	    	     	     \key c \major
	    	     	     \time 4/4
	    	     	     \stemDown
	    	     	     <g e'>8-1-4[\(_legato <a f'>-2-5 <f d'>-1-4 <g e'>-2-5]
	    	     	     <e c'>-1-4[ <f d'>-2-5]
	    	     	     <d b'>4-1-4\) 
	    	     	     \bar "|." \noBreak
	    	     	     \time 5/4
	    	     	     <b' g'>8-1-5[\( <c e>-2-4 <a f'>-1-5 <b d>-2-4]
	    	     	     <g e'>-1-5[ <a c>-2-4 <f d'>-1-5 <g b>-2-4]
	    	     	     \once \override Stem #'transparent = ##t
	    	     	     \once \override Flag #'transparent = ##t
	    	     	     <e c'>4-1-5\)
	    	     	     \bar "|." \noBreak
	    	     	     \grace s32
		    	     \forceClef \sameSizeClef
	    	     	     \key bes \major
	    	     	     \time 4/4
	    	     	     \override TupletNumber #'stencil = ##f
	    	     	     \times 2/3 {<bes' d>8-2-4[ <a c>-1-3 <bes d>-2-4]}
	    	     	     \times 2/3 {<c ees>-1-3 <d f>-2-4 <ees g>-3-5}
	    	     	     \times 2/3 {<d f>-2-4 <ees g>-3-5 <d f>-2-4}
	    	     	     \times 2/3 {<c ees>-1-3 <bes d>-3-5 <a c>-2-4}
	    	     	     \noBreak
	    	     	     \times 2/3 {<g bes>-1-3 <a c>-2-4 <bes d>-3-5}
	    	     	     \times 2/3 {<c ees>-1-3 <d f>-2-4 <ees g>-3-5}
	    	     	     \times 2/3 {<bes d>-2-4 <c ees>-3-5 <bes d>-2-4}
	    	     	     \times 2/3 {<a c>-1-3 <bes d>-2-4 <a c>-1-3}
	    	     	     \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	  }
   }
}

scoreFingeringExerciseTwentySix = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c'{
	    	     	     \key bes \major
	    	     	     \time 1/4
	    	     	     <f f'>4-1-5\(^\markup{\smaller legato}
	    	     	     \time 4/4
	    	     	     \stemUp
	    	     	     <d bes'>2-1-2 <ees c'>4-1-3 <f f'>-1-5
	    	     	     <d bes'>2-1-2 <ees c'>4-1-3 <f f'>-1-5\)
	    	     	     \bar "|." \noBreak
	    	     	     \grace s32
	    	     	     \forceClef \sameSizeClef
	    	     	     \set Staff.lastKeySignature = #'()
	    	     	     \set Staff.keySignature = #'()
	    	     	     \key a \major
	    	     	     \time 6/4
	    	     	     <a, e'>16-1-3[ <cis a'>-2-5 <b gis'>-1-4 <cis a'>-2-5 <b gis'>-1-4 <cis a'>-2-5]
	    	     	     <a e'>-1-3[ <cis a'> <b gis'> <cis a'> <b gis'> <cis a'>]
	    	     	     <d b'>-1-4[ <fis d'>-5-2 <e cis'>-1-4 <fis d'>-5-2 <e cis'>-1-4 <fis d'>-5-2]
	    	     	     \stemNeutral
	    	     	     <gis d'>-1-3[ <b gis'>-2-5 <a d>-1-3 <b gis'>-2-5 <a d>-1-3 <b gis'>-2-5]
	    	     	     \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##f
	  }
   }
}

scoreFingeringExerciseTwentySeven = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c'''{
	    	     	     \key a \major
	    	     	     \time 4/4
	    	     	     <cis e>16-3-5[ <b d>-2-4 <a cis>-1-3 <gis b>-3-5]
	    	     	     <fis a>-2-4[ <e gis>-1-3 <d fis>-1-2 <cis e>-3-5]
	    	     	     <b d>-2-4[ <a cis>-1-3 <gis b>-3-5 <fis a>-2-4]
	    	     	     <e gis>-1-3[ <d fis>-1-2 <cis e>-3-5 <b d>-2-4]
	    	     	     \noBreak
	    	     	     <a cis>-1-3[ <b d>-2-4 <cis e>-3-5 <d fis>-1-2]
	    	     	     <e gis>-1-3[ <fis a>-2-4 <gis b>-3-5 <fis a>-2-4]
	    	     	     <e gis>-1-3[ <d fis>-1-2 <cis e>-3-5  <d b>-1-2] 
	    	     	     \once \override Stem #'transparent = ##t 
	    	     	     \once \override Flag #'transparent = ##t
	    	     	     <cis a>4-1-3 |
	    	     	     \bar "|." \noBreak
	    	     	     \grace s32
	    	     	     \forceClef \sameSizeClef
	    	     	     \set Staff.lastKeySignature = #'()
	    	     	     \set Staff.keySignature = #'()
	    	     	     \key d \major
	    	     	     \time 5/4
	    	     	     <d' fis>16-1-4[ <cis e>-2-3 <d fis>-1-4 <cis e>-2-3]
	    	     	     <d fis>-1-4[ <fis a>-3-5 <e g>-2-4 <d fis>-1-3]
	    	     	     <cis e>-3-5[ <b d>-2-4 <a cis>-1-3 <g b>-1-2]
	    	     	     <fis a>-3-5[ <e g>-2-4 <d fis>-1-3 <e g>-2-4]
	    	     	     <d fis>4-1-3
	    	     	     \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##f
	  }
   }
}

scoreFingeringExerciseTwentyEight = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c'{
	    	     	     \key c \major
	    	     	     \time 1/4
	    	     	     << {c''4-5~} \\ {e,4-2 }   >>
	    	     	     \time 4/4
	    	     	     << {c'4 b2^\markup { \finger "4 - 5" } a4-\markup{\finger "4-"} ~} \\ {d,2-1 c2-1} >>
	    	     	     \noBreak
	    	     	     << {a'4-5 g2^\markup { \finger "4 - 5" } f!4-\markup{\finger "4-"} ~} \\ {b,2-1 a2-1}  >>
	    	     	     << {f'4-5 dis4-4 e2-5~} \\ {g,2._\markup { \finger "1 - 2" } e4-1} >>
	    	     	     << {e'4 cis4-4 d2-5~} \\ { f,!2.-2 d4-1} >>
	    	     	     << {d'4 b4-4 c!2-5} \\ { e,1_\markup { \finger "2 - 1" } } >>
	    	     	     \bar "|."
	    	     	     \noBreak
	    	     	     <c e>4^\markup {\finger "3"}_\markup {\finger "1"}\(
	    	     	     <d f>^\markup {\finger "4 3"}_\markup {\finger "2 1"}
	    	     	     <e g>^\markup {\finger "4 3"}_\markup {\finger "2 1"}
	    	     	     <f a>^\markup {\finger "4 3"}_\markup {\finger "2 1"}
	    	     	     <g b>^\markup {\finger "4 3"}_\markup {\finger "2 1"}
	    	     	     <a c>^\markup {\finger "4 3"}_\markup {\finger "2 1"}
	    	     	     <b d>^\markup {\finger "4"}_\markup {\finger "2"}
	    	     	     <c e>^\markup {\finger "5"}_\markup {\finger "3"}\)
	    	     	     \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##f
	  }
   }
}

scoreFingeringExerciseTwentyNine = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
	    	     	     \key c \major
	    	     	     \time 4/4
	    	     	     << {s4 e4-4-5 d2-4-5~} \\ {s4 c4~ c2 } \\ { s1} \\ {s4 e,4-1\( f-1 fis-2} >>
	    	     	     << { <d' b>-3-5 g2-5 f!4-5} \\ { s1} \\ {s1} \\ {g,4-1 <g b>-2-1 <a c>-3-1 <b d~>-4-2} >>
	    	     	     << {e2-5 d-5 } \\ { s1} \\ {s1} \\ {<g, d'>4-4-1 <a c~>-4-2 <f c'>-1 <g b>-4-2} >>
	    	     	     << {c1-5} \\ {s1} \\{s1}\\{<g e>-2-1\)} >>
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

partOneFingeringRightHand = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{  }
    \paragraph{ \scoreFingeringExerciseOne " " \scoreFingeringExerciseTwo }
    \paragraph{ \scoreFingeringExerciseThree }
    \paragraph{ \scoreFingeringExerciseFour }
    \paragraph{ \scoreFingeringExerciseFive }
    \paragraph{ \scoreFingeringExerciseSix }
    \paragraph{ \scoreFingeringExerciseSeven }
    \paragraph{ \scoreFingeringExerciseEight }
    \paragraph{ \scoreFingeringExerciseNine }  
    \paragraph{ \scoreFingeringExerciseTen }
    \paragraph{ \scoreFingeringExerciseEleven }
    \paragraph{ \scoreFingeringExerciseTwelve }
    \paragraph{ \scoreFingeringExerciseThirdteen }
    \paragraph{ \scoreFingeringExerciseFourteen }
    \paragraph{ \scoreFingeringExerciseFifteen }
    \paragraph{ \scoreFingeringExerciseSixteen }
    \paragraph{ \scoreFingeringExerciseSeventeen }
    \paragraph{ \scoreFingeringExerciseEighteen }
    \paragraph{ \scoreFingeringExerciseNineteen }
    \paragraph{ \scoreFingeringExerciseTwenty }
    \paragraph{ \scoreFingeringExerciseTwentyOne }
    \paragraph{ \scoreFingeringExerciseTwentyTwo }
    \paragraph{ \scoreFingeringExerciseTwentyThree }
    \paragraph{ \scoreFingeringExerciseTwentyFour }
    \paragraph{ \scoreFingeringExerciseTwentyFive }
    \paragraph{ \scoreFingeringExerciseTwentySix }
    \paragraph{ \scoreFingeringExerciseTwentySeven }
    \paragraph{ \scoreFingeringExerciseTwentyEight }
    \paragraph{ \scoreFingeringExerciseTwentyNine }
    \paragraph{  }
}
}
