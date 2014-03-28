% -*- LilyPond -*-

\version "2.18.2"

\include "defs.ly"

\include "basso-i.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"string ensemble 1"
	\set Staff.instrumentName = #"Basso" 

	\time 4/4

	\bassoFirstMov
    >>

    
  \midi {
    \tempo 4 = 124
    }



    \header {
	meter = "Allegro."
    }

    \layout { }
}

\include "basso-ii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"string ensemble 1"
	\set Staff.instrumentName = #"Basso" 

	\time 3/8

	\bassoSecondMov
    >>

    
  \midi {
    \tempo 4 = 42
    }



    \header {
	piece = "Andantino grazioso."
    }

    \layout { }
}

\include "basso-iii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"string ensemble 1"
	\set Staff.instrumentName = #"Basso" 

	\time 3/4
	\partial 4

	\bassoThirdMov
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

\include "basso-iv.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"string ensemble 1"
	\set Staff.instrumentName = #"Basso" 

	\time 4/4

	\bassoFourthMov
    >>

    
  \midi {
    \tempo 4 = 180
    }



    \header {
	piece = "Allegro molto."
    }

    \layout { }
}
