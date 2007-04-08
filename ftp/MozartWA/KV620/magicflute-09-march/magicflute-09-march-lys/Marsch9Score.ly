\version "1.5.66"

\include "header.ly"
\include "global.ly"
\include "Marsch9.ly"

flautoStaff = \context Staff = flauto <
	\property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"   Flauto   "
	\property Staff.instr = #" Fl. "
	\context Voice=flauto
	\global
	\flauto
>

cornibassettoStaff = \context Staff = cornibassetto <
	\property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = #'(lines " Corni di Bassetto " "   in F  ")
	\property Staff.instr = #" Co.B."
  \property Staff.VoltaBracket = \turnOff
	\notes { \key c \major \time 2/2}
% I wasn't sure of the range of the Corni Di Bassettos so I used a transposing 7 down
% with a midiInstrument of the standard french horn. If this is incorrect, let me know.
		\property Staff.transposing = #-7
	\context Voice=one \cornibassetto
>

fagottiStaff = \context Staff = fagotti <
	\property Staff.midiInstrument = #"bassoon"
	\property Staff.instrument = #"  Fagotti    "
	\property Staff.instr = #" Fg. "
  \property Staff.VoltaBracket = \turnOff
	\clef "bass"
	\global
	\context Voice=one \fagotti
>

cornifStaff = \context Staff = cornif <
	\property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = #" Corni in F "
	\property Staff.instr = #"Co.F."
  \property Staff.VoltaBracket = \turnOff
	\global
	\context Voice=one \cornif
>

tromboniatStaff = \context Staff=tromboniat {
	\property Staff.midiInstrument = #"trombone"
	\property Staff.instrument = #'(lines " Tromboni Alto " "  e Tenore  ")
	\property Staff.instr = #"Trbi."
  \property Staff.VoltaBracket = \turnOff
	\clef "alto"
	\global
	\context Voice=one \trombonitenoralto
}

trombonebassoStaff = \context Staff = trombonebasso {
	\property Staff.midiInstrument = #"trombone"
	\property Staff.instrument = #" Trombone Basso  "
	\property Staff.instr = #"TrbB."
  \property Staff.VoltaBracket = \turnOff
	\clef "bass"
	\global
	\context Voice=trombonebasso
	\trombonebasso
}

violinoIStaff = \context Staff = violino1 <
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino I   "
	\property Staff.instr = #" V.I "
  \property Staff.VoltaBracket = \turnOff
	\global
	\context Voice=violinoI
	\violinoI
>

violinoIIStaff = \context Staff = violino2 <
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino II  "
	\property Staff.instr = #" V.II"
  \property Staff.VoltaBracket = \turnOff
	\global
	\context Voice=violinoII
	\violinoII
>

violaStaff =  \context Staff = viola <
	\property Staff.midiInstrument = #"viola"
	\property Staff.instrument = #"    Viola    "
	\property Staff.instr = #" Vla. "
  \property Staff.VoltaBracket = \turnOff
	\global
	\clef "alto"
	\context Voice=viola
	\viola
>

violoncelloStaff = \context Staff = violoncello <
	\property Staff.midiInstrument = #"cello"
	\property Staff.instrument = #"  Violoncello "
	\property Staff.instr = #" Vc. "
  \property Staff.VoltaBracket = \turnOff
	\global
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
  \property Staff.VoltaBracket = \turnOff
	\global
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
	\flautoStaff
	\cornibassettoStaff
	\fagottiStaff
   >
	\context StaffGroup <
	\cornifStaff
	\tromboniatStaff
	\trombonebassoStaff
   >
	\context StaffGroup <
	\violini
	\violaStaff
	\bassi
   >
>
\paper { 
	indent = 20.\mm
\translator { \OrchestralScoreContext
		BarNumber \override #'padding = #3
		RestCollision \override #'maximum-rest-count = #1
}
\translator {\StaffContext}
}

\midi { \tempo 4=65 }
}