\version "1.5.66"

\include "header.ly"

\include "allegromaestoso.ly"
\score {
\context Staff = oboi {
	\property Staff.midiInstrument = #"oboe"
	\property Staff.instrument = #"    Oboi     "
	\property Staff.instr = #"Ob.  "
	\context Voice=one \partcombine Voice
		\context Thread=one \oboeI
		\context Thread=two \oboeII
}
\include "paper.ly"

\midi { \tempo 4=150 }
}

\include "arielarghetto.ly"
\score {
\context Staff = oboi {
	\property Staff.midiInstrument = #"oboe"
	\property Staff.instrument = #"    Oboi     "
	\property Staff.instr = #"Ob.  "
	\context Voice=one \partcombine Voice
		\context Thread=one \oboeI
		\context Thread=two \oboeII
}
\include "paper.ly"
\midi { \tempo 4=72 }
}

\include "allegromoderato.ly"
\score {
\context Staff = oboi {
	\property Staff.midiInstrument = #"oboe"
	\property Staff.instrument = #"    Oboi     "
	\property Staff.instr = #"Ob.  "
	\context Voice=one \partcombine Voice
		\context Thread=one \oboeI
		\context Thread=two \oboeII
}
\include "paper.ly"
\midi { \tempo 4=130 }
}
