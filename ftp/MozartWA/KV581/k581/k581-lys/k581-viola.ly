%%% -*- LilyPond -*-

\version "2.10.10"

\include "defs.ly"

#(set-global-staff-size 17)

\include "viola-i.ly"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"viola"
	\set Staff.instrumentName = "Viola."

	\time 4/4

	\violaFirstMov
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

\include "viola-ii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"viola"
	\set Staff.instrumentName = "Viola."

	\time 3/4

	\violaSecondMov
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

\include "viola-iii.ly"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"viola"
	\set Staff.instrumentName = "Viola."

	\time 3/4
	\partial 4

	\violaThirdMov
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


\include "viola-iv.ly"

\score {
    \context Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"viola"
	\set Staff.instrumentName = "Viola."

	\time 2/2

	\violaFourthMov
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
