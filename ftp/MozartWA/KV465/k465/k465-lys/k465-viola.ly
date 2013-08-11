% -*- LilyPond -*-

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

	\time 3/4

	\violaFirstMov
	\context Voice = "markings" { \markingsI }
    >>

    
  \midi {
    \tempo 4 = 40
    }



    \layout { }
}

\include "viola-ii.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"viola"

	\time 3/4

	\violaSecondMov
	\context Voice = "markings" { \markingsII }
    >>

    
  \midi {
    \tempo 4 = 64
    }



    \layout { }
}

\include "viola-iii.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"viola"

	\time 3/4
	\partial 4

	\violaThirdMov
	\context Voice = "markings" { \markingsIII }
	\context Voice=markingsBis { \markingsIIIbis }
    >>

    
  \midi {
    \tempo 4 = 140
    }



    \layout { }
}

\include "viola-iv.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"viola"

	\time 2/4
	\partial 4

	\violaFourthMov
	\context Voice = "markings" { \markingsIV }
    >>

    
  \midi {
    \tempo 4 = 152
    }



    \layout { }
}
