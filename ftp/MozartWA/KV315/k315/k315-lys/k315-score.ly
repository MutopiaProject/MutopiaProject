% -*- LilyPond -*-

\version "1.7.30"

\include "paper16.ly"

\include "defs.ly"

\include "oboi.ly"
\include "horns.ly"
\include "flute.ly"
\include "violin1.ly"
\include "violin2.ly"
\include "viola.ly"
\include "basso.ly"

\score {
    <
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = winds <

	    \context Staff = oboi <
                \property Staff.midiInstrument = #"oboe"
		\property Staff.instrument = "Oboi"
		\property Staff.instr = "Ob."

		\time 2/4
		
		\oboiPart

		\context Voice=markings { \markings }
	    >

	    \context Staff = horns {
                \property Staff.midiInstrument = #"french horn"
		\property Staff.instrument = "Corni in C"
		\property Staff.instr = "Crn."

		\time 2/4
		
		\hornsPart
	    }
	>

	\context StaffGroup = solo <
	    \context Staff = flute {
                \property Staff.midiInstrument = #"flute"
		\property Staff.instrument = 
		    \markup { \center << "Flauto traverso"
					 "principale." >> }

		\property Staff.instr = "Fl."

		\time 2/4

		\flutePart
	    }
	>

	\context StaffGroup = strings <

	    \context Staff = violinI <
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino I."
		\property Staff.instr = "Vl.I"

		\time 2/4

		\violinIPart
	    >

	    \context Staff = violinII <
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = "Violino II."
		\property Staff.instr = "Vl.II"

		\time 2/4

		\violinIIPart
	    >

	    \context Staff = viola <
                \property Staff.midiInstrument = #"viola"
		\property Staff.instrument = "Viola."
		\property Staff.instr = "Vla"

		\time 2/4

		\violaPart
	    >

	    \context Staff = basso <
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = 
		    \markup { \center << "Violoncello"
					 "e Basso." >> }

		\property Staff.instr = "Vc. Bs."

		\time 2/4

		\bassoPart
	    >
	>
    >

    \midi {
       \tempo 4 = 46
    }

    \paper { }
}
