\version "2.16.0"

#(set-global-staff-size 16)

\include "defs.ily"


\include "violin1-i.ily"
\include "violin2-i.ily"
\include "viola-i.ily"
\include "cello-i.ily"

\score {
    <<
        \globalI
	\override Score.BarNumber   #'padding = #3

	\context StaffGroup = "strings" <<

	    \context Staff = violinI <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino I."
		\set Staff.shortInstrumentName = "Vl.I"
		\KeyI
		\markingsI
		\violinIFirstMov
	    >>

	    \context Staff = violinII <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino II."
		\set Staff.shortInstrumentName = "Vl.II"
		\KeyI
		\violinIIFirstMov
	    >>

	    \context Staff = "viola" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla"
		\KeyI
		\violaFirstMov
	    >>

	    \context Staff = "cello" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Violoncello."
		\set Staff.shortInstrumentName = "Vc."
		\KeyI
		\celloFirstMov
	    >>
	>>
    >>

    
  \midi {
    \tempo 4 = 120
    }



    \layout { }
}


\include "violin1-ii.ily"
\include "violin2-ii.ily"
\include "viola-ii.ily"
\include "cello-ii.ily"

\score {
    <<
        \globalII
	\override Score.BarNumber   #'padding = #3

	\context StaffGroup = "strings" <<
	    \context Staff = violinI <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino I."
		\set Staff.shortInstrumentName = "Vl.I"
		\KeyII
		\markingsII
		\violinISecondMov
	    >>

	    \context Staff = violinII <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino II."
		\set Staff.shortInstrumentName = "Vl.II"
		\KeyII
		\violinIISecondMov
	    >>

	    \context Staff = "viola" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla"
		\KeyII
		\violaSecondMov
	    >>

	    \context Staff = "cello" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Violoncello."
		\set Staff.shortInstrumentName = "Vc."
		\KeyII
		\celloSecondMov
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
        \globalIII
	\override Score.BarNumber   #'padding = #3

	\context StaffGroup = "strings" <<
	    \context Staff = violinI <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino I."
		\set Staff.shortInstrumentName = "Vl.I"
		\KeyIII
		\markingsIII
		\violinIThirdMov
	    >>

	    \context Staff = violinII <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino II."
		\set Staff.shortInstrumentName = "Vl.II"
		\KeyIII
		\violinIIThirdMov
	    >>

	    \context Staff = "viola" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla"
		\KeyIII
		\violaThirdMov
	    >>

	    \context Staff = "cello" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Violoncello."
		\set Staff.shortInstrumentName = "Vc."
		\KeyIII
		\celloThirdMov
	    >>
	>>
    >>

    
  \midi {
    \tempo 4 = 50
    }



    \layout { }
}


\include "violin1-iv.ily"
\include "violin2-iv.ily"
\include "viola-iv.ily"
\include "cello-iv.ily"


\score {
    <<
        \globalIV
	\override Score.BarNumber   #'padding = #3

	\context StaffGroup = "strings" <<

	    \context Staff = violinI <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino I."
		\set Staff.shortInstrumentName = "Vl.I"
		\KeyIV
		\markingsIV
		\violinIFourthMov	
	    >>

	    \context Staff = violinII <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino II."
		\set Staff.shortInstrumentName = "Vl.II"
		\KeyIV
		\violinIIFourthMov
	    >>

	    \context Staff = "viola" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla"
		\KeyIV
		\violaFourthMov
	    >>

	    \context Staff = "cello" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Violoncello."
		\set Staff.shortInstrumentName = "Vc."
		\KeyIV
		\celloFourthMov
	    >>
	>>
    >>

    
  \midi {
    \tempo 2 = 120
    }



    \layout { }
}
