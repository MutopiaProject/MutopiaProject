% -*- LilyPond -*-

\version "2.16.0"

#(set-global-staff-size 16)

\include "defs.ily"

\include "violin1-i.ily"
\include "violin2-i.ily"
\include "viola-i.ily"
\include "cello-i.ily"

\score {
    <<
	\override Score.BarNumber   #'padding = #3

	\new StaffGroup = "strings" <<

	    \new Staff = violinI <<
	        \set Staff.autoBeaming = ##f
		\set Staff.instrumentName = "Violino I."
		\set Staff.shortInstrumentName = "Vl.I"

		\time 4/4

		\keepWithTag \edition \violinIFirstMov
		\new Voice = "markings" { \markingsI }
	    >>

	    \new Staff = violinII <<
	        \set Staff.autoBeaming = ##f
		\set Staff.instrumentName = "Violino II."
		\set Staff.shortInstrumentName = "Vl.II"

		\time 4/4

		\keepWithTag \edition \violinIIFirstMov
	    >>

	    \new Staff = "viola" <<
	        \set Staff.autoBeaming = ##f
		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla"

		\time 4/4

		\keepWithTag \edition \violaFirstMov
	    >>

	    \new Staff = "cello" <<
	        \set Staff.autoBeaming = ##f
		\set Staff.instrumentName = "Violoncello."
		\set Staff.shortInstrumentName = "Vc."

		\time 4/4

		\keepWithTag \edition \celloFirstMov
	    >>
	>>
    >>

    \layout { }
}

\score {
    <<
	    \new Staff = violinI <<
                \set Staff.midiInstrument = #"violin"

		\time 4/4

		\keepWithTag \edition \unfoldRepeats \violinIFirstMov
		\new Voice = "markings" { \markingsI }
	    >>

	    \new Staff = violinII <<
                \set Staff.midiInstrument = #"violin"

		\time 4/4

		\keepWithTag \edition \unfoldRepeats \violinIIFirstMov
	    >>

	    \new Staff = "viola" <<
                \set Staff.midiInstrument = #"cello"

		\time 4/4

		\keepWithTag \edition \unfoldRepeats \violaFirstMov
	    >>

	    \new Staff = "cello" <<
                \set Staff.midiInstrument = #"cello"

		\time 4/4

		\keepWithTag \edition \unfoldRepeats \celloFirstMov
	    >>
    >>

    
  \midi {
    \tempo 4 = 120
    }
}

\include "violin1-ii.ily"
\include "violin2-ii.ily"
\include "viola-ii.ily"
\include "cello-ii.ily"

\score {
    <<
	\override Score.BarNumber   #'padding = #3

	\new StaffGroup = "strings" <<

	    \new Staff = violinI <<
	        \set Staff.autoBeaming = ##f
		\set Staff.instrumentName = "Violino I."
		\set Staff.shortInstrumentName = "Vl.I"

		\time 2/4

		\keepWithTag \edition \violinISecondMov
		\new Voice = "markings" { \markingsII }
	    >>

	    \new Staff = violinII <<
	        \set Staff.autoBeaming = ##f
		\set Staff.instrumentName = "Violino II."
		\set Staff.shortInstrumentName = "Vl.II"

		\time 2/4

		\keepWithTag \edition \violinIISecondMov
	    >>

	    \new Staff = "viola" <<
	        \set Staff.autoBeaming = ##f
		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla"

		\time 2/4

		\keepWithTag \edition \violaSecondMov
	    >>

	    \new Staff = "cello" <<
	        \set Staff.autoBeaming = ##f
		\set Staff.instrumentName = "Violoncello."
		\set Staff.shortInstrumentName = "Vc."

		\time 2/4

		\keepWithTag \edition \celloSecondMov
	    >>
	>>
    >>

    \layout { }
}

\score {
    <<
	    \new Staff = violinI <<
                \set Staff.midiInstrument = #"violin"

		\time 2/4

		\keepWithTag \edition \unfoldRepeats \violinISecondMov
		\new Voice = "markings" { \markingsII }
	    >>

	    \new Staff = violinII <<
                \set Staff.midiInstrument = #"violin"

		\time 2/4

		\keepWithTag \edition \unfoldRepeats \violinIISecondMov
	    >>

	    \new Staff = "viola" <<
                \set Staff.midiInstrument = #"cello"

		\time 2/4

		\keepWithTag \edition \unfoldRepeats \violaSecondMov
	    >>

	    \new Staff = "cello" <<
                \set Staff.midiInstrument = #"cello"

		\time 2/4

		\keepWithTag \edition \unfoldRepeats \celloSecondMov
	    >>
    >>

    
  \midi {
    \tempo 4 = 46
    }
}

\include "violin1-iii.ily"
\include "violin2-iii.ily"
\include "viola-iii.ily"
\include "cello-iii.ily"

\score {
    <<
	\override Score.BarNumber   #'padding = #3

	\new StaffGroup = "strings" <<

	    \new Staff = violinI <<
	        \set Staff.autoBeaming = ##f
		\set Staff.instrumentName = "Violino I."
		\set Staff.shortInstrumentName = "Vl.I"

		\time 3/4

		\partial 4
		\keepWithTag \edition \violinIThirdMov
		\new Voice = "markings" { \markingsIII }
	    >>

	    \new Staff = violinII <<
	        \set Staff.autoBeaming = ##f
		\set Staff.instrumentName = "Violino II."
		\set Staff.shortInstrumentName = "Vl.II"

		\time 3/4

		\partial 4
		\keepWithTag \edition \violinIIThirdMov
	    >>

	    \new Staff = "viola" <<
	        \set Staff.autoBeaming = ##f
		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla"

		\time 3/4

		\partial 4
		\keepWithTag \edition \violaThirdMov
	    >>

	    \new Staff = "cello" <<
	        \set Staff.autoBeaming = ##f
		\set Staff.instrumentName = "Violoncello."
		\set Staff.shortInstrumentName = "Vc."

		\time 3/4

		\partial 4
		\keepWithTag \edition \celloThirdMov
	    >>
	>>
    >>

    \layout { }
}

\score {
    <<
	    \new Staff = violinI <<
                \set Staff.midiInstrument = #"violin"

		\time 3/4

		\partial 4
		\keepWithTag \edition \unfoldRepeats \violinIThirdMov
		\new Voice = "markings" { \markingsIII }
	    >>

	    \new Staff = violinII <<
                \set Staff.midiInstrument = #"violin"

		\time 3/4

		\partial 4
		\keepWithTag \edition \unfoldRepeats \violinIIThirdMov
	    >>

	    \new Staff = "viola" <<
                \set Staff.midiInstrument = #"cello"

		\time 3/4

		\partial 4
		\keepWithTag \edition \unfoldRepeats \violaThirdMov
	    >>

	    \new Staff = "cello" <<
                \set Staff.midiInstrument = #"cello"

		\time 3/4

		\partial 4
		\keepWithTag \edition \unfoldRepeats \celloThirdMov
	    >>
    >>

    
  \midi {
    \tempo 4 = 170
    }
}

\include "violin1-iv.ily"
\include "violin2-iv.ily"
\include "viola-iv.ily"
\include "cello-iv.ily"

\score {
    <<
	\override Score.BarNumber   #'padding = #3

	\new StaffGroup = "strings" <<

	    \new Staff = violinI <<
	        \set Staff.autoBeaming = ##f
		\set Staff.instrumentName = "Violino I."
		\set Staff.shortInstrumentName = "Vl.I"

		\time 3/4

		\keepWithTag \edition \violinIFourthMov
		\new Voice = "markings" { \markingsIV }
	    >>

	    \new Staff = violinII <<
	        \set Staff.autoBeaming = ##f
		\set Staff.instrumentName = "Violino II."
		\set Staff.shortInstrumentName = "Vl.II"

		\time 3/4

		\keepWithTag \edition \violinIIFourthMov
	    >>

	    \new Staff = "viola" <<
	        \set Staff.autoBeaming = ##f
		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla"

		\time 3/4

		\keepWithTag \edition \violaFourthMov
	    >>

	    \new Staff = "cello" <<
	        \set Staff.autoBeaming = ##f
		\set Staff.instrumentName = "Violoncello."
		\set Staff.shortInstrumentName = "Vc."

		\time 3/4

		\keepWithTag \edition \celloFourthMov
	    >>
	>>
    >>

    \layout { }
}

\score {
    <<
	    \new Staff = violinI <<
                \set Staff.midiInstrument = #"violin"

		\time 3/4

		\keepWithTag \edition \unfoldRepeats \violinIFourthMov
		\new Voice = "markings" { \markingsIV }
	    >>

	    \new Staff = violinII <<
                \set Staff.midiInstrument = #"violin"

		\time 3/4

		\keepWithTag \edition \unfoldRepeats \violinIIFourthMov
	    >>

	    \new Staff = "viola" <<
                \set Staff.midiInstrument = #"cello"

		\time 3/4

		\keepWithTag \edition \unfoldRepeats \violaFourthMov
	    >>

	    \new Staff = "cello" <<
                \set Staff.midiInstrument = #"cello"

		\time 3/4

		\keepWithTag \edition \unfoldRepeats \celloFourthMov
	    >>
    >>

    
  \midi {
    \tempo 4 = 110
    }
}
