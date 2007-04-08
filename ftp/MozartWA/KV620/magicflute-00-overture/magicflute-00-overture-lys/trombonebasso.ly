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
\context Staff = trombonebasso {
	\property Staff.midiInstrument = #"trombone"
	\property Staff.instrument = #" Trombone Basso  "
	\property Staff.instr = #" TrbiB. "
	\clef "bass"
\notes <
	\GlobalI
	\context Voice=trombonebasso
	\trombonebasso
>
}
\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}
\include "MFOAllegroI.ly"
\score {
\context Staff = trombonebasso {
	\property Staff.midiInstrument = #"trombone"
	\property Staff.instrument = #" Trombone Basso  "
	\property Staff.instr = #" TrbiB. "
	\clef "bass"
\notes <
	\GlobalII
	\context Voice=trombonebasso
	\trombonebasso
>
}
\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}
\include "MFOAdagioII.ly"
\score {
\context Staff = trombonebasso {
	\property Staff.midiInstrument = #"trombone"
	\property Staff.instrument = #" Trombone Basso  "
	\property Staff.instr = #" TrbiB. "
	\clef "bass"
\notes <
	\GlobalIII
	\context Voice=trombonebasso
	\trombonebasso
>
}
\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}
\include "MFOAllegroII.ly"
\score {
\context Staff = trombonebasso {
	\property Staff.midiInstrument = #"trombone"
	\property Staff.instrument = #" Trombone Basso  "
	\property Staff.instr = #" TrbiB. "
	\clef "bass"
\notes <
	\GlobalIV
	\context Voice=trombonebasso
	\trombonebasso
>
}
\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}