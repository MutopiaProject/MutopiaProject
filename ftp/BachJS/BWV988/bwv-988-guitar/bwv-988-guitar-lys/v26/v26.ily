\version "2.18.2"

\include "guitar1.ily"
\include "guitar2.ily"
\include "guitar3.ily"

global = {
   \key g \major
   \clef "G_8"
}

\bookpart {
    \header { maintainer = "Steve Shorter and Hajo Delzelski" }
    \include "../mutopia-header.ily"
    \paper {
        print-first-page-number = ##t
        system-system-spacing.padding = #7
        top-system-spacing.basic-distance = #15
    }

    \header {
	title = "Variation 26"
	subtitle = "   "
	subsubtitle = "   "
	poet = "   "
    }

    \tocItem \markup { Variation 26 }

    \score {
	\new StaffGroup \with { midiInstrument = #"acoustic guitar (nylon)" }
	<<
	    \new Staff << \global \guitarone >>
	    \new Staff << \global \guitartwo >>
	    \new Staff << \global \guitarthree >>
	>>

	\layout { }
	\midi { \tempo 4 = 83 }
    }
}
