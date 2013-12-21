% -*- LilyPond -*-

\version "2.16.0"

\include "defs.ily"

\layout {
    \compressFullBarRests
}

\header {
    instrument = "Cello."
}

\include "cello-i.ily"

\score {
    \new Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f

	\time 4/4

	\keepWithTag \edition \celloFirstMov
	\new Voice = "markings" { \markingsI }

% One page break page is hidden in viola.ily because acciaccatura confused lily
        \keepWithTag \edition \tag #'edited {s1*51 \pageBreak s1*192 \pageBreak}
    >>
    \layout { }
}
    
\score {
    \new Staff <<
        \set Staff.midiInstrument = #"cello"
	\time 4/4

	\keepWithTag \edition \unfoldRepeats \celloFirstMov
	\new Voice = "markings" { \markingsI }
    >>
    \midi {
    \tempo 4 = 120
    }
}

\include "cello-ii.ily"

\score {
    \new Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f

	\time 2/4

	\keepWithTag \edition \celloSecondMov
	\new Voice = "markings" { \markingsII }
        \keepWithTag \edition \tag #'edited {s2*51 \pageBreak}
    >>
    \layout { }
}
    
\score {
    \new Staff <<
        \set Staff.midiInstrument = #"cello"
	\time 2/4

	\keepWithTag \edition \unfoldRepeats \celloSecondMov
	\new Voice = "markings" { \markingsII }
    >>
    \midi {
    \tempo 4 = 46
    }
}

\keepWithTag \edition \tag #'edited \pageBreak

\include "cello-iii.ily"

\score {
    \new Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f

	\time 3/4

        \partial 4
	\keepWithTag \edition \celloThirdMov
	\new Voice = "markings" { \markingsIII }
    >>
    \layout { }
}
    
\score {
    \new Staff <<
        \set Staff.midiInstrument = #"cello"
	\time 3/4

        \partial 4
	\keepWithTag \edition \unfoldRepeats \celloThirdMov
	\new Voice = "markings" { \markingsIII }
    >>
    \midi {
    \tempo 4 = 170
    }
}

\include "cello-iv.ily"

\score {
    \new Staff <<
        \override Score.BarNumber   #'padding = #3
	\set Staff.autoBeaming = ##f

	\time 3/4

	\keepWithTag \edition \celloFourthMov
	\new Voice = "markings" { \markingsIV }
        \keepWithTag \edition \tag #'edited {s2.*115 \pageBreak s2.*82 \pageBreak}
    >>
    \layout { }
}
    
\score {
    \new Staff <<
        \set Staff.midiInstrument = #"cello"
	\time 3/4

	\keepWithTag \edition \unfoldRepeats \celloFourthMov
	\new Voice = "markings" { \markingsIV }
    >>
    \midi {
    \tempo 4 = 110
    }
}
