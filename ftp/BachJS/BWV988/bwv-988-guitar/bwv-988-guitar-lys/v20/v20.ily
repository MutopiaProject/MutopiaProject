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
	print-first-page-number = ##t
	top-system-spacing.basic-distance = #13
	system-system-spacing =
	    #'((basic-distance . 25)
	       (minimum-distance . 15)
	       (padding . 4)
	       (stretchability . 12))
    }

    \header {
	title = "Variation 20"
	subtitle = "   "
	subsubtitle = "   "
    }

    \tocItem \markup { Variation 20 }

    \score {
	\new StaffGroup \with {
	    midiInstrument = #"acoustic guitar (nylon)"
	    \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 12)
                   (minimum-distance . 8)
                   (padding . 4))
            }
	<<
	    \new Staff << \new Voice { \spacing } \new Voice { \global \guitarone } >>
	    \new Staff << \global \guitartwo >>
	>>

	\layout {
            \context {
                \Score
                    \override NonMusicalPaperColumn #'line-break-permission = ##f
                    \override NonMusicalPaperColumn #'page-break-permission = ##f
            }
        }
        \midi { \tempo 4 = 92 }
    }
 }
