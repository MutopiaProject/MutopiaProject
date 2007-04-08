\version "1.5.58"

\include "defs.ly"


\include "violin1-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino I."
	\globalI

	\KeyI
	\markingsI
	\violinIFirstMov
    >

    \midi {
       \tempo 4 = 120
    }

    \paper { }
}


\include "violin1-ii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino I."
	\globalII

	\KeyII
	\markingsII
	\violinISecondMov
    >

    \midi {
       \tempo 4 = 120
    }

    \paper { }
}


\include "violin1-iii.ly"


\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino I."
	\globalIII

	\KeyIII
	\markingsIII
	\violinIThirdMov
    >

    \midi {
       \tempo 4 = 50
    }

    \paper { }
}


\include "violin1-iv.ly"


\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino I."
	\globalIV

	\KeyIV
	\markingsIV
	\violinIFourthMov	
    >

    \midi {
       \tempo 2 = 120
    }

    \paper { }
}
