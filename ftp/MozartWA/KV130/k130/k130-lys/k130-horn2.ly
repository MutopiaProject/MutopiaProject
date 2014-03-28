% -*- LilyPond -*-

\version "2.18.2"

\include "defs.ly"

\include "horn2-i.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"french horn"
	\set Staff.instrumentName = \markup { \center-column { "Corno II"
							  "in C alto." } }

	\time 4/4

	\hornIIFirstMov
    >>

    
  \midi {
    \tempo 4 = 124
    }



    \header {
	piece = "Allegro."
    }

    \layout { }
}

\include "horn2-ii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
	\transposition f' 
        \set Staff.midiInstrument = #"french horn"
	\set Staff.instrumentName = \markup { \center-column { "Corno II"
							  "in F." } }

	\time 3/8

	\hornIISecondMov
    >>

    
  \midi {
    \tempo 4 = 42
    }



    \header {
	piece = "Andantino grazioso."
    }

    \layout { }
}

\include "horn2-iii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"french horn"
	\set Staff.instrumentName = \markup { \center-column { "Corno II"
							  "in C alto." } }

	\time 3/4
	\partial 4

	\hornIIThirdMov
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

\include "horn2-iv.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"french horn"
	\set Staff.instrumentName = \markup { \center-column { "Corno II"
							  "in C alto." } }

	\time 4/4

	\hornIIFourthMov
    >>

    
  \midi {
    \tempo 4 = 180
    }



    \header {
	piece = "Allegro molto."
    }

    \layout { }
}

