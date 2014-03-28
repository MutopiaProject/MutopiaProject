\version "2.16.0"

\include "defs.ily"

\header {
    instrument = "Violin"
}

\layout {
    \compressFullBarRests
}

\include "clarinet-i.ily"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\markingsI

	 \transpose c' bes \clarinetFirstMov
    >>

    
  \midi {
    \tempo 4 = 70
    }



    \layout { }
}


\include "clarinet-ii.ily"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\markingsII

	 \transpose c' bes \clarinetSecondMov
    >>

    
  \midi {
    \tempo 4 = 120
    }



    \layout { }
}


\include "clarinet-iii.ily"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\markingsIII

	 \transpose c' bes \clarinetThirdMov
    >>

    
  \midi {
    \tempo 4 = 120
    }



    \layout { }
}
