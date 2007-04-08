\version "1.5.66"

\include "header.ly"
\include "MF7-Duett.ly"

Global = \notes {
	\partial 4. s4.
	s2. * 49 \bar "|." }

\score {
\context ChoirStaff = pamina {
	\property Staff.midiInstrument = #"synth voice"
	\property Staff.instrument = " Pamina. "
	\property Staff.instr = #" Pam."
	\property Staff.automaticMelismata = ##t
	\clef treble
\notes <
	\Global \addlyrics
	\context Voice=one \pamina
	\context Lyrics=textA \textA
>
}
\paper {  
	indent = 20.\mm
\translator {
	\OrchestralScoreContext
		BarNumber \override #'padding = #3
		RestCollision \override #'maximum-rest-count = #1
	}
}
\midi {\tempo 4=68}
}