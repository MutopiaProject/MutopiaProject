\version "1.5.68"

\include "defs.ly"

\include "clarinet-i.ly"

\score {
    \context Staff <
        \property Score.BarNumber \override #'padding = #3
	\property Score.skipBars = ##t
	\property Staff.autoBeaming = ##f
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violin"

	\markingsI

	\notes \transpose bes \clarinetFirstMov
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
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violin"

	\markingsII

	\notes \transpose bes \clarinetSecondMov
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
        \property Staff.midiInstrument = #"violin"
	\property Staff.instrument = "Violin"

	\markingsIII

	\notes \transpose bes \clarinetThirdMov
    >

    \midi {
       \tempo 4 = 120
    }

    \paper { }
}
