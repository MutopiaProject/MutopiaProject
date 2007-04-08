\version "1.5.58"

\include "defs.ly"


\include "viola-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"viola"
	\property Staff.instrument = "Viola"
	\globalI

	\KeyI
	\markingsI
	\violaFirstMov
    >

    \midi {
       \tempo 4 = 120
    }

    \paper { }
}


\include "viola-ii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"viola"
	\property Staff.instrument = "Viola"
	\globalII

	\KeyII
	\markingsII
	\violaSecondMov
    >

    \midi {
       \tempo 4 = 120
    }

    \paper { }
}


\include "viola-iii.ly"


\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"viola"
	\property Staff.instrument = "Viola"
	\globalIII

	\KeyIII
	\markingsIII
	\violaThirdMov
    >

    \midi {
       \tempo 4 = 50
    }

    \paper { }
}


\include "viola-iv.ly"


\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"viola"
	\property Staff.instrument = "Viola"
	\globalIV

	\KeyIV
	\markingsIV
	\violaFourthMov	
    >

    \midi {
       \tempo 2 = 120
    }

    \paper { }
}
