\version "2.18.2"

\include "guitar1.ily"
\include "guitar2.ily"

global = { \clef "G_8" }

\bookpart {
    \header { maintainer = "Steve Shorter" }
    \include "../mutopia-header.ily"
    \paper { indent = 0 }
    \header {
	title = "Table of Ornaments"
	subtitle = " "
	subsubtitle = " "
    }

   \tocItem \markup { Table of Ornaments }

    \markup { \column {
	    " "
	    " "
	    \fontsize #1 {
	    " "
	    "         This table of ornaments is taken from J. S. Bach's \"Klavierbüchlein für Wilhelm Friedemann"
	    "Bach\", written for Bach's eldest son. It was meant to be schematic rather than literal."
	    "Ornaments in this period were typically improvised. Even when notated the length of the"
	    "ornament and its articulation was dependent on its context and the performers preference."
	    }
	    \null\null\null\null\null
        }
    }
    \score {
	\new StaffGroup \with {
	    \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 10)
		   (minimum-distance . 8)
		   (padding . 6))
            }
	<<
	    \new Staff \with { \remove "Time_signature_engraver" }
		<< \global \guitarone >>
	    \new Staff \with { \remove "Time_signature_engraver" }
		<< \global \guitartwo >>
	>>


	\layout { }
    }
}
