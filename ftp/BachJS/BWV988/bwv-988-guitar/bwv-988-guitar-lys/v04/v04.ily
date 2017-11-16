\version "2.18.2"

\include "guitar1.ily"
\include "guitar2.ily"
\include "guitar3.ily"
\include "guitar4.ily"

global = {
  \time 3/8
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
        ragged-bottom = ##f
        top-system-spacing.basic-distance = #12
     }

    \header {
	title = "Variation 04"
    }

    \tocItem \markup { Variation 04 }

    \score {
	\new StaffGroup \with { midiInstrument = #"acoustic guitar (nylon)" }
	<<
	    \new Staff << \global \guitarone >>
	    \new Staff << \global \guitartwo >>
	    \new Staff << \global \guitarthree >>
	    \new Staff << \global \guitarfour >>
	>>

	\layout { }
	\midi { \tempo 4 = 70 }
    }
}
