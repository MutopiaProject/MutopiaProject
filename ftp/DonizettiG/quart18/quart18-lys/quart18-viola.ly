% -*- LilyPond -*-

\version "2.16.0"

\include "defs.ily"

\layout {
    \compressFullBarRests
}

\header {
    instrument = "Viola."
}

\include "viola-i.ily"

\score {
    \new Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f

	\time 4/4

	\keepWithTag \edition \violaFirstMov
	\new Voice = "markings" { \markingsI }
        \keepWithTag \edition \tag #'edited {s1*108 \pageBreak s1*92 \pageBreak}
    >>
    \layout { }
}
    
\score {
    \new Staff <<
        \set Staff.midiInstrument = #"viola"
	\time 4/4

	\keepWithTag \edition \unfoldRepeats \violaFirstMov
	\new Voice = "markings" { \markingsI }
    >>
    \midi {
    \tempo 4 = 120
    }
}

\include "viola-ii.ily"

\score {
    \new Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f

	\time 2/4

	\keepWithTag \edition \violaSecondMov
	\new Voice = "markings" { \markingsII }
    >>
    \layout { }
}
    
\score {
    \new Staff <<
        \set Staff.midiInstrument = #"viola"
	\time 2/4

	\keepWithTag \edition \unfoldRepeats \violaSecondMov
	\new Voice = "markings" { \markingsII }
    >>
    \midi {
    \tempo 4 = 46
    }
}

\keepWithTag \edition \tag #'edited \pageBreak

\include "viola-iii.ily"

\score {
    \new Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f

	\time 3/4

        \partial 4
	\keepWithTag \edition \violaThirdMov
	\new Voice = "markings" { \markingsIII }
    >>
    \layout { }
}
    
\score {
    \new Staff <<
        \set Staff.midiInstrument = #"viola"
	\time 3/4

        \partial 4
	\keepWithTag \edition \unfoldRepeats \violaThirdMov
	\new Voice = "markings" { \markingsIII }
    >>
    \midi {
    \tempo 4 = 170
    }
}

\include "viola-iv.ily"

\score {
    \new Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f

	\time 3/4

	\keepWithTag \edition \violaFourthMov
	\new Voice = "markings" { \markingsIV }
        \keepWithTag \edition \tag #'edited {s2.*70 \pageBreak s2.*82 \pageBreak}
    >>
    \layout { }
}
    
\score {
    \new Staff <<
        \set Staff.midiInstrument = #"viola"
	\time 3/4

	\keepWithTag \edition \unfoldRepeats \violaFourthMov
	\new Voice = "markings" { \markingsIV }
    >>
    \midi {
    \tempo 4 = 110
    }
}
