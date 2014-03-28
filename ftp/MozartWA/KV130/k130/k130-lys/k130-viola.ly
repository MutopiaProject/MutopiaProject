% -*- LilyPond -*-

\version "2.18.2"

\include "defs.ly"

\include "viola-i.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"string ensemble 1"
	\set Staff.instrumentName = #"Viola" 

	\time 4/4

	\violaFirstMov
    >>

    
  \midi {
    \tempo 4 = 124
    }



    \header {
	piece = "Allegro."
    }

    \layout { }
}

\include "viola-ii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"string ensemble 1"
	\set Staff.instrumentName = #"Viola" 

	\time 3/8

	\violaSecondMov
    >>

    
  \midi {
    \tempo 4 = 42
    }



    \header {
	piece = "Andantino grazioso."
    }

    \layout { }
}

\include "viola-iii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"string ensemble 1"
	\set Staff.instrumentName = #"Viola" 

	\time 3/4
	\partial 4

	\violaThirdMov
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

\include "viola-iv.ly"

\score {
    \context Staff <<
        \override Score.BarNumber.padding = #3
	\set Score.skipBars = ##t
        \set Staff.midiInstrument = #"string ensemble 1"
	\set Staff.instrumentName = #"Viola" 

	\time 4/4

	\violaFourthMov
    >>

    
  \midi {
    \tempo 4 = 180
    }



    \header {
	piece = "Allegro molto."
    }

    \layout { }
}
