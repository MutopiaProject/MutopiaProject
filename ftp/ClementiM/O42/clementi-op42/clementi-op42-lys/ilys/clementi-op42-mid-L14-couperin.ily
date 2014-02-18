\version "2.16.1"
\include "articulate.ly"
\include "clementi-op42-mus-L14-couperin.ily"

% LESSON XIV.  Le Révelmatin by Couperin.

\book {   \bookOutputName "clementi-op42-les14-couperin-vivace"
  \score{ % LESSON XIV: Reveill. MIDI
	\unfoldRepeats \articulate
	  \new PianoStaff <<
	    \new Staff = "upper" \LessonXIVUpper
	    \new Staff = "lower" \LessonXIVLower
	  >>
	  \midi { }
  }
}

\book {   \bookOutputName "clementi-op42-les14-couperin-vivace-ornam"
  \score{       %-------LESSON XIV - SAMPLE ORNAMENTS MIDI
    \new PianoStaff {
      \relative c' <<
        \new Staff {
	  \time 12/8
	  \tempo 4=120
	  \key f \major
		f8 f[ a bes] c32-4( bes-3 c16-4 d c) c8 g a
		bes32-3[ a-2 bes16-3 c8-4 bes-3] bes-4[( a32-3 bes-4 a16-3 g8-2]) a-3[ bes a]
		a16-4[ g-3 a-4 g-3 f-2~] f2
        }
      >>
    }
    \midi { }
  }
}
