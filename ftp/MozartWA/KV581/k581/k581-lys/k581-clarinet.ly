% -*- LilyPond -*-

\include "defs.ly"
\version "1.7.18"

#(set! point-and-click line-column-location)

\include "clarinet-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"clarinet"
	\property Staff.instrument = "Clarinetto in A."

	\time 4/4

	\clarinetFirstMov
	\context Voice=markings { \markingsI }
    >

    \midi {
       \tempo 4 = 120
    }

    \paper { }
}

\include "clarinet-ii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"clarinet"
	\property Staff.instrument = "Clarinetto in A."

	\time 3/4

	\clarinetSecondMov
	\context Voice=markings { \markingsII }
    >

    \midi {
       \tempo 4 = 55
    }

    \paper { }
}

\include "clarinet-iii.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"clarinet"
	\property Staff.instrument = "Clarinetto in A."

	\time 3/4
	\partial 4

	\clarinetThirdMov
	\context Voice=markings { \markingsIII }
	\context Voice=markingsBis { \markingsIIIbis }
    >

    \midi {
       \tempo 4 = 140
    }

    \paper { }
}

\include "clarinet-iv.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"clarinet"
	\property Staff.instrument = "Clarinetto in A."

	\time 2/2

	\clarinetFourthMov
	\context Voice=markings { \markingsIV }
    >

    \midi {
       \tempo 4 = 140
    }

    \paper { }
}
