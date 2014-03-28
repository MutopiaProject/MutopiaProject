% -*- LilyPond -*-

\version "2.18.2"

\include "defs.ly"

\include "violin2-i.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"string ensemble 1"
	\set Staff.instrumentName = #"Violino II" 

	\time 4/4

	\violinIIFirstMov
    >>

    
  \midi {
    \tempo 4 = 124
    }



    \header {
	piece = "Allegro."
    }

    \layout { }
}

\include "violin2-ii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"string ensemble 1"
	\set Staff.instrumentName = #"Violino II" 

	\time 3/8

	\violinIISecondMov
    >>

    
  \midi {
    \tempo 4 = 54
    }



    \header {
	piece = "Andantino grazioso."
    }

    \layout { }
}

\include "violin2-iii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"string ensemble 1"
	\set Staff.instrumentName = #"Violino II" 

	\time 3/4
	\partial 4

	\violinIIThirdMov
	\context Voice = "markings" { \markingsIII }
	\context Voice=markingsBis { \markingsIIIbis }
    >>

    
  \midi {
    \tempo 4 = 130
    }



    \header {
	piece = "MENUETTO."
    }

    \layout { }
}

\include "violin2-iv.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"string ensemble 1"
	\set Staff.instrumentName = #"Violino II" 

	\time 4/4

	\violinIIFourthMov
    >>

    
  \midi {
    \tempo 4 = 180
    }



    \header {
	piece = "Allegro molto."
    }

    \layout { }
}
