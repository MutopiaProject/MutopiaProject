% -*- LilyPond -*-

\version "1.7.30"

\include "defs.ly"

\include "viola.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"string ensemble 1"
	\property Staff.instrument = #"Viola"

	\time 2/4

	\violaPart
	\context Voice=markings { \markings }
    >

    \midi {
       \tempo 4 = 46
    }

    \paper { }
}
