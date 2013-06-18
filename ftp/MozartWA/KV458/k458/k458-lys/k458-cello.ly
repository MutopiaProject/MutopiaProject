\version "2.16.0"

\include "defs.ly"

\header {
    instrument = "Cello."
}

\layout {
    \compressFullBarRests
}

\include "cello-i.ly"

\score {
    \context Staff <<
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"cello"

	\time 6/8
	\partial 8

	\celloFirstMov
	\context Voice = "markings" { \markingsI }
    >>

    
  \midi {
    \tempo 4 = 140
    }



    \layout { }
}

\include "cello-ii.ly"

\score {
    \context Staff <<
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"cello"

	\time 3/4

	\removeWithTag #'score \celloSecondMov
	\context Voice = "markings" { \markingsII }
	\context Voice=markingsBis { \markingsIIbisSolo }
    >>

    
  \midi {
    \tempo 4 = 120
    }



    \layout { }
}

\include "cello-iii.ly"

\score {
    \context Staff <<
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"cello"

	\celloThirdMov
	\context Voice = "markings" { \markingsIII }
    >>

    
  \midi {
    \tempo 4 = 40
    }



    \layout { }
}


\include "cello-iv.ly"

\score {
    \context Staff <<
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"cello"

	\time 2/4

	\celloFourthMov
	\context Voice = "markings" { \markingsIV }
    >>

    
  \midi {
    \tempo 4 = 140
    }



    \layout { }
}
