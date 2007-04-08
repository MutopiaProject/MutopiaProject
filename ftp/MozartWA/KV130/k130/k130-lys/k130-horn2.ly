% -*- LilyPond -*-

\version "1.7.30"

\include "defs.ly"

\include "horn2-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = \markup { \center << "Corno II"
							  "in C alto." >> }

	\time 4/4

	\hornIIFirstMov
    >

    \midi {
       \tempo 4 = 124
    }

    \header {
	piece = "Allegro."
    }

    \paper { }
}

\include "horn2-ii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.transposing = #5
        \property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = \markup { \center << "Corno II"
							  "in F." >> }

	\time 3/8

	\hornIISecondMov
    >

    \midi {
       \tempo 4 = 42
    }

    \header {
	piece = "Andantino grazioso."
    }

    \paper { }
}

\include "horn2-iii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = \markup { \center << "Corno II"
							  "in C alto." >> }

	\time 3/4
	\partial 4

	\hornIIThirdMov
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

\include "horn2-iv.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
        \property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = \markup { \center << "Corno II"
							  "in C alto." >> }

	\time 4/4

	\hornIIFourthMov
    >

    \midi {
       \tempo 4 = 180
    }

    \header {
	piece = "Allegro molto."
    }

    \paper { }
}

