\version "1.5.68"

\include "defs.ly"

\include "viola-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"viola"
	\property Staff.instrument = "Viola"

	\markingsI

	\violaFirstMov
    >

    \midi {
       \tempo 4 = 70
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

	\markingsIII

	\violaThirdMov
    >

    \midi {
       \tempo 4 = 120
    }

    \paper { }
}
