% -*- LilyPond -*-

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

	\time 3/4

	\violinIFirstMov
	\context Voice=markings { \markingsI }
    >

    \midi {
       \tempo 4 = 40
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

	\time 3/4

	\violinISecondMov
	\context Voice=markings { \markingsII }
    >

    \midi {
       \tempo 4 = 64
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

	\time 3/4
	\partial 4

	\violinIThirdMov
	\context Voice=markings { \markingsIII }
	\context Voice=markingsBis { \markingsIIIbis }
    >

    \midi {
       \tempo 4 = 140
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
	\partial 4

	\violinIFourthMov
	\context Voice=markings { \markingsIV }
    >

    \midi {
       \tempo 4 = 152
    }

    \paper { }
}
