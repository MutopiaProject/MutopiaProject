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
\context Staff = oboi {
	\property Staff.midiInstrument = #"oboe"
	\property Staff.instrument = #"   Oboi   "
	\property Staff.instr = #"  Ob.  "
\notes <
	\GlobalI
	\context Voice=one \partcombine Voice
		\context Thread=one \oboeI
		\context Thread=two \oboeII
>
}
\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}

\include "MFOAllegroI.ly"
\score {
\context Staff = oboi {
	\property Staff.midiInstrument = #"oboe"
	\property Staff.instrument = #"   Oboi   "
	\property Staff.instr = #"  Ob.  "
\notes <
	\GlobalII
	\context Voice=one \partcombine Voice
		\context Thread=one \oboeI
		\context Thread=two \oboeII
>
}
\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}

\include "MFOAdagioII.ly"
\score {
\context Staff = oboi {
	\property Staff.midiInstrument = #"oboe"
	\property Staff.instrument = #"   Oboi   "
	\property Staff.instr = #"  Ob.  "
\notes <
	\GlobalIII
	\context Voice=one \partcombine Voice
		\context Thread=one \oboeI
		\context Thread=two \oboeII
>
}
\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}

\include "MFOAllegroII.ly"
\score {
\context Staff = oboi {
	\property Staff.midiInstrument = #"oboe"
	\property Staff.instrument = #"   Oboi   "
	\property Staff.instr = #"  Ob.  "
\notes <
	\GlobalIV
	\context Voice=one \partcombine Voice
		\context Thread=one \oboeI
		\context Thread=two \oboeII
>
}
\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}