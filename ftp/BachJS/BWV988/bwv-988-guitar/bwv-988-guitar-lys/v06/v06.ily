\version "2.18.0"

\include "guitar1.ily"
\include "guitar2.ily"
\include "guitar3.ily"

global = {
  \time 3/8
  \clef "G_8"
  \key g \major
}

\bookpart {
    \header { maintainer = "Steve Shorter and Hajo Delzelski" }
    \include "../mutopia-header.ily"
    \paper {
        print-first-page-number = ##t
	ragged-bottom = ##f
    }

    \header {
	title = "Variation 06"
	meter = "Canon at the Second"
    }

    \tocItem \markup { "Variation 06" \hspace #10 "Canon at the Second" }

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
	    \new Staff << \global \guitarthree >>
	>>

	\layout {
            \context {
                \Score
                    %\override NonMusicalPaperColumn #'line-break-permission = ##f
                    \override NonMusicalPaperColumn #'page-break-permission = ##f
            }
        }
        \midi { \tempo 4 = 62 }
    }
}
