\version "2.18.2"

\include "spacing-bk.ily"
\include "guitar1.ily"
\include "guitar2.ily"
\include "guitar3.ily"

global = {
  \time 2/4
  \key g \major
  \clef "G_8"
}

\bookpart {
    \header { maintainer = "Steve Shorter and J.D. Erickson" }
    \include "../mutopia-header.ily"
    \paper {
	print-first-page-number = ##t
	top-system-spacing =
                #'((basic-distance . 14)
                   (minimum-distance . 10)
                   (padding . 6)
                   (stretchability . 12))
        ragged-bottom = ##f
    }

    \header {
      title = "Variation 02"
      subtitle = " "
    }

    \tocItem \markup { Variation 02 }

    \score {
	\new StaffGroup \with { midiInstrument = #"acoustic guitar (nylon)" }
	<<
	    \new Staff << \new Voice { \spacing } \new Voice {\global \guitarone } >>
	    \new Staff << \global \guitartwo >>
	    \new Staff << \global \guitarthree >>
	>>

    \layout {
	\context {
	    \Score
		\override NonMusicalPaperColumn #'line-break-permission = ##f
		\override NonMusicalPaperColumn #'page-break-permission = ##f
            }
    }
    \midi { \tempo 4 = 90 }
    }
}
