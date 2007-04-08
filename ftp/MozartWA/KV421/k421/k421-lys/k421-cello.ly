\version "1.6.6"

\include "defs.ly"

\include "cello-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"cello"
	\property Staff.instrument = "Cello."

	\celloFirstMov
	\context Voice=markings { \markingsI }
    >

    \midi {
       \tempo 4 = 90
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
	\property Staff.instrument = "Cello."

	\celloSecondMov
	\context Voice=markings { \markingsII }
    >

    \midi {
       \tempo 4 = 70
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
	\property Staff.instrument = "Cello."

	\celloThirdMov
	\context Voice=markings { \markingsIII }
	\context Voice=markingsBis { \markingsIIIbis }
    >

    \midi {
       \tempo 4 = 130
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
	\property Staff.instrument = "Cello."

	\celloFourthMov
	\context Voice=markings { \markingsIV }
    >

    \midi {
       \tempo 4 = 100
    }

    \paper { }
}
