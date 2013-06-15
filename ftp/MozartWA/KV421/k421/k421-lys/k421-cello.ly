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
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"cello"

	\celloFirstMov
	\context Voice = "markings" { \markingsI }
    >>

    
  \midi {
    \tempo 4 = 90
    }



    \layout { }
}

\include "cello-ii.ly"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"cello"

	\celloSecondMov
	\context Voice = "markings" { \markingsII }
    >>

    
  \midi {
    \tempo 4 = 70
    }



    \layout { }
}

\include "cello-iii.ly"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"cello"

	\celloThirdMov
	\context Voice = "markings" { \markingsIII }
	\context Voice=markingsBis { \markingsIIIbis }
    >>

    
  \midi {
    \tempo 4 = 130
    }



    \layout { }
}

\include "cello-iv.ly"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"cello"

	\celloFourthMov
	\context Voice = "markings" { \markingsIV }
    >>

    
  \midi {
    \tempo 4 = 100
    }



    \layout { }
}
