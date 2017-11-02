\version "2.18.2"

\include "spacing-bk.ily"
\include "guitar1.ily"
\include "guitar2.ily"

global = {
  \key g \major
  \clef "G_8"
}

\bookpart {
    \header { maintainer = "Steve Shorter and Hajo Delzelski" }
    \include "../mutopia-header.ily"
    \paper {
	print-first-page-number = ##t
	system-system-spacing =
	    #'((basic-distance . 26)
	       (minimum-distance . 14)
	       (padding . 4)
	       (stretchability . 12))
	top-system-spacing.basic-distance = #13
    }

    \header {
	title = "Variation 16"
	subtitle = "   "
	subsubtitle = "   "
	poet = "Overture"
    }

    \tocItem \markup { "Variation 16" \hspace #10 "Overture" }

    \score {
	\new StaffGroup \with {
            midiInstrument = #"acoustic guitar (nylon)"
            \override StaffGrouper #'staff-staff-spacing =
                #'((basic-distance . 7)
                   (minimum-distance . 5)
                   (padding . 4)
                   (stretchability . 7))
        }
	<<
	    \new Staff \with { \consists "Span_arpeggio_engraver" } << \global \guitarone >>
	    \new Staff << \new Voice { \spacing } \new Voice { \global \guitartwo } >>
	>>

	\layout {
            \context {
                \Score
                    \override NonMusicalPaperColumn #'line-break-permission = ##f
                    \override NonMusicalPaperColumn #'page-break-permission = ##f
            }
        }
        \midi { \tempo 4 = 80 }
    }
 }
