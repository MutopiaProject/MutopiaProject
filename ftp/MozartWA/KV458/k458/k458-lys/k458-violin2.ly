\version "2.16.0"

\include "defs.ly"

\header {
    instrument = "Violino II."
}

\layout {
    \compressFullBarRests
}

\include "violin2-i.ly"

\score {
    \context Staff <<
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\time 6/8
	\partial 8

	\violinIIFirstMov
	\context Voice = "markings" { \markingsI }
    >>

    
  \midi {
    \tempo 4 = 140
    }



    \layout { }
}

\include "violin2-ii.ly"

\score {
    \context Staff <<
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\time 3/4

	\violinIISecondMov
	\context Voice = "markings" { \markingsII }
	\context Voice=markingsBis { \markingsIIbis }
    >>

    
  \midi {
    \tempo 4 = 120
    }



    \layout { }
}

\include "violin2-iii.ly"

\score {
    \context Staff <<
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\violinIIThirdMov
	\context Voice = "markings" { \markingsIII }
    >>

    
  \midi {
    \tempo 4 = 40
    }



    \layout { }
}

\include "violin2-iv.ly"

\score {
    \context Staff <<
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\time 2/4

	\violinIIFourthMov
	\context Voice = "markings" { \markingsIV }
    >>

    
  \midi {
    \tempo 4 = 140
    }



    \layout { }
}
