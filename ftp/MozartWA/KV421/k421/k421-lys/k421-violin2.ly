\version "1.6.6"

\include "defs.ly"

\include "violin2-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino II."

	\violinIIFirstMov
	\context Voice=markings { \markingsI }
    >

    \midi {
       \tempo 4 = 90
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

	\violinIISecondMov
	\context Voice=markings { \markingsII }
    >

    \midi {
       \tempo 4 = 70
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

	\violinIIThirdMov
	\context Voice=markings { \markingsIII }
	\context Voice=markingsBis { \markingsIIIbis }
    >

    \midi {
       \tempo 4 = 130
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

	\violinIIFourthMov
	\context Voice=markings { \markingsIV }
    >

    \midi {
       \tempo 4 = 100
    }

    \paper { }
}

