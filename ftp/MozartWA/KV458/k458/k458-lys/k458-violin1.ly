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

	\time 6/8
	\partial 8

	\violinIFirstMov
	\context Voice=markings { \markingsI }
    >

    \midi {
       \tempo 4 = 140
    }

    \paper { }
}

\include "violin1-ii-solo.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violino I."

	\time 3/4

	\violinISecondMov
	\context Voice=markings { \markingsII }
	\context Voice=markingsBis { \markingsIIbisSolo }
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

	\violinIThirdMov
	\context Voice=markings { \markingsIII }
    >

    \midi {
       \tempo 4 = 40
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

	\time 2/4

	\violinIFourthMov
	\context Voice=markings { \markingsIV }
    >

    \midi {
       \tempo 4 = 140
    }

    \paper { }
}
