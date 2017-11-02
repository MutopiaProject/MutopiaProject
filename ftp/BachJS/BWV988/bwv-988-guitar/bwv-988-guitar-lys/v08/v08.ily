\version "2.18.2"

\include "spacing-bk.ily"
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
	ragged-bottom = ##f
	print-first-page-number = ##t
	system-system-spacing =
	    #'((basic-distance . 20)
	       (minimum-distance . 14)
	       (padding . 4)
	       (stretchability . 12))
    }

    \header {
	title = "Variation 08"
	subtitle = " "
    }

    \tocItem \markup { Variation 08 }

    \score {
	\new StaffGroup \with {
	    midiInstrument = #"acoustic guitar (nylon)"
	    \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 12)
		   (minimum-distance . 8)
		   (padding . 2))
            }
	<<
	    \new Staff << \new Voice { \spacing } \new Voice { \global \guitarone } >>
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
