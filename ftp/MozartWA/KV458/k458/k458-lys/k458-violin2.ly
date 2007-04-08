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

	\time 6/8
	\partial 8

	\violinIIFirstMov
	\context Voice=markings { \markingsI }
    >

    \midi {
       \tempo 4 = 140
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

	\time 3/4

	\violinIISecondMov
	\context Voice=markings { \markingsII }
	\context Voice=markingsBis { \markingsIIbis }
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

	\violinIIThirdMov
	\context Voice=markings { \markingsIII }
    >

    \midi {
       \tempo 4 = 40
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

	\time 2/4

	\violinIIFourthMov
	\context Voice=markings { \markingsIV }
    >

    \midi {
       \tempo 4 = 140
    }

    \paper { }
}
