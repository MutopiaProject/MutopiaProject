\version "1.5.66"

\include "header.ly"

GlobalI = \notes {
	s1^#'(bold (italic (Large "Adagio")))
	s1*14 \bar "||" }
GlobalII = \notes {
	s1^#'(bold (italic (Large "Allegro")))
	s1*80 \bar "||" }
GlobalIII = \notes {
	s1^#'(bold (italic (Large "Adagio")))
	s1*5 \bar "||" }
GlobalIV = \notes {
	s1^#'(bold (italic (Large "Allegro")))
	s1*123 \bar "|." }

\include "MFOAdagioI.ly"
\score {
\context Staff=trombe {
	\property Staff.midiInstrument = #"trumpet"
	\property Staff.instrument = #'(lines "   Trombe   " "    in Es.   ")
	\property Staff.instr = #" Tbe. "
	\property Staff.transposing = #3
	\notes <
	\key c \major 
	\GlobalI
	\context Voice=one \partcombine Voice
		\context Thread=one \trombeesI
		\context Thread=two \trombeesII
>
}
\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}
\include "MFOAllegroI.ly"
\score {
\context Staff=trombe {
	\property Staff.midiInstrument = #"trumpet"
	\property Staff.instrument = #'(lines "   Trombe   " "    in Es.   ")
	\property Staff.instr = #" Tbe. "
	\property Staff.transposing = #3
	\notes <
	\key c \major 
	\GlobalII
	\context Voice=one \partcombine Voice
		\context Thread=one \trombeesI
		\context Thread=two \trombeesII
>
}
\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}
\include "MFOAdagioII.ly"
\score {
\context Staff=trombe {
	\property Staff.midiInstrument = #"trumpet"
	\property Staff.instrument = #'(lines "   Trombe   " "    in Es.   ")
	\property Staff.instr = #" Tbe. "
	\property Staff.transposing = #3
	\notes <
	\key c \major 
	\GlobalIII
	\context Voice=one \partcombine Voice
		\context Thread=one \trombeesI
		\context Thread=two \trombeesII
>
}
\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}
\include "MFOAllegroII.ly"
\score {
\context Staff=trombe {
	\property Staff.midiInstrument = #"trumpet"
	\property Staff.instrument = #'(lines "   Trombe   " "    in Es.   ")
	\property Staff.instr = #" Tbe. "
	\property Staff.transposing = #3
	\notes <
	\key c \major 
	\GlobalIV
	\context Voice=one \partcombine Voice
		\context Thread=one \trombeesI
		\context Thread=two \trombeesII
>
}
\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}