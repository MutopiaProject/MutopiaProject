\version "2.18.2"

\include "guitar1.ily"
\include "guitar2.ily"
\include "guitar3.ily"

global = {
  \time 3/4
  \key g \minor
  \clef "G_8"
}

\bookpart {
    \header { maintainer = "Steve Shorter and Hajo Delzelski" }
    \include "../mutopia-header.ily"
    \paper {
        print-first-page-number = ##t
        top-system-spacing.basic-distance = #18
        system-system-spacing.padding = #6
    }

    \header {
	title = "Variation 25"
        subtitle = "   "
	subsubtitle = "   "
	poet = "   "
	%piece = "   "

    }

    \tocItem \markup { Variation 25 }

    \score {
	\new StaffGroup \with {
	    midiInstrument = #"acoustic guitar (nylon)"
	    \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 12)
                   (minimum-distance . 8)
                   (padding . 2))
            }
	<<
	    \new Staff << \global \guitarone >>
	    \new Staff << \global \guitartwo >>
	    \new Staff << \global \guitarthree >>
	>>

	\layout { }
	\midi { \tempo 4 = 22 }
    }
 }
