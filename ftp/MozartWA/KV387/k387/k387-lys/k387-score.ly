\version "1.5.58"

\include "paper16.ly"

\include "defs.ly"


\include "violin1-i.ly"
\include "violin2-i.ly"
\include "viola-i.ly"
\include "cello-i.ly"

\score {
    <
        \globalI
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = strings <

	    \context Staff = violinI <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino I."
		\property Staff.instr = "Vl.I"
		\KeyI
		\markingsI
		\violinIFirstMov
	    >

	    \context Staff = violinII <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino II."
		\property Staff.instr = "Vl.II"
		\KeyI
		\violinIIFirstMov
	    >

	    \context Staff = viola <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Viola."
		\property Staff.instr = "Vla"
		\KeyI
		\violaFirstMov
	    >

	    \context Staff = cello <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Violoncello."
		\property Staff.instr = "Vc."
		\KeyI
		\celloFirstMov
	    >
	>
    >

    \midi {
       \tempo 4 = 120
    }

    \paper { }
}


\include "violin1-ii.ly"
\include "violin2-ii.ly"
\include "viola-ii.ly"
\include "cello-ii.ly"

\score {
    <
        \globalII
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = strings <
	    \context Staff = violinI <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino I."
		\property Staff.instr = "Vl.I"
		\KeyII
		\markingsII
		\violinISecondMov
	    >

	    \context Staff = violinII <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino II."
		\property Staff.instr = "Vl.II"
		\KeyII
		\violinIISecondMov
	    >

	    \context Staff = viola <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Viola."
		\property Staff.instr = "Vla"
		\KeyII
		\violaSecondMov
	    >

	    \context Staff = cello <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Violoncello."
		\property Staff.instr = "Vc."
		\KeyII
		\celloSecondMov
	    >
	>
    >

    \midi {
       \tempo 4 = 120
    }

    \paper { }
}



\include "violin1-iii.ly"
\include "violin2-iii.ly"
\include "viola-iii.ly"
\include "cello-iii.ly"


\score {
    <
        \globalIII
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = strings <
	    \context Staff = violinI <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino I."
		\property Staff.instr = "Vl.I"
		\KeyIII
		\markingsIII
		\violinIThirdMov
	    >

	    \context Staff = violinII <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino II."
		\property Staff.instr = "Vl.II"
		\KeyIII
		\violinIIThirdMov
	    >

	    \context Staff = viola <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Viola."
		\property Staff.instr = "Vla"
		\KeyIII
		\violaThirdMov
	    >

	    \context Staff = cello <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Violoncello."
		\property Staff.instr = "Vc."
		\KeyIII
		\celloThirdMov
	    >
	>
    >

    \midi {
       \tempo 4 = 50
    }

    \paper { }
}


\include "violin1-iv.ly"
\include "violin2-iv.ly"
\include "viola-iv.ly"
\include "cello-iv.ly"


\score {
    <
        \globalIV
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = strings <

	    \context Staff = violinI <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino I."
		\property Staff.instr = "Vl.I"
		\KeyIV
		\markingsIV
		\violinIFourthMov	
	    >

	    \context Staff = violinII <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino II."
		\property Staff.instr = "Vl.II"
		\KeyIV
		\violinIIFourthMov
	    >

	    \context Staff = viola <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Viola."
		\property Staff.instr = "Vla"
		\KeyIV
		\violaFourthMov
	    >

	    \context Staff = cello <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Violoncello."
		\property Staff.instr = "Vc."
		\KeyIV
		\celloFourthMov
	    >
	>
    >

    \midi {
       \tempo 2 = 120
    }

    \paper { }
}
