\version "1.5.66"

\include "header.ly"

\include "flauto.ly"
\include "oboe.ly"
\include "fagotto.ly"
\include "violinoI.ly"
\include "violinoII.ly"
\include "viola.ly"
\include "Pamina.ly"
\include "violoncello.ly"
\include "contrabasso.ly"

flautoStaff = \context Staff = flauto <
	\property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"    Flauto     "
	\property Staff.instr = #"Fl.  "
	\clef treble
	\context Voice=one 
		\flauto
>

oboeStaff = \context Staff = oboe <
	\property Staff.midiInstrument = #"oboe"
	\property Staff.instrument = #"    Oboe     "
	\property Staff.instr = #"Ob.  "
	\clef treble
	\context Voice=one 
		\oboe
>

fagottoStaff =  \context Staff = fagotto <
	\property Staff.midiInstrument = #"bassoon"
	\property Staff.instrument = #"  Fagotto    "
	\property Staff.instr = #"Fg.  "
	\clef "bass"
	\context Voice=one 
		\fagotto
>

violinoIStaff = \context Staff = violino1 <
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino I   "
	\property Staff.instr = #"V.I "
	\clef treble
	\context Voice=one 
		\violinoI
>

violinoIIStaff = \context Staff = violino2 <
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino II  "
	\property Staff.instr = #"V.II"
	\clef treble
	\context Voice=one 
		\violinoII
>
violaStaff =  \context Staff = viola <
	\property Staff.midiInstrument = #"viola"
	\property Staff.instrument = #"    Viola    "
	\property Staff.instr = #"Vla. "
	\clef "alto"
	\context Voice=one 
		\viola
>

voiceStaff =  \context Staff = voice <
	\property Staff.midiInstrument = #"synth voice"
	\property Staff.instrument = #"   Pamina  "
	\property Staff.instr = #"Pam."
	\clef treble
	\context Voice=one
		\Pamina
>

violoncelloStaff = \context Staff = violoncello <
	\property Staff.midiInstrument = #"cello"
	\property Staff.instrument = #"Violoncello  "
	\property Staff.instr = #" Vc. "
	\clef "bass"
	\notes< 
		\context Voice=violoncello
			\violoncello
	>
>

contrabassoStaff = \context Staff = contrabasso <
	\property Staff.midiInstrument = #"contrabass"
	\property Staff.instrument = #"Contrabasso  "
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

\score {
<
	\context StaffGroup <
	\flautoStaff
	\oboeStaff
	\fagottoStaff
	>
	\context StaffGroup <
	\violini
	\violaStaff
	\violoncelloStaff
	\contrabassoStaff
	>
	\context StaffGroup <
	\voiceStaff
	>
>
\include "paper.ly"

\midi { \tempo 4=70 }
}