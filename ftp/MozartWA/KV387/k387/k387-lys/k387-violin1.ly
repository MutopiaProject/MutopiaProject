\version "2.16.0"

\include "defs.ily"


\include "violin1-i.ily"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"
	\set Staff.instrumentName = "Violino I."
	\globalI

	\KeyI
	\markingsI
	\violinIFirstMov
    >>

    
  \midi {
    \tempo 4 = 120
    }



    \layout { }
}


\include "violin1-ii.ily"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"
	\set Staff.instrumentName = "Violino I."
	\globalII

	\KeyII
	\markingsII
	\violinISecondMov
    >>

    
  \midi {
    \tempo 4 = 120
    }



    \layout { }
}


\include "violin1-iii.ily"


\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Score.skipBars = ##t
        \set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"
	\set Staff.instrumentName = "Violino I."
	\globalIII

	\KeyIII
	\markingsIII
	\violinIThirdMov
    >>

    
  \midi {
    \tempo 4 = 50
    }



    \layout { }
}


\include "violin1-iv.ily"


\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Score.skipBars = ##t
        \set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"
	\set Staff.instrumentName = "Violino I."
	\globalIV

	\KeyIV
	\markingsIV
	\violinIFourthMov	
    >>

    
  \midi {
    \tempo 2 = 120
    }



    \layout { }
}
