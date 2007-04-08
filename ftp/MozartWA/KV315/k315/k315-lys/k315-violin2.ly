% -*- LilyPond -*-

\version "1.7.30"

\include "defs.ly"

\include "violin2.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"string ensemble 1"
	\property Staff.instrument = #"Violino II"

	\time 2/4

	\violinIIPart
	\context Voice=markings { \markings }
    >

    \midi {
       \tempo 4 = 46
    }

    \paper { }
}
