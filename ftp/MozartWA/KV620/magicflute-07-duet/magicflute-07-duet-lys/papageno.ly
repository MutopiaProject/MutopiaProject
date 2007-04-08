\version "1.5.66"

\include "header.ly"
\include "MF7-Duett.ly"

Global = \notes {
	\partial 4. s4.
	s2. * 49 \bar "|." }

\score {
\context ChoirStaff = papageno {
	\property Staff.midiInstrument = #"synth voice"
	\property Staff.instrument = "Papageno."
	\property Staff.instr = #" Pap."
	\property Staff.automaticMelismata = ##t
	\clef bass
%	\property Staff.transposing = #-12
\notes <
	\Global \addlyrics
	\context Voice=one \papageno 
	\context Lyrics=textB \textB
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