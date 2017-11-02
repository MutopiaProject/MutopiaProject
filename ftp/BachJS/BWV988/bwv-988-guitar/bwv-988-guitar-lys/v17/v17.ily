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
	system-count = #10
	ragged-bottom = ##f
	top-system-spacing.basic-distance = #12
    }

    \header {
	title = "Variation 17"
	subtitle = "   "
	subsubtitle = "   "
    }

    \tocItem \markup { Variation 17 }

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
        \midi { \tempo 4 = 78 }
    }
}
