% -*- LilyPond -*-

\version "1.7.30"

\include "defs.ly"

\include "flute2-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"Flauto II" 

	\time 4/4

	\fluteIIFirstMov
    >

    \midi {
       \tempo 4 = 124
    }

    \header {
	piece = "Allegro."
    }

    \paper { }
}

\include "flute2-ii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"Flauto II" 

	\time 3/8

	\fluteIISecondMov
    >

    \midi {
       \tempo 4 = 42
    }

    \header {
	piece = "Andantino cantabile."
    }

    \paper { }
}

\include "flute2-iii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"Flauto II" 

	\time 3/4
	\partial 4

	\fluteIIThirdMov
	\context Voice=markings { \markingsIII }
	\context Voice=markingsBis { \markingsIIIbis }
    >

    \midi {
       \tempo 4 = 130
    }

    \header {
	piece = "MENUETTO."
    }

    \paper { }
}

\include "flute2-iv.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"Flauto II" 

	\time 4/4

	\fluteIIFourthMov
    >

    \midi {
       \tempo 4 = 180
    }

    \header {
	piece = "Allegro molto."
    }

    \paper { }
}
