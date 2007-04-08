
\version "1.5.63"

\include "header.ly"
\include "violiniI.ly"
\include "violiniII.ly"
\include "viole.ly"
\include "violoncelli.ly"
\include "contrabassi.ly"

\score {
    < 
\context StaffGroup = strings <
   \context Staff = violiniI <
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #'(lines "Violini I    " "(con sordini)" )
	\property Staff.instr = #"Vl.I "
	\context Voice=one \partcombine Voice
	\context Thread=one \violinioneI
	\context Thread=two \violinioneII
>

   \context Staff = violiniII <
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #'(lines "Violini II   " "(con sordini)" )
	\property Staff.instr = #"Vl.II"
	\context Voice=one \partcombine Voice
	\context Thread=one \violinitwoI
	\context Thread=two \violinitwoII
>

   \context Staff = viole <
	\property Staff.midiInstrument = #"viola"
	\property Staff.instrument = #'(lines "Viole        " "(con sordini)" )
	\property Staff.instr = #"Vla. "
	\clef "alto"
 	\context Voice=one \partcombine Voice
	\context Thread=one \violeI
	\context Thread=two \violeII
>

   \context Staff = violoncelli <
	\property Staff.midiInstrument = #"cello"
	\property Staff.instrument = #'(lines "Violoncelli  " "(con sordini)" )
	\property Staff.instr = #" Vc. "
	\clef "bass"
	\context Voice=one \partcombine Voice
	\context Thread=one \violoncelliI
	\context Thread=two \violoncelliII
	\context Thread=three \violoncelliIII
>

   \context Staff = contrabassi <
	\property Staff.midiInstrument = #"contrabass"
	\property Staff.instrument = #"Contrabassi  "
	\property Staff.instr = #" Cb. "
	\property Staff.transposing = #-12
	\clef "bass"
	\notes <
	\context Voice=contrabassi 
	\contrabassi
		>
	>
>
>
\include "paper.ly"
\include "midi.ly"
}
