\version "2.16.0"

\include "defs.ily"

\header {
    instrument = "Cello."
}

\layout {
    \compressFullBarRests
}

\include "cello-i.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"cello"

	\time 2/2

	\celloFirstMov
	\context Voice = "markings" { \markingsI }
    >>

    
  \midi {
    \tempo 2 = 60
    }



    \layout { }
}

\include "cello-ii.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"cello"

	\time 6/8

	\celloSecondMov
	\context Voice = "markings" { \markingsII }
    >>

    
  \midi {
    \tempo 8 = 80
    }



    \layout { }
}


\include "cello-iii.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"cello"

	\time 3/4
	\partial 16*5

	\celloThirdMov
	\context Voice = "markings" { \markingsIII }
	\context Voice=markingsBis { \markingsIIIbis }
    >>

    
  \midi {
    \tempo 4 = 120
    }



    \layout { }
}


\include "cello-iv.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"cello"

	\time 2/4

	\celloFourthMov
	\context Voice = "markings" { \markingsIV }
    >>

    
  \midi {
    \tempo 4 = 144
    }



    \layout { }
}
