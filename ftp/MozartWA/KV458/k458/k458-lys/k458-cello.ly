\version "1.6.6"

\include "defs.ly"

\include "cello-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"cello"
	\property Staff.instrument = "Cello."

	\time 6/8
	\partial 8

	\celloFirstMov
	\context Voice=markings { \markingsI }
    >

    \midi {
       \tempo 4 = 140
    }

    \paper { }
}

\include "cello-ii-solo.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"cello"
	\property Staff.instrument = "Cello."

	\time 3/4

	\celloSecondMov
	\context Voice=markings { \markingsII }
	\context Voice=markingsBis { \markingsIIbisSolo }
    >

    \midi {
       \tempo 4 = 120
    }

    \paper { }
}

\include "cello-iii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"cello"
	\property Staff.instrument = "Cello."

	\celloThirdMov
	\context Voice=markings { \markingsIII }
    >

    \midi {
       \tempo 4 = 40
    }

    \paper { }
}


\include "cello-iv.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"cello"
	\property Staff.instrument = "Cello."

	\time 2/4

	\celloFourthMov
	\context Voice=markings { \markingsIV }
    >

    \midi {
       \tempo 4 = 140
    }

    \paper { }
}
