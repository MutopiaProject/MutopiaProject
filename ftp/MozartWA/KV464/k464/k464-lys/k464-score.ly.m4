% -*- LilyPond -*-

\version "1.6.6"

\include "paper16.ly"

include(defs.ly)

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

		\time 3/4
		\partial 4

		\violinIFirstMov
		\context Voice=markings { \markingsI }
	    >

	    \context Staff = violinII <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino II."
		\property Staff.instr = "Vl.II"

		\time 3/4
		\partial 4

		\violinIIFirstMov
	    >

	    \context Staff = viola <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Viola."
		\property Staff.instr = "Vla"

		\time 3/4
		\partial 4

		\violaFirstMov
	    >

	    \context Staff = cello <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Violoncello."
		\property Staff.instr = "Vc."

		\time 3/4
		\partial 4

		\celloFirstMov
	    >
	>
    >

    \midi {
       \tempo 4 = 140
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

		\time 3/4

		\violinISecondMov
		\context Voice=markings { \markingsII }
	    >

	    \context Staff = violinII <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino II."
		\property Staff.instr = "Vl.II"

		\time 3/4

		\violinIISecondMov
	    >

	    \context Staff = viola <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Viola."
		\property Staff.instr = "Vla"

		\time 3/4

		\violaSecondMov
	    >

	    \context Staff = cello <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Violoncello."
		\property Staff.instr = "Vc."

		\time 3/4

		\celloSecondMov
		\context Voice=markingsBis { \markingsIIbis }
	    >
	>
    >

    \midi {
       \tempo 4 = 130
    }

    \paper { }
}

include(violin1-iii.ly)
include(violin2-iii.ly)
include(viola-iii.ly)
include(cello-iii.ly)


\score {
    <
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = strings <
	    \context Staff = violinI <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino I."
		\property Staff.instr = "Vl.I"

		\time 2/4
		\partial 4

		\violinIThirdMov
		\context Voice=markings { \markingsIII }
	    >

	    \context Staff = violinII <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino II."
		\property Staff.instr = "Vl.II"

		\time 2/4
		\partial 4

		\violinIIThirdMov
	    >

	    \context Staff = viola <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Viola."
		\property Staff.instr = "Vla"

		\time 2/4
		\partial 4

		\violaThirdMov
	    >

	    \context Staff = cello <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Violoncello."
		\property Staff.instr = "Vc."

		\time 2/4
		\partial 4

		\celloThirdMov
	    >
	>
    >

    \midi {
       \tempo 4 = 44
    }

    \paper { }
}


include(violin1-iv.ly)
include(violin2-iv.ly)
include(viola-iv.ly)
include(cello-iv.ly)


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
       \tempo 4 = 160
    }

    \paper { }
}
