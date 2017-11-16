\version "2.18.2"

\include "guitar1.ily"
\include "guitar2.ily"

global = {
  \time 3/4
  \key g \major
  \set harmonicDots = ##t
}

\bookpart {
    \header { maintainer = "Steve Shorter and J.D. Erickson" }
    \include "../../mutopia-header.ily"
    \header {
        title = \markup \column { \null \fontsize #5 \override #'(font-name . "FreeSerif") "Aria" }
        piece = "1.7e"
    }
    \paper {
    page-count = #2
    system-count = #8
    print-first-page-number = ##t
    system-system-spacing =
	    #'((basic-distance . 25)
	    (minimum-distance . 14)
	    (padding . 4)
	    (stretchability . 12))
    top-system-spacing.basic-distance = #15
    }

    \tocItem \markup { Aria }


    \score {
	        \new StaffGroup \with {
		    midiInstrument = #"acoustic guitar (nylon)"
		    \override StaffGrouper.staff-staff-spacing =
                    #'((basic-distance . 13)
                       (minimum-distance . 8)
                       (padding . 2))
                }
	        <<
		    \new Staff << \global \guitarone >>
		    \new Staff << \global \guitartwo >>
	        >>

	    \layout { }
	    \midi { \tempo 4 = 55 }
    }
}
