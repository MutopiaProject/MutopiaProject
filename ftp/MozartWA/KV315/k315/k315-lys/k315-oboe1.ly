% -*- LilyPond -*-

\version "1.7.30"

\include "defs.ly"

\include "oboe1.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"oboe"
	\property Staff.instrument = #"Oboe I"

	\time 2/4

	\oboeIPart
	\context Voice=markings { \markings }
    >

    \midi {
       \tempo 4 = 46
    }

    \paper { }
}
