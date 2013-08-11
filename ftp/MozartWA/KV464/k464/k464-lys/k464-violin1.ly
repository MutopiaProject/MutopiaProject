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
	\partial 4

	\violinIFirstMov
	\context Voice = "markings" { \markingsI }
    >>

    
  \midi {
    \tempo 4 = 140
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
	\context Voice=markingsBis { \markingsIIbis }
    >>

    
  \midi {
    \tempo 4 = 130
    }



    \layout { }
}

\include "violin1-iii.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\time 2/4
	\partial 4

	\removeWithTag #'score \violinIThirdMov
	\context Voice = "markings" { \markingsIII }
    >>

    
  \midi {
    \tempo 4 = 44
    }



    \layout { }
}

\include "violin1-iv.ily"

\score {
    \context Staff <<
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\removeWithTag #'score \violinIFourthMov
	\context Voice = "markings" { \markingsIV }
    >>

    
  \midi {
    \tempo 4 = 160
    }



    \layout { }
}
