% -*- LilyPond -*-

\version "2.18.2"

\include "defs.ly"

\include "violin1-i.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"string ensemble 1"
	\set Staff.instrumentName = #"Violino I" 

	\time 4/4

	\violinIFirstMov
    >>

    
  \midi {
    \tempo 4 = 124
    }



    \header {
	piece = "Allegro."
    }

    \layout { }
}

\include "violin1-ii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"string ensemble 1"
	\set Staff.instrumentName = #"Violino I" 

	\time 3/8

	\violinISecondMov
    >>

    
  \midi {
    \tempo 4 = 54
    }



    \header {
	piece = "Andantino grazioso."
    }

    \layout { }
}

\include "violin1-iii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"string ensemble 1"
	\set Staff.instrumentName = #"Violino I" 

	\time 3/4
	\partial 4

	\violinIThirdMov
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

\include "violin1-iv.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"string ensemble 1"
	\set Staff.instrumentName = #"Violino I" 

	\time 4/4

	\violinIFourthMov
    >>

    
  \midi {
    \tempo 4 = 180
    }



    \header {
	piece = "Allegro molto."
    }

    \layout { }
}
