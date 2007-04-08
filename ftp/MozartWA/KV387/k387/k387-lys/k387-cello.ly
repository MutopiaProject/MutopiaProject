\version "1.5.58"

\include "defs.ly"


\include "cello-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"cello"
	\property Staff.instrument = "Cello"
	\globalI

	\KeyI
	\markingsI
	\celloFirstMov
    >

    \midi {
       \tempo 4 = 120
    }

    \paper { }
}


\include "cello-ii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"cello"
	\property Staff.instrument = "Cello"
	\globalII

	\KeyII
	\markingsII
	\celloSecondMov
    >

    \midi {
       \tempo 4 = 120
    }

    \paper { }
}


\include "cello-iii.ly"


\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"cello"
	\property Staff.instrument = "Cello"
	\globalIII

	\KeyIII
	\markingsIII
	\celloThirdMov
    >

    \midi {
       \tempo 4 = 50
    }

    \paper { }
}


\include "cello-iv.ly"


\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"cello"
	\property Staff.instrument = "Cello"
	\globalIV

	\KeyIV
	\markingsIV
	\celloFourthMov	
    >

    \midi {
       \tempo 2 = 120
    }

    \paper { }
}
