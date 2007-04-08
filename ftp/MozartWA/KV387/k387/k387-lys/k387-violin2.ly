\version "1.5.58"

\include "defs.ly"


\include "violin2-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino II."
	\globalI

	\KeyI
	\markingsI
	\violinIIFirstMov
    >

    \midi {
       \tempo 4 = 120
    }

    \paper { }
}


\include "violin2-ii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino II."
	\globalII

	\KeyII
	\markingsII
	\violinIISecondMov
    >

    \midi {
       \tempo 4 = 120
    }

    \paper { }
}


\include "violin2-iii.ly"


\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino II."
	\globalIII

	\KeyIII
	\markingsIII
	\violinIIThirdMov
    >

    \midi {
       \tempo 4 = 50
    }

    \paper { }
}


\include "violin2-iv.ly"


\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino II."
	\globalIV

	\KeyIV
	\markingsIV
	\violinIIFourthMov	
    >

    \midi {
       \tempo 2 = 120
    }

    \paper { }
}
