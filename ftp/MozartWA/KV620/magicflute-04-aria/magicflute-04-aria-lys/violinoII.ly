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
\context Staff = violino2 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino II  "
	\property Staff.instr = #"V.II"
\notes <
	\GlobalI
	\context Voice=one \partcombine Voice
		\context Thread=one \violinotwoI
		\context Thread=two \violinotwoII
>
}
\include "paper.ly"

\midi { \tempo 4=150 }
}

\include "arielarghetto.ly"
\score {
\context Staff = violino2 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino II  "
	\property Staff.instr = #"V.II"
\notes <
	\GlobalII
	\context Voice=one \partcombine Voice
		\context Thread=one \violinotwoI
		\context Thread=two \violinotwoII
>
}
\include "paper.ly"
\midi { \tempo 4=72 }
}

\include "allegromoderato.ly"
\score {
\context Staff = violino2 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #" Violino II  "
	\property Staff.instr = #"V.II"
\notes <
	\GlobalIII
	\context Voice=one \partcombine Voice
		\context Thread=one \violinotwoI
		\context Thread=two \violinotwoII
>
}
\include "paper.ly"
\midi { \tempo 4=130 }
}