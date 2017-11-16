\version "2.18.2"

\include "guitar1.ily"
\include "guitar2.ily"
\include "guitar3.ily"

global = {
  \time 4/4
  \key g \major
  \clef "G_8"
}

\bookpart {
    \header { maintainer = "Steve Shorter and Hajo Delzelski" }
    \include "../mutopia-header.ily"
    \paper {
	print-first-page-number = ##t
	system-system-spacing =
	    #'((basic-distance . 25)
	       (minimum-distance . 14)
	       (padding . 4)
	       (stretchability . 12))
	top-system-spacing.basic-distance = #13
    }

    \header {
	title = "Variation 09"
	subtitle = "   "
	meter = \markup \column { "Canon at the Third" \null }
	meter = "Canon at the Third"
    }

    \tocItem \markup { "Variation 09" \hspace #10 "Canon at the Third" }

    \score {
	\new StaffGroup \with {
	    midiInstrument = #"acoustic guitar (nylon)"
	    \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 10)
                   (minimum-distance . 8)
                   (padding . 4))
            }
	<<
	    \new Staff << \global \guitarone >>
	    \new Staff << \global \guitartwo >>
	    \new Staff << \global \guitarthree >>
	>>

	\layout { }

	\midi { \tempo 4 = 75 }
    }
}
