\version "2.16.0"

\include "defs.ily"

\header {
    instrument = "Viola."
}

\layout {
    \compressFullBarRests
}

\include "viola-i.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"viola"

	\time 2/2

	\violaFirstMov
	\context Voice = "markings" { \markingsI }
    >>

    
  \midi {
    \tempo 2 = 60
    }



    \layout { }
}

\include "viola-ii.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"viola"

	\time 6/8

	\violaSecondMov
	\context Voice = "markings" { \markingsII }
    >>

    
  \midi {
    \tempo 4. = 30
    }



    \layout { }
}

\include "viola-iii.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"viola"

	\time 3/4
	\partial 16*5

	\violaThirdMov
	\context Voice = "markings" { \markingsIII }
	\context Voice=markingsBis { \markingsIIIbis }
    >>

    
  \midi {
    \tempo 4 = 120
    }



    \layout { }
}

\include "viola-iv.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"viola"

	\time 2/4

	\violaFourthMov
	\context Voice = "markings" { \markingsIV }
    >>

    
  \midi {
    \tempo 4 = 144
    }



    \layout { }
}

