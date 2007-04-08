% -*- LilyPond -*-

\version "1.7.30"

\include "defs.ly"

\include "horn2.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = \markup { \center << "Corno II" 
							  "in C" >> }

	\time 2/4

	\hornIIPart
	\context Voice=markings { \markings }
    >

    \midi {
       \tempo 4 = 46
    }

    \paper { }
}
