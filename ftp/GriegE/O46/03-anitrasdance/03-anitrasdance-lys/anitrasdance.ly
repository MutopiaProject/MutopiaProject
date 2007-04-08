\version "1.6.5"

\include "paper16.ly"
\include "header.ly"
\include "violiniI.ly"
\include "violiniII.ly"
\include "viole.ly"
\include "violoncelli.ly"
\include "contrabassi.ly"
\include "triangolo.ly"

\score {
    < 
\context StaffGroup = group <
   \context Staff = violiniI <
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #'(lines "Violini I    " "(con sordini)" )
	\property Staff.instr = #"  Vl.I "
	\notes <
	\context Voice=one \partcombine Voice
		\context Thread=one \violinioneI
		\context Thread=two \violinioneII
>
>
   \context Staff = violiniII <
	\property Staff.midiInstrument = #"pizzicato strings"
	\property Staff.instrument = #'(lines "Violini II   " "(con sordini)" )
	\property Staff.instr = #" Vl.II "
	\notes <
	\context Voice=one \partcombine Voice
		\context Thread=one \violinitwoI
		\context Thread=two \violinitwoII
>
>
   \context Staff = viole1 <
	\property Staff.midiInstrument = #"pizzicato strings"
	\property Staff.instrument = #'(lines "Viole I      " "(senza sordini)" )
	\property Staff.instr = #"  Vla.I"
	\clef "alto"
	\notes <
	\context Voice=violeI
	\violeI
>
>
   \context Staff = viole2 <
	\property Staff.midiInstrument = #"pizzicato strings"
	\property Staff.instrument = #'(lines "Viole II    " "(senza sordini)" )
	\property Staff.instr = #" Vla.II"
	\clef "alto"
	\notes <
	\context Voice=violeII
	\violeII
>
>
   \context Staff = violoncelli1 <
	\property Staff.midiInstrument = #"pizzicato strings"
	\property Staff.instrument = #'(lines "Violoncelli I " "(senza sordini)" )
	\property Staff.instr = #" Vc. I "
	\clef "bass"
	\notes <
	\context Voice=violoncelliI
	\violoncelliI

>
>
   \context Staff = violoncelli2 <
	\property Staff.midiInstrument = #"pizzicato strings"
	\property Staff.instrument = #'(lines "Violoncelli II " "(senza sordini)" )
	\property Staff.instr = #"Vc. II "
	\clef "bass"
	\notes <
	\context Voice=violoncelliII
	\violoncelliII
>
>
   \context Staff = contrabassi <
	\property Staff.midiInstrument = #"pizzicato strings"
	\property Staff.instrument = #"Contrabassi  "
	\property Staff.instr = #"  Cb.  "
	\property Staff.transposing = #-12
	\clef "bass"
	\notes <
	\context Voice=contrabassi 
	\contrabassi
	>
>
   \context Staff = triangolo <
	\property Staff.midiInstrument = #"tinkle bell"
	\property Staff.instrument = #"Triangolo"
	\property Staff.instr = #"  Tr.  "
	\notes <
	\context Voice=triangolo
	\triangolo
	>
    >
>
>
\paper {  

	indent = 1.5 \cm
	
\translator  {
	\OrchestralScoreContext
		soloText = #"I."
		soloIIText = #"II."
		BarNumber \override #'padding = #3
		RestCollision \override #'maximum-rest-count = #1
	}
}
\midi { \tempo 4=160 }
}