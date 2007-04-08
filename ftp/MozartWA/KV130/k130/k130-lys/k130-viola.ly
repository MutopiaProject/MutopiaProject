% -*- LilyPond -*-

\version "1.7.30"

\include "defs.ly"

\include "viola-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"string ensemble 1"
	\property Staff.instrument = #"Viola" 

	\time 4/4

	\violaFirstMov
    >

    \midi {
       \tempo 4 = 124
    }

    \header {
	piece = "Allegro."
    }

    \paper { }
}

\include "viola-ii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"string ensemble 1"
	\property Staff.instrument = #"Viola" 

	\time 3/8

	\violaSecondMov
    >

    \midi {
       \tempo 4 = 42
    }

    \header {
	piece = "Andantino grazioso."
    }

    \paper { }
}

\include "viola-iii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"string ensemble 1"
	\property Staff.instrument = #"Viola" 

	\time 3/4
	\partial 4

	\violaThirdMov
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

\include "viola-iv.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"string ensemble 1"
	\property Staff.instrument = #"Viola" 

	\time 4/4

	\violaFourthMov
    >

    \midi {
       \tempo 4 = 180
    }

    \header {
	piece = "Allegro molto."
    }

    \paper { }
}
