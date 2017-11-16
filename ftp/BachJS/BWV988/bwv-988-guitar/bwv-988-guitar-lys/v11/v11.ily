\version "2.18.0"

\include "guitar1.ily"
\include "guitar2.ily"

global = {
  \time 12/16
  \clef "G_8"
  \key g \major
}

\bookpart {
    \header { maintainer = "Steve Shorter and Hajo Delzelski" }
    \include "../mutopia-header.ily"
    \paper {
	system-count = #10
	print-first-page-number = ##t
	ragged-bottom = ##f
	top-system-spacing.basic-distance = #11
    }

    \header {
	title = "Variation 11"
    }

    \tocItem \markup { Variation 11 }

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
	>>

	\layout {
            \context {
                \Score
                    %\override NonMusicalPaperColumn #'line-break-permission = ##f
                    \override NonMusicalPaperColumn #'page-break-permission = ##f
            }
        }
        \midi { \tempo 4 = 80 }
    }
 }
