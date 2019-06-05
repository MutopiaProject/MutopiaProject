\version "2.18.2"

\include "spacing-bk.ily"
\include "guitar1.ily"
\include "guitar2.ily"
\include "guitar3.ily"

global = {
  \time 3/4
  \key g \major
 \set harmonicDots = ##t
}

\bookpart {
    \header { maintainer = "Steve Shorter and J.D. Erickson" }
    \include "../../mutopia-header.ily"
	\paper {
	print-first-page-number = ##t
%	page-count = #4
	system-system-spacing =
	    #'((basic-distance . 28)
	       (minimum-distance . 18)
	       (padding . 4)
	       (stretchability . 12))
        top-system-spacing.basic-distance = #15
    }

    \header {
	title = \markup \column { \null \fontsize #5 \override #'(font-name . "FreeSerif") "Aria" }
	piece = "1.8"
	lastupdated = "2013/05"
}

\score {
    \new StaffGroup \with {
        midiInstrument = #"acoustic guitar (nylon)"
	    \override StaffGrouper.staff-staff-spacing =
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
                    \override NonMusicalPaperColumn.line-break-permission = ##f
                    \override NonMusicalPaperColumn.page-break-permission = ##f
            }
        }
    \midi { \tempo 4 = 55 }
    }
}
