\version "2.18.2"

\include "spacing-bk.ily"
\include "guitar1.ily"
\include "guitar2.ily"
\include "guitar3.ily"

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
	    #'((basic-distance . 22)
	       (minimum-distance . 14)
	       (padding . 4)
	       (stretchability . 12))
	 top-system-spacing.basic-distance = #13
    }


    \header {
	title = "Variation 12"
	subtitle = "   "
	subsubtitle = "   "
	meter = "Canon at the Fourth"
    }

    \tocItem \markup { "Variation 12" \hspace #10 "Canon at the Fourth" }

    \score {
	\new StaffGroup \with {
	    midiInstrument = #"acoustic guitar (nylon)"
	    \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 10)
                   (minimum-distance . 6)
                   (padding . 4))
            }
	<<
	    \new Staff << \new Voice { \spacing } \new Voice { \global \guitarone } >>
	    \new Staff << \global \guitartwo >>
	    \new Staff << \global \guitarthree >>
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
