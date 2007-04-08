% -*- LilyPond -*-

\version "1.7.18"

\include "paper13.ly"

\include "defs.ly"

\include "clarinet-i.ly"
\include "violin1-i.ly"
\include "violin2-i.ly"
\include "viola-i.ly"
\include "cello-i.ly"

\score {
    <
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = ensemble <

	    \context Staff = clarinet <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"clarinet"
		\property Staff.instrument = "Clarinetto in A."
		\property Staff.instr = "Cl."
		\property Staff.transposing = #-3

		\time 4/4

		\clarinetFirstMov
		\context Voice=markings { \markingsI }
	    >

	    \context Staff = violinI <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino I."
		\property Staff.instr = "Vl.I"

		\time 4/4

		\violinIFirstMov
	    >

	    \context Staff = violinII <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino II."
		\property Staff.instr = "Vl.II"

		\time 4/4

		\violinIIFirstMov
	    >

	    \context Staff = viola <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"viola"
		\property Staff.instrument = "Viola."
		\property Staff.instr = "Vla"

		\time 4/4

		\violaFirstMov
	    >

	    \context Staff = cello <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Violoncello."
		\property Staff.instr = "Vc."

		\time 4/4

		\celloFirstMov
	    >
	>
    >

    \midi {
       \tempo 4 = 120
    }

    \paper { }
}



\include "clarinet-ii.ly"
\include "violin1-ii.ly"
\include "violin2-ii.ly"
\include "viola-ii.ly"
\include "cello-ii.ly"

\score {
    <
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = ensemble <

	    \context Staff = clarinet <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"clarinet"
		\property Staff.instrument = "Clarinetto in A."
		\property Staff.instr = "Cl."
		\property Staff.transposing = #-3

		\time 3/4

		\clarinetSecondMov
		\context Voice=markings { \markingsII }
	    >

	    \context Staff = violinI <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino I."
		\property Staff.instr = "Vl.I"

		\time 3/4

		\violinISecondMov
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
                \property Staff.midiInstrument = #"viola"
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
	    >
	>
    >

    \midi {
       \tempo 4 = 55
    }

    \paper { }
}



\include "clarinet-iii.ly"
\include "violin1-iii.ly"
\include "violin2-iii.ly"
\include "viola-iii.ly"
\include "cello-iii.ly"

\score {
    <
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = ensemble <

	    \context Staff = clarinet <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"clarinet"
		\property Staff.instrument = "Clarinetto in A."
		\property Staff.instr = "Cl."
		\property Staff.transposing = #-3

		\time 3/4
		\partial 4

		\clarinetThirdMov
		\context Voice=markings { \markingsIII }
	    >

	    \context Staff = violinI <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino I."
		\property Staff.instr = "Vl.I"

		\time 3/4
		\partial 4

		\violinIThirdMov
	    >

	    \context Staff = violinII <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino II."
		\property Staff.instr = "Vl.II"

		\time 3/4
		\partial 4

		\violinIIThirdMov
	    >

	    \context Staff = viola <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"viola"
		\property Staff.instrument = "Viola."
		\property Staff.instr = "Vla"

		\time 3/4
		\partial 4

		\violaThirdMov
	    >

	    \context Staff = cello <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Violoncello."
		\property Staff.instr = "Vc."

		\time 3/4
		\partial 4

		\celloThirdMov
		\context Voice=markings { \markingsIIIbis }
	    >
	>
    >

    \midi {
       \tempo 4 = 140
    }

    \paper { }
}



\include "clarinet-iv.ly"
\include "violin1-iv.ly"
\include "violin2-iv.ly"
\include "viola-iv.ly"
\include "cello-iv.ly"

\score {
    <
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = ensemble <

	    \context Staff = clarinet <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"clarinet"
		\property Staff.instrument = "Clarinetto in A."
		\property Staff.instr = "Cl."
		\property Staff.transposing = #-3

		\time 2/2

		\clarinetFourthMov
		\context Voice=markings { \markingsIV }
	    >

	    \context Staff = violinI <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino I."
		\property Staff.instr = "Vl.I"

		\time 2/2

		\violinIFourthMov
	    >

	    \context Staff = violinII <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino II."
		\property Staff.instr = "Vl.II"

		\time 2/2

		\violinIIFourthMov
	    >

	    \context Staff = viola <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"viola"
		\property Staff.instrument = "Viola."
		\property Staff.instr = "Vla"

		\time 2/2

		\violaFourthMov
	    >

	    \context Staff = cello <
	        \property Staff.autoBeaming = ##f
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = "Violoncello."
		\property Staff.instr = "Vc."

		\time 2/2

		\celloFourthMov
	    >
	>
    >

    \midi {
       \tempo 4 = 140
    }

    \paper { }
}
