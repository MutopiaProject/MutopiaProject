\version "2.18.2"

\include "guitar1.ily"
\include "guitar2.ily"

global = {
  \time 6/8
  \key g \major
  \clef "G_8"
}

\bookpart {
    \header { maintainer = "Steve Shorter and Hajo Delzelski" }
    \include "../mutopia-header.ily"
    \paper {
	print-first-page-number = ##t
	page-count = #2
	top-system-spacing.basic-distance = #16
	system-system-spacing.padding = #9
    }

    \header {
	title = "Variation 27"
%	subtitle = "  "
%	subsubtitle = "  "
	meter = "Canon at the Ninth"
	poet = "   "
%	piece = "   "

    }

    \tocItem \markup { "Variation 27" \hspace #10 "Canon at the Ninth" }

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
        \midi { \tempo 4 = 95 }
    }
}
