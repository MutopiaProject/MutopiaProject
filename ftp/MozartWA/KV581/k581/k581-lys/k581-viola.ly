% -*- LilyPond -*-

\version "1.7.18"

\include "defs.ly"

\include "viola-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"viola"
	\property Staff.instrument = "Viola."

	\time 4/4

	\violaFirstMov
	\context Voice=markings { \markingsI }
    >

    \midi {
       \tempo 4 = 120
    }

    \paper { }
}

\include "viola-ii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"viola"
	\property Staff.instrument = "Viola."

	\time 3/4

	\violaSecondMov
	\context Voice=markings { \markingsII }
    >

    \midi {
       \tempo 4 = 55
    }

    \paper { }
}

\include "viola-iii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"viola"
	\property Staff.instrument = "Viola."

	\time 3/4
	\partial 4

	\violaThirdMov
	\context Voice=markings { \markingsIII }
	\context Voice=markingsBis { \markingsIIIbis }
    >

    \midi {
       \tempo 4 = 140
    }

    \paper { }
}


\include "viola-iv.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"viola"
	\property Staff.instrument = "Viola."

	\time 2/2

	\violaFourthMov
	\context Voice=markings { \markingsIV }
    >

    \midi {
       \tempo 4 = 140
    }

    \paper { }
}
