\version "1.5.66"

\include "header.ly"
\include "MF7-Duett.ly"

clarinettibStaff = \context Staff = clarinettib <
	\property Staff.midiInstrument = #"clarinet"
	\property Staff.instrument = #" Clarinetti in B "
	\property Staff.instr = #" Cl. "
	\notes { \key f \major }
		\property Staff.transposing = #-2
	\context Voice=one \clarinettib
>

fagottiStaff =  \context Staff = fagotti <
	\property Staff.midiInstrument = #"bassoon"
	\property Staff.instrument = #"  Fagotti    "
	\property Staff.instr = #" Fg. "
	\clef "bass"
	\context Voice=one \fagotti
>

cornieStaff = \context Staff = cornie <
	\property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = #" Corni in E "
	\property Staff.instr = #" Co. "
	\notes { \key c \major}
		\property Staff.transposing = #3
	\context Voice=one \cornie
>

violinoIStaff = \context Staff = violino1 <
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino I   "
	\property Staff.instr = #" V.I "
	\context Voice=violinoI
	\violinoI
>

violinoIIStaff = \context Staff = violino2 <
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino II  "
	\property Staff.instr = #" V.II"
	\context Voice=violinoII
	\violinoII
>

violaStaff =  \context Staff = viola <
	\property Staff.midiInstrument = #"viola"
	\property Staff.instrument = #"    Viola    "
	\property Staff.instr = #" Vla."
	\clef "alto"
	\context Voice=viola
	\viola
>

violoncelloStaff = \context Staff = violoncello <
	\property Staff.midiInstrument = #"cello"
	\property Staff.instrument = #"  Violoncello "
	\property Staff.instr = #" Vc. "
	\clef "bass"
	\notes< 
		\context Voice=violoncello
			\violoncello
	>
>

contrabassoStaff = \context Staff = contrabasso <
	\property Staff.midiInstrument = #"contrabass"
	\property Staff.instrument = #"  Contrabasso  "
	\property Staff.instr = #" Cb. "
	\property Staff.transposing = #-12
	\clef "bass"
	\notes< 
		\context Voice=contrabasso
			\contrabasso
	>
>

violini = \context GrandStaff = violini_group <
	\violinoIStaff
	\violinoIIStaff
>

bassi = \context GrandStaff = bassi_group <
	\violoncelloStaff
	\contrabassoStaff
>

\score {
<
	\context StaffGroup <
	\clarinettibStaff
	\fagottiStaff
	\cornieStaff
	>
	\context StaffGroup <
	\violini
	\violaStaff
	\bassi
	>

	\context ChoirStaff = paminapapageno <
		\context Staff = pamina { }
		\context Lyrics = textA { }
		\context Staff = papageno { }
		\context Lyrics = textB { }
		\addlyrics

	\context Staff = pamina <
	\property Staff.midiInstrument = #"synth voice"
		\property Staff.instrument = "Pamina."
		\property Staff.instr = #" Pam."
		\property Staff.automaticMelismata = ##t
		\clef treble
		\context Voice=one \pamina >
		\context Lyrics = textA { \textA }
		\addlyrics

	\context Staff = papageno <
	\property Staff.midiInstrument = #"synth voice"
		\property Staff.instrument = "Papageno."
		\property Staff.instr = #" Pap."
		\property Staff.automaticMelismata = ##t
		\clef bass
% Staff.transposing left in in case you wish to use another instrument that may be higher.
%		\property Staff.transposing = #-12
		\context Voice=one \papageno >
		\context Lyrics = textB { \textB }
	>
>
\paper { 
	indent = 20.\mm
\translator {\OrchestralScoreContext
		BarNumber \override #'padding = #3
		RestCollision \override #'maximum-rest-count = #1
}
\translator {\StaffContext}
\translator {\LyricsContext}
\translator {\LyricsVoiceContext}
}

\midi { \tempo 4=68 }
}