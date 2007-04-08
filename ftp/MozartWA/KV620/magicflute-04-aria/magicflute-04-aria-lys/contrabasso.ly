\version "1.5.66"

\include "header.ly"

GlobalI = \notes {
  \property Voice.TextScript \override #'extra-offset = #'(0 . 2.5)
	s1^#'(bold (italic (Large "Allegro maestoso.")))
  \property Voice.TextScript \revert #'extra-offset
	s1*19 \bar "||" }
GlobalII = \notes {
  \property Voice.TextScript \override #'extra-offset = #'(0 . 2.5)
	s1^#'(bold (italic (Large "Arie. Larghetto.")))
  \property Voice.TextScript \revert #'extra-offset
	s1*29 \bar "||" }
GlobalIII = \notes {
  \property Voice.TextScript \override #'extra-offset = #'(0 . 2.5)
	s1^#'(bold (italic (Large "Allegro moderato.")))
  \property Voice.TextScript \revert #'extra-offset
	s1*42 \bar "|." }

\include "allegromaestoso.ly"
\score {
\context Staff = contrabasso {
	\property Staff.midiInstrument = #"contrabass"
	\property Staff.instrument = #"Contrabasso  "
	\property Staff.instr = #" Cb. "
	\property Staff.transposing = #-12
	\clef "bass"
	\notes< 
	\GlobalI
		\context Voice=contrabasso
			\contrabasso
	>
}
\include "paper.ly"

\midi { \tempo 4=150 }
}

\include "arielarghetto.ly"
\score {
\context Staff = contrabasso {
	\property Staff.midiInstrument = #"contrabass"
	\property Staff.instrument = #"Contrabasso  "
	\property Staff.instr = #" Cb. "
	\property Staff.transposing = #-12
	\clef "bass"
	\notes< 
	\GlobalII
		\context Voice=contrabasso
			\contrabasso
	>
}
\include "paper.ly"
\midi { \tempo 4=72 }
}

\include "allegromoderato.ly"
\score {
\context Staff = contrabasso {
	\property Staff.midiInstrument = #"contrabass"
	\property Staff.instrument = #"Contrabasso  "
	\property Staff.instr = #" Cb. "
	\property Staff.transposing = #-12
	\clef "bass"
	\notes< 
	\GlobalIII
		\context Voice=contrabasso
			\contrabasso
	>
}
\include "paper.ly"
\midi { \tempo 4=130 }
}