% -*- LilyPond -*-

\version "1.7.30"

\include "defs.ly"

\include "horn4-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.transposing = #5
        \property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = \markup { \center << "Corno II"
							  "in F." >> }

	\time 4/4

	\hornIVFirstMov
    >

    \midi {
       \tempo 4 = 124
    }

    \header {
	piece = "Allegro."
    }

    \paper { }
}

\include "horn4-ii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.transposing = #-2
        \property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = \markup { \center << "Corno II"
							  "in F." >> }

	\time 3/8

	\hornIVSecondMov
    >

    \midi {
       \tempo 4 = 54
    }

    \header {
	piece = "Andantino grazioso."
    }

    \paper { }
}

\include "horn4-iii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.transposing = #5
        \property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = \markup { \center << "Corno II"
							  "in F." >> }

	\time 3/4
	\partial 4

	\hornIVThirdMov
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

\include "horn4-iv.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.transposing = #5
        \property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = \markup { \center << "Corno II"
							  "in F." >> }

	\time 4/4

	\hornIVFourthMov
    >

    \midi {
       \tempo 4 = 180
    }

    \header {
	piece = "Allegro molto."
    }

    \paper { }
}
