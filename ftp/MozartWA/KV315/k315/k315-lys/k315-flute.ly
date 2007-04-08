% -*- LilyPond -*-

\version "1.7.30"

\include "defs.ly"

\include "flute.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"flute"
	\property Staff.instrument = \markup { \center << "Flauto traverso"
							  "principale." >> }

	\time 2/4

	\flutePart
	\context Voice=markings { \markings }
    >

    \midi {
       \tempo 4 = 46
    }

    \paper { }
}
