\version "2.18.2"

\include "guitar1.ily"
\include "guitar2.ily"
\include "guitar3.ily"
\include "guitar4.ily"

global = {
  \time 2/2
  \clef "G_8"
  \key g \major
}

\bookpart {
    \header { maintainer = "Steve Shorter and Hajo Delzelski" }
    \include "../mutopia-header.ily"
    \paper {
	print-first-page-number = ##t
	top-system-spacing.basic-distance = #12
	system-system-spacing =
	    #'((basic-distance . 22)
	       (minimum-distance . 14)
	       (padding . 4)
	       (stretchability . 12))
     }

    \header {
	title = "Variation 22"
	subtitle = "  "
	subsubtitle = "  "
    }

    \tocItem \markup { Variation 22 }

    \score {
	\new StaffGroup \with {
	        midiInstrument = #"acoustic guitar (nylon)"
	        \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 11)
                   (minimum-distance . 8)
                   (padding . 2))
	}
	<<
	    \new Staff << \global \guitarone >>
	    \new Staff << \global \guitartwo >>
	    \new Staff << \global \guitarthree >>
	    \new Staff << \global \guitarfour >>
	>>

	\layout { }
	\midi { \tempo 2 = 89 }
    }
 }
