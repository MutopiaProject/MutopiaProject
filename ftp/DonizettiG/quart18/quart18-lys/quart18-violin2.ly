% -*- LilyPond -*-

\version "2.16.0"

\include "defs.ily"

\layout {
    \compressFullBarRests
}

\header {
    instrument = "Violino II."
}

\include "violin2-i.ily"

\score {
    \new Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f

	\time 4/4

	\keepWithTag \edition \violinIIFirstMov
	\new Voice = "markings" { \markingsI }
        \keepWithTag \edition \tag #'edited {s1*108 \pageBreak}
    >>
    \layout { }
}
    
\score {
    \new Staff <<
        \set Staff.midiInstrument = #"violin"
	\time 4/4

	\keepWithTag \edition \unfoldRepeats \violinIIFirstMov
	\new Voice = "markings" { \markingsI }
    >>
    \midi {
    \tempo 4 = 120
    }
}

\keepWithTag \edition \tag #'edited \pageBreak

\include "violin2-ii.ily"

\score {
    \new Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f

	\time 2/4

	\keepWithTag \edition \violinIISecondMov
	\new Voice = "markings" { \markingsII }
    >>
    \layout { }
}
    
\score {
    \new Staff <<
        \set Staff.midiInstrument = #"violin"
	\time 2/4

	\keepWithTag \edition \unfoldRepeats \violinIISecondMov
	\new Voice = "markings" { \markingsII }
    >>
    \midi {
    \tempo 4 = 46
    }
}

\keepWithTag \edition \tag #'edited \pageBreak

\include "violin2-iii.ily"

\score {
    \new Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f

	\time 3/4

        \partial 4
	\keepWithTag \edition \violinIIThirdMov
	\new Voice = "markings" { \markingsIII }
    >>
    \layout { }
}
    
\score {
    \new Staff <<
        \set Staff.midiInstrument = #"violin"
	\time 3/4

        \partial 4
	\keepWithTag \edition \unfoldRepeats \violinIIThirdMov
	\new Voice = "markings" { \markingsIII }
    >>
    \midi {
    \tempo 4 = 170
    }
}

\include "violin2-iv.ily"

\score {
    \new Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f

	\time 3/4

	\keepWithTag \edition \violinIIFourthMov
	\new Voice = "markings" { \markingsIV }
        \keepWithTag \edition \tag #'edited {s2.*130 \pageBreak}
    >>
    \layout { }
}
    
\score {
    \new Staff <<
        \set Staff.midiInstrument = #"violin"
	\time 3/4

	\keepWithTag \edition \unfoldRepeats \violinIIFourthMov
	\new Voice = "markings" { \markingsIV }
    >>
    \midi {
    \tempo 4 = 110
    }
}
