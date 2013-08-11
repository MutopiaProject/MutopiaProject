% -*- LilyPond -*-

\version "2.16.0"

\include "defs.ily"

\header {
    instrument = "Violino I."
}

\layout {
    \compressFullBarRests
}

\include "violin1-i.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\time 3/4

	\violinIFirstMov
	\context Voice = "markings" { \markingsI }
    >>

    
  \midi {
    \tempo 4 = 40
    }



    \layout { }
}

\include "violin1-ii.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\time 3/4

	\violinISecondMov
	\context Voice = "markings" { \markingsII }
    >>

    
  \midi {
    \tempo 4 = 64
    }



    \layout { }
}

\include "violin1-iii.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\time 3/4
	\partial 4

	\violinIThirdMov
	\context Voice = "markings" { \markingsIII }
	\context Voice=markingsBis { \markingsIIIbis }
    >>

    
  \midi {
    \tempo 4 = 140
    }



    \layout { }
}

\include "violin1-iv.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\time 2/4
	\partial 4

	\violinIFourthMov
	\context Voice = "markings" { \markingsIV }
    >>

    
  \midi {
    \tempo 4 = 152
    }



    \layout { }
}
