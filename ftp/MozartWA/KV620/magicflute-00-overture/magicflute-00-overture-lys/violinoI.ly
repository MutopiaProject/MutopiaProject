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
\context Staff = violino1 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #"  Violino I  "
	\property Staff.instr = #"  Vl. I  "
\notes <
	\GlobalI
	\context Voice=violinoi
	\violinoI
>
}
\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}
\include "MFOAllegroI.ly"
\score {
\context Staff = violino1 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #"  Violino I  "
	\property Staff.instr = #"  Vl. I  "
\notes <
	\GlobalII
	\context Voice=violinoi
	\violinoI
>
}
\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}
\include "MFOAdagioII.ly"
\score {
\context Staff = violino1 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #"  Violino I  "
	\property Staff.instr = #"  Vl. I  "
\notes <
	\GlobalIII
	\context Voice=violinoi
	\violinoI
>
}
\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}
\include "MFOAllegroII.ly"
\score {
\context Staff = violino1 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #"  Violino I  "
	\property Staff.instr = #"  Vl. I  "
\notes <
	\GlobalIV
	\context Voice=violinoi
	\violinoI
>
}
\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}