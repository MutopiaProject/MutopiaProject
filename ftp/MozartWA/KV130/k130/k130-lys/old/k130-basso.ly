% -*- LilyPond -*-

\version "1.7.30"

\include "defs.ly"

\include "basso-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"string ensemble 1"
	\property Staff.instrument = #"Basso" 

	\time 4/4

	\bassoFirstMov
    >

    \midi {
       \tempo 4 = 124
    }

    \header {
	meter = "Allegro."
    }

    \paper { }
}

\include "basso-ii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"string ensemble 1"
	\property Staff.instrument = #"Basso" 

	\time 3/8

	\bassoSecondMov
    >

    \midi {
       \tempo 4 = 42
    }

    \header {
	piece = "Andantino grazioso."
    }

    \paper { }
}

\include "basso-iii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"string ensemble 1"
	\property Staff.instrument = #"Basso" 

	\time 3/4
	\partial 4

	\bassoThirdMov
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

\include "basso-iv.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"string ensemble 1"
	\property Staff.instrument = #"Basso" 

	\time 4/4

	\bassoFourthMov
    >

    \midi {
       \tempo 4 = 180
    }

    \header {
	piece = "Allegro molto."
    }

    \paper { }
}
