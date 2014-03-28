% -*- LilyPond -*-

\version "2.18.2"

\include "defs.ly"

\include "horn1-i.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"french horn"
	\set Staff.instrumentName = \markup { \center-column { "Corno I"
							  "in C alto." } }

	\time 4/4

	\hornIFirstMov
    >>

    
  \midi {
    \tempo 4 = 124
    }



    \header {
	piece = "Allegro."
    }

    \layout { }
}

\include "horn1-ii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
	\transposition f' 
        \set Staff.midiInstrument = #"french horn"
	\set Staff.instrumentName = \markup { \center-column { "Corno I"
							  "in F." } }

	\time 3/8

	\hornISecondMov
    >>

    
  \midi {
    \tempo 4 = 54
    }



    \header {
	piece = "Andantino grazioso."
    }

    \layout { }
}

\include "horn1-iii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"french horn"
	\set Staff.instrumentName = \markup { \center-column { "Corno I"
							  "in C alto." } }

	\time 3/4
	\partial 4

	\hornIThirdMov
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

\include "horn1-iv.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"french horn"
	\set Staff.instrumentName = \markup { \center-column { "Corno I"
							  "in C alto." } }

	\time 4/4

	\hornIFourthMov
    >>

    
  \midi {
    \tempo 4 = 180
    }



    \header {
	piece = "Allegro molto."
    }

    \layout { }
}
