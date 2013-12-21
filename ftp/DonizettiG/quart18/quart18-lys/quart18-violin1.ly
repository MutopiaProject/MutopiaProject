% -*- LilyPond -*-

\version "2.16.0"

\include "defs.ily"

\layout {
    \compressFullBarRests
}

\header {
	instrument = "Violino I."
}

\include "violin1-i.ily"

\score {
    \new Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f

	\time 4/4

	\keepWithTag \edition \violinIFirstMov
	\new Voice = "markings" { \markingsI }
	\keepWithTag \edition \tag #'edited {s1*51 \pageBreak s1*55 \pageBreak
                                             s1*53 \pageBreak s1*55 \pageBreak}
    >>
    \layout { }
}

\score {
    \new Staff <<
        \set Staff.midiInstrument = #"violin"
	\time 4/4

	\keepWithTag \edition \unfoldRepeats \violinIFirstMov
	\new Voice = "markings" { \markingsI }
    >>
    \midi {
    \tempo 4 = 120
    }
}

\keepWithTag \edition \tag #'edited \pageBreak

\include "violin1-ii.ily"

\score {
    \new Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f

	\time 2/4

	\keepWithTag \edition \violinISecondMov
	\new Voice = "markings" { \markingsII }
        \keepWithTag \edition \tag #'edited {s2*43 \pageBreak s2*41 \pageBreak}
    >>
    \layout { }
}
    
\score {
    \new Staff <<
        \set Staff.midiInstrument = #"violin"
	\time 2/4

	\keepWithTag \edition \unfoldRepeats \violinISecondMov
	\new Voice = "markings" { \markingsII }
    >>
    \midi {
    \tempo 4 = 46
    }
}

\include "violin1-iii.ily"

\score {
    \new Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f

	\time 3/4

        \partial 4
	\keepWithTag \edition \violinIThirdMov
	\new Voice = "markings" { \markingsIII }
    >>
    \layout { }
}
    
\score {
    \new Staff <<
        \set Staff.midiInstrument = #"violin"
	\time 3/4

        \partial 4
	\keepWithTag \edition \unfoldRepeats \violinIThirdMov
	\new Voice = "markings" { \markingsIII }
    >>
    \midi {
    \tempo 4 = 170
    }
}

\include "violin1-iv.ily"

\score {
    \new Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f

	\time 3/4

	\keepWithTag \edition \violinIFourthMov
	\new Voice = "markings" { \markingsIV }
	\keepWithTag \edition \tag #'edited {s2.*21 \pageBreak s2.*70 \pageBreak
                                             s2.*40 \pageBreak s2.*33 \pageBreak
                                             s2.*35 \pageBreak}
    >>
    \layout { }
}
    
\score {
    \new Staff <<
        \set Staff.midiInstrument = #"violin"
	\time 3/4

	\keepWithTag \edition \unfoldRepeats \violinIFourthMov
	\new Voice = "markings" { \markingsIV }
    >>
    \midi {
    \tempo 4 = 110
    }
}
