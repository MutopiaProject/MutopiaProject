\version "1.5.68"

\include "defs.ly"

\include "clarinet-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"clarinet"
	\property Staff.instrument = #'(lines "Clarinetto" "in B.")
	\property Staff.transposing = #-2

	\markingsI

	\clarinetFirstMov
    >

    \midi {
       \tempo 4 = 70
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
	\property Staff.instrument = #'(lines "Clarinetto" "in B.")
	\property Staff.transposing = #-2

	\markingsII

	\clarinetSecondMov
    >

    \midi {
       \tempo 4 = 120
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
	\property Staff.instrument = #'(lines "Clarinetto" "in B.")
	\property Staff.transposing = #-2

	\markingsIII

	\clarinetThirdMov
    >

    \midi {
       \tempo 4 = 120
    }

    \paper { }
}
