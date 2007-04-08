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
	\context Staff = clarinetti  {
	\property Staff.midiInstrument = #"clarinet"
	\property Staff.instrument = #'(lines " Clarinetti " "  in B  ")
	\property Staff.instr = #"  Cl.  "
	\property Staff.transposing = #-2
	\notes <
	\key f \major 
	\GlobalI
	\context Voice=one \partcombine Voice
		\context Thread=one \clarinettibI
		\context Thread=two \clarinettibII
>
}
\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}
\include "MFOAllegroI.ly"
\score {
	\context Staff = clarinetti  {
	\property Staff.midiInstrument = #"clarinet"
	\property Staff.instrument = #'(lines " Clarinetti " "  in B  ")
	\property Staff.instr = #"  Cl.  "
	\property Staff.transposing = #-2
	\notes <
	\key f \major 
	\GlobalII
	\context Voice=one \partcombine Voice
		\context Thread=one \clarinettibI
		\context Thread=two \clarinettibII
>
}
\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}
\include "MFOAdagioII.ly"
\score {
	\context Staff = clarinetti  {
	\property Staff.midiInstrument = #"clarinet"
	\property Staff.instrument = #'(lines " Clarinetti " "  in B  ")
	\property Staff.instr = #"  Cl.  "
	\property Staff.transposing = #-2
	\notes <
	\key f \major 
	\GlobalIII
	\context Voice=one \partcombine Voice
		\context Thread=one \clarinettibI
		\context Thread=two \clarinettibII
>
}
\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}
\include "MFOAllegroII.ly"

\score {
	\context Staff = clarinetti  {
	\property Staff.midiInstrument = #"clarinet"
	\property Staff.instrument = #'(lines " Clarinetti " "  in B  ")
	\property Staff.instr = #"  Cl.  "
	\property Staff.transposing = #-2
	\notes <
	\key f \major 
	\GlobalIV
	\context Voice=one \partcombine Voice
		\context Thread=one \clarinettibI
		\context Thread=two \clarinettibII
>
}
\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}