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
\context Staff = viola {
	\property Staff.midiInstrument = #"viola"
	\property Staff.instrument = #"    Viola   "
	\property Staff.instr = #"  Vla.  "
	\clef "alto"
\notes <
	\GlobalI
	\context Voice=viola
	\viola
>
}
\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}
\include "MFOAllegroI.ly"
\score {
\context Staff = viola {
	\property Staff.midiInstrument = #"viola"
	\property Staff.instrument = #"    Viola   "
	\property Staff.instr = #"  Vla.  "
	\clef "alto"
\notes <
	\GlobalII
	\context Voice=viola
	\viola
>
}
\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}
\include "MFOAdagioII.ly"
\score {
\context Staff = viola {
	\property Staff.midiInstrument = #"viola"
	\property Staff.instrument = #"    Viola   "
	\property Staff.instr = #"  Vla.  "
	\clef "alto"
\notes <
	\GlobalIII
	\context Voice=viola
	\viola
>
}
\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}
\include "MFOAllegroII.ly"
\score {
\context Staff = viola {
	\property Staff.midiInstrument = #"viola"
	\property Staff.instrument = #"    Viola   "
	\property Staff.instr = #"  Vla.  "
	\clef "alto"
\notes <
	\GlobalIV
	\context Voice=viola
	\viola
>
}
\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}