%%% -*- LilyPond -*-

\version "2.10.10"

\include "defs.ly"

#(set-global-staff-size 17)

\include "cello-i.ly"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"cello"
	\set Staff.instrumentName = "Cello."

	\time 4/4

	\celloFirstMov
	\context Voice = "markings" { \markingsI }
    >>

    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }



    \layout { }
}

\include "cello-ii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"cello"
	\set Staff.instrumentName = "Cello."

	\time 3/4

	\celloSecondMov
	\context Voice = "markings" { \markingsII }
    >>

    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 55 4)
      }
    }



    \layout { }
}

\include "cello-iii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"cello"
	\set Staff.instrumentName = "Cello."

	\time 3/4
	\partial 4

	\celloThirdMov
	\context Voice = "markings" { \markingsIII }
	\context Voice=markingsBis { \markingsIIIbis }
    >>

    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 140 4)
      }
    }



    \layout { }
}

\include "cello-iv.ly"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"cello"
	\set Staff.instrumentName = "Cello."

	\time 2/2

	\celloFourthMov
	\context Voice = "markings" { \markingsIV }
    >>

    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 140 4)
      }
    }



    \layout { }
}
