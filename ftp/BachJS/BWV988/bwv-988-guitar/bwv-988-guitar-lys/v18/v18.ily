\version "2.18.2"

\include "spacing-bk.ily"
\include "guitar1.ily"
\include "guitar2.ily"
\include "guitar3.ily"

global = {
  \time 2/2
  \key g \major
  \clef "G_8"
}

\bookpart {
    \header { maintainer = "Steve Shorter and Benjamin Esham" }
    \include "../mutopia-header.ily"
    \paper {
        print-first-page-number = ##t
        top-system-spacing.basic-distance = #13
        ragged-bottom = ##f
    }

    \header {
	title = "Variation 18"
	subtitle = "   "
%	subsubtitle = "   "
	meter = "Canon at the Sixth"
%       poet  = "   "
%        piece = "  "
    }

    \tocItem \markup { "Variation 18" \hspace #10 "Canon at the Sixth" }

    \score {
	\new StaffGroup \with { midiInstrument = #"acoustic guitar (nylon)" }
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
        \midi { \tempo 2 = 89 }
    }
 }
