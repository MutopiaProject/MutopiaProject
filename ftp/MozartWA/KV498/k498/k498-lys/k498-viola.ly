\version "2.16.0"

\include "defs.ly"

\header {
    instrument = "Viola"
}

\layout {
    \compressFullBarRests
}

\include "viola-i.ly"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"viola"

	\markingsI

	\violaFirstMov
    >>

    
  \midi {
    \tempo 4 = 70
    }



    \layout { }
}


\include "viola-ii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"viola"

	\markingsII

	\violaSecondMov
    >>

    
  \midi {
    \tempo 4 = 120
    }



    \layout { }
}


\include "viola-iii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"viola"

	\markingsIII

	\violaThirdMov
    >>

    
  \midi {
    \tempo 4 = 120
    }



    \layout { }
}
