% -*- LilyPond -*-

\version "1.6.6"

include(defs.ly)

\include "violin2-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino II."

	\time 3/4
	\partial 4

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
       \tempo 4 = 130
    }

    \paper { }
}

include(violin2-iii.ly)

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino II."

	\time 2/4
	\partial 4

	\violinIIThirdMov
	\context Voice=markings { \markingsIII }
    >

    \midi {
       \tempo 4 = 44
    }

    \paper { }
}

include(violin2-iv.ly)

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
       \tempo 4 = 160
    }

    \paper { }
}
