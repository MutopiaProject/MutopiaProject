\version "2.18.2"

\include "guitar1.ily"
\include "guitar2.ily"

global = {
  \time 3/4
  \key g \major
  \clef "G_8"
}

\bookpart {
    \header { maintainer = "Steve Shorter and Hajo Delzelski" }
    \include "../mutopia-header.ily"
    \paper {
	print-first-page-number = ##t
	system-system-spacing =
	    #'((basic-distance . 18)
	       (minimum-distance . 14)
	       (padding . 4)
	       (stretchability . 12))
	ragged-bottom = ##f
    }

    \header {
	title = "Variation 05"
    }

    \tocItem \markup { Variation 05 }

    \score {
	\new StaffGroup \with {
	    midiInstrument = #"acoustic guitar (nylon)"
	    \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 13)
		   (minimum-distance . 8)
		   (padding . 2))
            }
	<<
	    \new Staff << \global \guitarone >>
	    \new Staff << \global \guitartwo >>
	>>

	\layout { }
	\midi { \tempo 4 = 135 }
    }
 }
