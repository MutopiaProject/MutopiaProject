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
	top-system-spacing.basic-distance = #12
	system-system-spacing =
	    #'((basic-distance . 22)
	       (minimum-distance . 14)
	       (padding . 4)
	       (stretchability . 12))
    }


    \header {
	title = "Variation 23"
	subtitle = "   "
	subsubtitle = "   "
    }

    \tocItem \markup { Variation 23 }

    \score {
	\new StaffGroup \with {
            midiInstrument = #"acoustic guitar (nylon)"
            \override StaffGrouper #'staff-staff-spacing =
                #'((basic-distance . 12)
                   (minimum-distance . 5)
                   (padding . 4)
                   (stretchability . 8))
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
        \midi { \tempo 4 = 79 }
    }
 }
