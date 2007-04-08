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
\context Staff=trombone {
	\property Staff.midiInstrument = #"trombone"
	\property Staff.instrument = #'(lines " Trombone Alto " "  e Tenore  ")
	\property Staff.instr = #" Trbi. "
\notes <
	\GlobalI
	\clef "alto"
	\context Voice=one \partcombine Voice
		\context Thread=one \trombonetenor
		\context Thread=two \trombonealto
>
}
\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}
\include "MFOAllegroI.ly"
\score {
\context Staff=trombone {
	\property Staff.midiInstrument = #"trombone"
	\property Staff.instrument = #'(lines " Trombone Alto " "  e Tenore  ")
	\property Staff.instr = #" Trbi. "
\notes <
	\GlobalII
	\clef "alto"
	\context Voice=one \partcombine Voice
		\context Thread=one \trombonetenor
		\context Thread=two \trombonealto
>
}
\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}
\include "MFOAdagioII.ly"
\score {
\context Staff=trombone {
	\property Staff.midiInstrument = #"trombone"
	\property Staff.instrument = #'(lines " Trombone Alto " "  e Tenore  ")
	\property Staff.instr = #" Trbi. "
\notes <
	\GlobalIII
	\clef "alto"
	\context Voice=one \partcombine Voice
		\context Thread=one \trombonetenor
		\context Thread=two \trombonealto
>
}
\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}
\include "MFOAllegroII.ly"
\score {
\context Staff=trombone {
	\property Staff.midiInstrument = #"trombone"
	\property Staff.instrument = #'(lines " Trombone Alto " "  e Tenore  ")
	\property Staff.instr = #" Trbi. "
\notes <
	\GlobalIV
	\clef "alto"
	\context Voice=one \partcombine Voice
		\context Thread=one \trombonetenor
		\context Thread=two \trombonealto
>
}
\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}