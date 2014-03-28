% -*- LilyPond -*-

\version "2.18.2"

\include "defs.ly"

\include "horn3-i.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
	\transposition f' 
        \set Staff.midiInstrument = #"french horn"
	\set Staff.instrumentName = \markup { \center-column { "Corno I"
							  "in F." } }

	\time 4/4

	\hornIIIFirstMov
    >>

    
  \midi {
    \tempo 4 = 124
    }



    \header {
	piece = "Allegro."
    }

    \layout { }
}

\include "horn3-ii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
	\transposition ais 
        \set Staff.midiInstrument = #"french horn"
	\set Staff.instrumentName = \markup { \center-column { "Corno I"
							  "in F." } }

	\time 3/8

	\hornIIISecondMov
    >>

    
  \midi {
    \tempo 4 = 54
    }



    \header {
	piece = "Andantino grazioso."
    }

    \layout { }
}

\include "horn3-iii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
	\transposition f' 
        \set Staff.midiInstrument = #"french horn"
	\set Staff.instrumentName = \markup { \center-column { "Corno I"
							  "in F." } }

	\time 3/4
	\partial 4

	\hornIIIThirdMov
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

\include "horn3-iv.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
	\transposition f' 
        \set Staff.midiInstrument = #"french horn"
	\set Staff.instrumentName = \markup { \center-column { "Corno I"
							  "in F." } }

	\time 4/4

	\hornIIIFourthMov
    >>

    
  \midi {
    \tempo 4 = 180
    }



    \header {
	piece = "Allegro molto."
    }

    \layout { }
}
