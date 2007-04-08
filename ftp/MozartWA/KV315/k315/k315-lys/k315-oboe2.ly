% -*- LilyPond -*-

\version "1.7.30"

\include "defs.ly"

\include "oboe2.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"oboe"
	\property Staff.instrument = #"Oboe II"

	\time 2/4

	\oboeIIPart
	\context Voice=markings { \markings }
    >

    \midi {
       \tempo 4 = 46
    }

    \paper { }
}
