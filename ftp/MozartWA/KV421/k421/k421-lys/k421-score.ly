\version "1.6.6"

\include "paper16.ly"

\include "defs.ly"


\include "violin1-i.ly"
\include "violin2-i.ly"
\include "viola-i.ly"
\include "cello-i.ly"

\score {
    <
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = strings <

	    \context Staff = violinI <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino I."
		\property Staff.instr = "Vl.I"

		\violinIFirstMov
		\context Voice=markings { \markingsI }
	    >

	    \context Staff = violinII <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino II."
		\property Staff.instr = "Vl.II"

		\violinIIFirstMov
	    >

	    \context Staff = viola <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Viola."
		\property Staff.instr = "Vla"

		\violaFirstMov
	    >

	    \context Staff = cello <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Violoncello."
		\property Staff.instr = "Vc."

		\celloFirstMov
	    >
	>
    >

    \midi {
       \tempo 4 = 90
    }

    \paper { }
}


\include "violin1-ii.ly"
\include "violin2-ii.ly"
\include "viola-ii.ly"
\include "cello-ii.ly"

\score {
    <
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = strings <
	    \context Staff = violinI <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino I."
		\property Staff.instr = "Vl.I"

		\violinISecondMov
		\context Voice=markings { \markingsII }
	    >

	    \context Staff = violinII <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino II."
		\property Staff.instr = "Vl.II"

		\violinIISecondMov
	    >

	    \context Staff = viola <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Viola."
		\property Staff.instr = "Vla"

		\violaSecondMov
	    >

	    \context Staff = cello <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Violoncello."
		\property Staff.instr = "Vc."

		\celloSecondMov
	    >
	>
    >

    \midi {
       \tempo 4 = 70
    }

    \paper { }
}



\include "violin1-iii.ly"
\include "violin2-iii.ly"
\include "viola-iii.ly"
\include "cello-iii.ly"


\score {
    <
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = strings <
	    \context Staff = violinI <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino I."
		\property Staff.instr = "Vl.I"

		\violinIThirdMov
		\context Voice=markings { \markingsIII }
	    >

	    \context Staff = violinII <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino II."
		\property Staff.instr = "Vl.II"

		\violinIIThirdMov
	    >

	    \context Staff = viola <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Viola."
		\property Staff.instr = "Vla"

		\violaThirdMov
	    >

	    \context Staff = cello <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Violoncello."
		\property Staff.instr = "Vc."

		\celloThirdMov
		\context Voice=markingsBis { \markingsIIIbis }
	    >
	>
    >

    \midi {
       \tempo 4 = 130
    }

    \paper { }
}


\include "violin1-iv.ly"
\include "violin2-iv.ly"
\include "viola-iv.ly"
\include "cello-iv.ly"


\score {
    <
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = strings <

	    \context Staff = violinI <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino I."
		\property Staff.instr = "Vl.I"

		\violinIFourthMov	
		\context Voice=markings { \markingsIV }
	    >

	    \context Staff = violinII <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino II."
		\property Staff.instr = "Vl.II"

		\violinIIFourthMov
	    >

	    \context Staff = viola <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Viola."
		\property Staff.instr = "Vla"

		\violaFourthMov
	    >

	    \context Staff = cello <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Violoncello."
		\property Staff.instr = "Vc."

		\celloFourthMov
	    >
	>
    >

    \midi {
       \tempo 4 = 100
    }

    \paper { }
}
