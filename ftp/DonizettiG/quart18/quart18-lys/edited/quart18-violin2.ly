% -*- LilyPond -*-

\version "1.7.29"

\include "defs.ly"

\include "violin2-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino II."

	\time 4/4

	\violinIIFirstMov
	\context Voice=markings { \markingsI }
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

	\time 2/4

	\violinIISecondMov
	\context Voice=markings { \markingsII }
    >

    \midi {
       \tempo 4 = 46
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

	\time 3/4
	\partial 4

	\violinIIThirdMov
	\context Voice=markings { \markingsIII }
	\context Voice=markingsBis { \markingsIIIbis }
    >

    \midi {
       \tempo 4 = 170
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

	\time 3/4

	\violinIIFourthMov
	\context Voice=markings { \markingsIV }
    >

    \midi {
       \tempo 4 = 110
    }

    \paper { }
}
