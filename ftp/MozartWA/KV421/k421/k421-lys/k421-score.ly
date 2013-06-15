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

		\violinIFirstMov
		\context Voice = "markings" { \markingsI }
	    >>

	    \context Staff = violinII <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino II."
		\set Staff.shortInstrumentName = "Vl.II"

		\violinIIFirstMov
	    >>

	    \context Staff = "viola" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla"

		\violaFirstMov
	    >>

	    \context Staff = "cello" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Violoncello."
		\set Staff.shortInstrumentName = "Vc."

		\celloFirstMov
	    >>
	>>
    >>

    
  \midi {
    \tempo 4 = 90
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

		\violinISecondMov
		\context Voice = "markings" { \markingsII }
	    >>

	    \context Staff = violinII <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino II."
		\set Staff.shortInstrumentName = "Vl.II"

		\violinIISecondMov
	    >>

	    \context Staff = "viola" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla"

		\violaSecondMov
	    >>

	    \context Staff = "cello" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Violoncello."
		\set Staff.shortInstrumentName = "Vc."

		\celloSecondMov
	    >>
	>>
    >>

    
  \midi {
    \tempo 4 = 70
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
		\context Voice=markingsBis { \markingsIIIbis }
	    >>
	>>
    >>

    
  \midi {
    \tempo 4 = 130
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

		\violinIFourthMov	
		\context Voice = "markings" { \markingsIV }
	    >>

	    \context Staff = violinII <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino II."
		\set Staff.shortInstrumentName = "Vl.II"

		\violinIIFourthMov
	    >>

	    \context Staff = "viola" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla"

		\violaFourthMov
	    >>

	    \context Staff = "cello" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Violoncello."
		\set Staff.shortInstrumentName = "Vc."

		\celloFourthMov
	    >>
	>>
    >>

    
  \midi {
    \tempo 4 = 100
    }



    \layout { }
}
