\version "2.16.0"

\include "defs.ily"


\include "cello-i.ily"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"cello"
	\set Staff.instrumentName = "Cello"
	\globalI

	\KeyI
	\markingsI
	\celloFirstMov
    >>

    
  \midi {
    \tempo 4 = 120
    }



    \layout { }
}


\include "cello-ii.ily"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"cello"
	\set Staff.instrumentName = "Cello"
	\globalII

	\KeyII
	\markingsII
	\celloSecondMov
    >>

    
  \midi {
    \tempo 4 = 120
    }



    \layout { }
}


\include "cello-iii.ily"


\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Score.skipBars = ##t
        \set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"cello"
	\set Staff.instrumentName = "Cello"
	\globalIII

	\KeyIII
	\markingsIII
	\celloThirdMov
    >>

    
  \midi {
    \tempo 4 = 50
    }



    \layout { }
}


\include "cello-iv.ily"


\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Score.skipBars = ##t
        \set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"cello"
	\set Staff.instrumentName = "Cello"
	\globalIV

	\KeyIV
	\markingsIV
	\celloFourthMov	
    >>

    
  \midi {
    \tempo 2 = 120
    }



    \layout { }
}
