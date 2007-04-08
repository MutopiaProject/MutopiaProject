\version "1.5.66"

\include "header.ly"

GlobalI = \notes {
	s1^#'(bold (italic (Large "Allegro maestoso.")))
	s1*19 \bar "||" }
GlobalII = \notes {
	s1^#'(bold (italic (Large "Arie. Larghetto.")))
	s1*29 \bar "||" }
GlobalIII = \notes {
	s1^#'(bold (italic (Large "Allegro moderato.")))
	s1*42 \bar "|." }

\include "allegromaestoso.ly"
\score {
\context Staff = voice {
	\property Staff.midiInstrument = #"synth voice"
	\property Staff.instrument = #'(lines "   Konigin  " "  der Nacht ")
	\property Staff.instr = #"KdN  "
\notes <
	\GlobalI
	\context Voice=konigindernacht
		\konigindernacht
>
}
\include "paper.ly"

\midi { \tempo 4=150 }
}

\include "arielarghetto.ly"
\score {
\context Staff = voice {
	\property Staff.midiInstrument = #"synth voice"
	\property Staff.instrument = #'(lines "   Konigin  " "  der Nacht ")
	\property Staff.instr = #"KdN  "
\notes <
	\GlobalII
	\context Voice=konigindernacht
		\konigindernacht
>
}
\include "paper.ly"
\midi { \tempo 4=72 }
}

\include "allegromoderato.ly"
\score {
\context Staff = voice {
	\property Staff.midiInstrument = #"synth voice"
	\property Staff.instrument = #'(lines "   Konigin  " "  der Nacht ")
	\property Staff.instr = #"KdN  "
\notes <
	\GlobalIII
	\context Voice=konigindernacht
		\konigindernacht
>
}
\include "paper.ly"
\midi { \tempo 4=130 }
}