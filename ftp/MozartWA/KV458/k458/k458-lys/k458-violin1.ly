\version "2.16.0"

\include "defs.ly"

\header {
    instrument = "Violino I."
}

\layout {
    \compressFullBarRests
}

\include "violin1-i.ly"

\score {
    \context Staff <<
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\time 6/8
	\partial 8

	\violinIFirstMov
	\context Voice = "markings" { \markingsI }
    >>

    
  \midi {
    \tempo 4 = 140
    }



    \layout { }
}

\include "violin1-ii.ly"

\score {
    \context Staff <<
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\time 3/4

	\removeWithTag #'score \violinISecondMov
	\context Voice = "markings" { \markingsII }
	\context Voice=markingsBis { \markingsIIbisSolo }
    >>

    
  \midi {
    \tempo 4 = 120
    }



    \layout { }
}

\include "violin1-iii.ly"

\score {
    \context Staff <<
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\violinIThirdMov
	\context Voice = "markings" { \markingsIII }
    >>

    
  \midi {
    \tempo 4 = 40
    }



    \layout { }
}

\include "violin1-iv.ly"

\score {
    \context Staff <<
	\set Score.skipBars = ##t
	\set Staff.autoBeaming = ##f
        \set Staff.midiInstrument = #"violin"

	\time 2/4

	\violinIFourthMov
	\context Voice = "markings" { \markingsIV }
    >>

    
  \midi {
    \tempo 4 = 140
    }



    \layout { }
}
