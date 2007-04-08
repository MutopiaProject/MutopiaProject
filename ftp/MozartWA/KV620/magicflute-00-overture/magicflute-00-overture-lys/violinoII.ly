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
\context Staff = violino2 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #"   Violino II  "
	\property Staff.instr = #"  Vl. II  "
\notes <
	\GlobalI
	\context Voice=violinoii
	\violinoII
>
}
\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}
\include "MFOAllegroI.ly"
\score {
\context Staff = violino2 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #"   Violino II  "
	\property Staff.instr = #"  Vl. II  "
\notes <
	\GlobalII
	\context Voice=violinoii
	\violinoII
>
}
\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}
\include "MFOAdagioII.ly"
\score {
\context Staff = violino2 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #"   Violino II  "
	\property Staff.instr = #"  Vl. II  "
\notes <
	\GlobalIII
	\context Voice=violinoii
	\violinoII
>
}
\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}
\include "MFOAllegroII.ly"
\score {
\context Staff = violino2 {
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #"   Violino II  "
	\property Staff.instr = #"  Vl. II  "
\notes <
	\GlobalIV
	\context Voice=violinoii
	\violinoII
>
}
\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}