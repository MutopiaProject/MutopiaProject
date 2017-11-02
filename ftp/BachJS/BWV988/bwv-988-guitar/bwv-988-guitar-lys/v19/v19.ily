\version "2.18.2"

\include "spacing-bk.ily"
\include "guitar1.ily"
\include "guitar2.ily"
\include "guitar3.ily"

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
	top-system-spacing.basic-distance = #13
	ragged-bottom = ##f
    }

    \header {
	title = "Variation 19"
	subtitle = "  "
	subsubtitle = "  "
    }

    \tocItem \markup { Variation 19 }

    \score {
	\new StaffGroup \with { midiInstrument = #"acoustic guitar (nylon)" }
	<<
	    \new Staff << \new Voice { \spacing } \new Voice {\global \guitarone } >>
	    \new Staff << \global \guitartwo >>
	    \new Staff << \global \guitarthree >>
	>>

	\layout { }
	\midi { \tempo 4 = 72 }
    }
 }
