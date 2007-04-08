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
	\context Staff = contrabasso {
		\property Staff.midiInstrument = #"contrabass"
		\property Staff.instrument = #" Contrabasso   "
		\property Staff.instr = #"  Cb.  "
		\property Staff.transposing = #-12
\notes <
	\GlobalI
	\clef "bass"
		\context Voice=basso
			\basso
>
}

\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}
\include "MFOAllegroI.ly"
\score {
	\context Staff = contrabasso {
		\property Staff.midiInstrument = #"contrabass"
		\property Staff.instrument = #" Contrabasso   "
		\property Staff.instr = #"  Cb.  "
		\property Staff.transposing = #-12
\notes <
	\GlobalII
	\clef "bass"
		\context Voice=basso
			\basso
>
}

\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}
\include "MFOAdagioII.ly"
\score {
	\context Staff = contrabasso {
		\property Staff.midiInstrument = #"contrabass"
		\property Staff.instrument = #" Contrabasso   "
		\property Staff.instr = #"  Cb.  "
		\property Staff.transposing = #-12
\notes <
	\GlobalIII
	\clef "bass"
		\context Voice=basso
			\basso
>
}

\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}
\include "MFOAllegroII.ly"
\score {
	\context Staff = contrabasso {
		\property Staff.midiInstrument = #"contrabass"
		\property Staff.instrument = #" Contrabasso   "
		\property Staff.instr = #"  Cb.  "
		\property Staff.transposing = #-12
\notes <
	\GlobalIV
	\clef "bass"
		\context Voice=basso
			\basso
>
}

\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}