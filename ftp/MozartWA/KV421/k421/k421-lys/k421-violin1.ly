\version "1.6.6"

\include "defs.ly"

\include "violin1-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino I."

	\violinIFirstMov
	\context Voice=markings { \markingsI }
    >

    \midi {
       \tempo 4 = 90
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

	\violinISecondMov
	\context Voice=markings { \markingsII }
    >

    \midi {
       \tempo 4 = 70
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

	\violinIThirdMov
	\context Voice=markings { \markingsIII }
	\context Voice=markingsBis { \markingsIIIbis }
    >

    \midi {
       \tempo 4 = 130
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

	\violinIFourthMov
	\context Voice=markings { \markingsIV }
    >

    \midi {
       \tempo 4 = 100
    }

    \paper { }
}
