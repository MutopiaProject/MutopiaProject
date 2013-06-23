\version "2.16.0"

\include "defs.ly"

\header {
    instrument = "Clarinetto in B."
}

\layout {
    \compressFullBarRests
}

\include "clarinet-i.ly"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"clarinet"
	\transposition ais 

	\markingsI

	\clarinetFirstMov
    >>

    
  \midi {
    \tempo 4 = 70
    }



    \layout { }
}


\include "clarinet-ii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"clarinet"
	\transposition ais 

	\markingsII

	\clarinetSecondMov
    >>

    
  \midi {
    \tempo 4 = 120
    }



    \layout { }
}


\include "clarinet-iii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"clarinet"
	\transposition ais 

	\markingsIII

	\clarinetThirdMov
    >>

    
  \midi {
    \tempo 4 = 120
    }



    \layout { }
}
