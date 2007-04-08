% -*- LilyPond -*-

\version "1.6.6"

include(defs.ly)


\include "viola-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"viola"
	\property Staff.instrument = "Viola."

	\time 3/4
	\partial 4

	\violaFirstMov
	\context Voice=markings { \markingsI }
    >

    \midi {
       \tempo 4 = 140
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
	\context Voice=markingsBis { \markingsIIbis }
    >

    \midi {
       \tempo 4 = 130
    }

    \paper { }
}

include(viola-iii.ly)

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"viola"
	\property Staff.instrument = "Viola."

	\time 2/4
	\partial 4

	\violaThirdMov
	\context Voice=markings { \markingsIII }
    >

    \midi {
       \tempo 4 = 44
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

	\violaFourthMov
	\context Voice=markings { \markingsIV }
    >

    \midi {
       \tempo 4 = 160
    }

    \paper { }
}
