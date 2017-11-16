\version "2.18.2"

\include "guitar1.ily"
\include "guitar2.ily"
\include "guitar3.ily"

global = {
  \time 4/4
  \key g \minor
  \clef "G_8"
}

\bookpart {
    \header { maintainer = "Steve Shorter and Hajo Delzelski" }
    \include "../mutopia-header.ily"
    \paper {
	page-count = #2
	print-first-page-number = ##t
	top-system-spacing.basic-distance = #8
	system-system-spacing.basic-distance = #13
        ragged-bottom = ##f
    }

    \header {
	title = "Variation 21"
	subtitle = "   "
%	subsubtitle = "   "
	meter = "Canon at the Seventh"
%	poet = "   "
%	piece = "   "
    }

    \tocItem \markup { "Variation 21" \hspace #10 "Canon at the Seventh" }

    \score {
	\new StaffGroup \with {
	    midiInstrument = #"acoustic guitar (nylon)"
	    \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 10)
                   (minimum-distance . 8)
                   (padding . 2))
            }
	<<
	    \new Staff << \global \guitarone >>
	    \new Staff << \global \guitartwo >>
	    \new Staff << \global \guitarthree >>
	>>

	\layout { }
	\midi { \tempo 4 = 48 }
    }
 }
