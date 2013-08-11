\version "2.16.0"

#(set-global-staff-size 16)

\include "defs.ily"


\include "violin1-i.ily"
\include "violin2-i.ily"
\include "viola-i.ily"
\include "cello-i.ily"

\score {
    <<

	\context StaffGroup = "strings" <<

	    \context Staff = violinI <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino I."
		\set Staff.shortInstrumentName = "Vl.I"

		\time 6/8
		\partial 8

		\violinIFirstMov
		\context Voice = "markings" { \markingsI }
	    >>

	    \context Staff = violinII <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino II."
		\set Staff.shortInstrumentName = "Vl.II"

		\time 6/8
		\partial 8

		\violinIIFirstMov
	    >>

	    \context Staff = "viola" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla"

		\time 6/8
		\partial 8

		\violaFirstMov
	    >>

	    \context Staff = "cello" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Violoncello."
		\set Staff.shortInstrumentName = "Vc."

		\time 6/8
		\partial 8

		\celloFirstMov
	    >>
	>>
    >>

    
  \midi {
    \tempo 4 = 140
    }



    \layout { }
}


\include "violin1-ii.ily"
\include "violin2-ii.ily"
\include "viola-ii.ily"
\include "cello-ii.ily"

\score {
    <<

	\context StaffGroup = "strings" <<
	    \context Staff = violinI <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino I."
		\set Staff.shortInstrumentName = "Vl.I"

		\time 3/4

		\removeWithTag #'part \violinISecondMov
		\context Voice = "markings" { \markingsII }
	    >>

	    \context Staff = violinII <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino II."
		\set Staff.shortInstrumentName = "Vl.II"

		\time 3/4

		\violinIISecondMov
	    >>

	    \context Staff = "viola" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla"

		\time 3/4

		\violaSecondMov
	    >>

	    \context Staff = "cello" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Violoncello."
		\set Staff.shortInstrumentName = "Vc."

		\time 3/4

		\removeWithTag #'part \celloSecondMov
		\context Voice=markingsBis { \markingsIIbis }
	    >>
	>>
    >>

    
  \midi {
    \tempo 4 = 120
    }



    \layout { }
}


\include "violin1-iii.ily"
\include "violin2-iii.ily"
\include "viola-iii.ily"
\include "cello-iii.ily"


\score {
    <<

	\context StaffGroup = "strings" <<
	    \context Staff = violinI <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino I."
		\set Staff.shortInstrumentName = "Vl.I"

		\violinIThirdMov
		\context Voice = "markings" { \markingsIII }
	    >>

	    \context Staff = violinII <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino II."
		\set Staff.shortInstrumentName = "Vl.II"

		\violinIIThirdMov
	    >>

	    \context Staff = "viola" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla"

		\violaThirdMov
	    >>

	    \context Staff = "cello" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Violoncello."
		\set Staff.shortInstrumentName = "Vc."

		\celloThirdMov
	    >>
	>>
    >>

    
  \midi {
    \tempo 4 = 40
    }



    \layout { }
}


\include "violin1-iv.ily"
\include "violin2-iv.ily"
\include "viola-iv.ily"
\include "cello-iv.ily"


\score {
    <<

	\context StaffGroup = "strings" <<

	    \context Staff = violinI <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino I."
		\set Staff.shortInstrumentName = "Vl.I"

		\time 2/4

		\violinIFourthMov	
		\context Voice = "markings" { \markingsIV }
	    >>

	    \context Staff = violinII <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino II."
		\set Staff.shortInstrumentName = "Vl.II"

		\time 2/4

		\violinIIFourthMov
	    >>

	    \context Staff = "viola" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla"

		\time 2/4

		\violaFourthMov
	    >>

	    \context Staff = "cello" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Violoncello."
		\set Staff.shortInstrumentName = "Vc."

		\time 2/4

		\celloFourthMov
	    >>
	>>
    >>

    
  \midi {
    \tempo 4 = 140
    }



    \layout { }
}
