% -*- LilyPond -*-

\version "1.7.30"

\include "defs.ly"

\include "flute1-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"Flauto I" 

	\time 4/4

	\fluteIFirstMov
    >

    \midi {
       \tempo 4 = 124
    }

    \header {
	piece = "Allegro."
    }

    \paper { }
}

\include "flute1-ii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"Flauto I" 

	\time 3/8

	\fluteISecondMov
    >

    \midi {
       \tempo 4 = 42
    }

    \header {
	piece = "Andantino cantabile."
    }

    \paper { }
}

\include "flute1-iii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"Flauto I" 

	\time 3/4
	\partial 4

	\fluteIThirdMov
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

\include "flute1-iv.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"Flauto I" 

	\time 4/4

	\fluteIFourthMov
    >

    \midi {
       \tempo 4 = 180
    }

    \header {
	piece = "Allegro molto."
    }

    \paper { }
}
