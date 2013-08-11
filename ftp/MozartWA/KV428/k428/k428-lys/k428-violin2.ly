\version "2.16.0"

\include "defs.ily"

\header {
    instrument = "Violino II."
}

\layout {
    \compressFullBarRests
}

\include "violin2-i.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\time 2/2

	\violinIIFirstMov
	\context Voice = "markings" { \markingsI }
    >>

    
  \midi {
    \tempo 2 = 60
    }



    \layout { }
}

\include "violin2-ii.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\time 6/8

	\violinIISecondMov
	\context Voice = "markings" { \markingsII }
    >>

    
  \midi {
    \tempo 4. = 30
    }



    \layout { }
}

\include "violin2-iii.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\time 3/4
	\partial 16*5

	\violinIIThirdMov
	\context Voice = "markings" { \markingsIII }
	\context Voice=markingsBis { \markingsIIIbis }
    >>

    
  \midi {
    \tempo 4 = 120
    }



    \layout { }
}

\include "violin2-iv.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\time 2/4

	\violinIIFourthMov
	\context Voice = "markings" { \markingsIV }
    >>

    
  \midi {
    \tempo 4 = 144
    }



    \layout { }
}
