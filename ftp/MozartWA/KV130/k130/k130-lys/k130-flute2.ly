% -*- LilyPond -*-

\version "2.18.2"

\include "defs.ly"

\include "flute2-i.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"flute"
	\set Staff.instrumentName = #"Flauto II" 

	\time 4/4

	\fluteIIFirstMov
    >>

    
  \midi {
    \tempo 4 = 124
    }



    \header {
	piece = "Allegro."
    }

    \layout { }
}

\include "flute2-ii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"flute"
	\set Staff.instrumentName = #"Flauto II" 

	\time 3/8

	\fluteIISecondMov
    >>

    
  \midi {
    \tempo 4 = 42
    }



    \header {
	piece = "Andantino cantabile."
    }

    \layout { }
}

\include "flute2-iii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"flute"
	\set Staff.instrumentName = #"Flauto II" 

	\time 3/4
	\partial 4

	\fluteIIThirdMov
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

\include "flute2-iv.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"flute"
	\set Staff.instrumentName = #"Flauto II" 

	\time 4/4

	\fluteIIFourthMov
    >>

    
  \midi {
    \tempo 4 = 180
    }



    \header {
	piece = "Allegro molto."
    }

    \layout { }
}
