\version "2.18.2"

\include "spacing-bk.ily"
\include "guitar1.ily"
\include "guitar2.ily"
\include "guitar3.ily"

global = {
  \time 2/4
  \key g \minor
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
	 top-system-spacing.basic-distance = #15
    }

    \header {
	title = "Variation 15"
	subtitle = "   "
	subsubtitle = "   "
	poet = "Canon at the Fifth"
	piece  = "   "
%	meter  = "   "

    }

    \tocItem \markup { "Variation 15" \hspace #10 "Canon at the Fifth" }

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
	    \new Staff << \global \guitarthree >>
	>>

	\layout {
            \context {
                \Score
                    %\override NonMusicalPaperColumn #'line-break-permission = ##f
                    \override NonMusicalPaperColumn #'page-break-permission = ##f
            }
        }
        \midi { \tempo 4 = 34 }
    }
 }
