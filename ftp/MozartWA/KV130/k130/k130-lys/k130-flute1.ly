% -*- LilyPond -*-

\version "2.18.2"

\include "defs.ly"

\include "flute1-i.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"flute"
	\set Staff.instrumentName = #"Flauto I" 

	\time 4/4

	\fluteIFirstMov
    >>

    
  \midi {
    \tempo 4 = 124
    }



    \header {
	piece = "Allegro."
    }

    \layout { }
}

\include "flute1-ii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"flute"
	\set Staff.instrumentName = #"Flauto I" 

	\time 3/8

	\fluteISecondMov
    >>

    
  \midi {
    \tempo 4 = 42
    }



    \header {
	piece = "Andantino cantabile."
    }

    \layout { }
}

\include "flute1-iii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"flute"
	\set Staff.instrumentName = #"Flauto I" 

	\time 3/4
	\partial 4

	\fluteIThirdMov
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

\include "flute1-iv.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"flute"
	\set Staff.instrumentName = #"Flauto I" 

	\time 4/4

	\fluteIFourthMov
    >>

    
  \midi {
    \tempo 4 = 180
    }



    \header {
	piece = "Allegro molto."
    }

    \layout { }
}
