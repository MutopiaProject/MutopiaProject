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
\context Staff = timpani {
	\property Staff.midiInstrument = #"timpani"
	\property Staff.instrument = #'(lines " Timpani  " " in Es.B.")
	\property Staff.instr = #" Timp."
	\clef "bass"
	\notes <
	\key c \major
	\GlobalI 
	\context Voice=timpani
	\timpani
>
}
\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}
\include "MFOAllegroI.ly"
\score {
\context Staff = timpani {
	\property Staff.midiInstrument = #"timpani"
	\property Staff.instrument = #'(lines " Timpani  " " in Es.B.")
	\property Staff.instr = #" Timp. "
	\clef "bass"
	\notes <
	\key c \major
	\GlobalII
	\context Voice=timpani
	\timpani
>
}
\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}
\include "MFOAdagioII.ly"
\score {
\context Staff = timpani {
	\property Staff.midiInstrument = #"timpani"
	\property Staff.instrument = #'(lines " Timpani  " " in Es.B.")
	\property Staff.instr = #" Timp. "
	\clef "bass"
	\notes <
	\key c \major
	\GlobalIII
	\context Voice=timpani
	\timpani
>
}
\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}
\include "MFOAllegroII.ly"
\score {
\context Staff = timpani {
	\property Staff.midiInstrument = #"timpani"
	\property Staff.instrument = #'(lines " Timpani  " " in Es.B.")
	\property Staff.instr = #" Timp. "
	\clef "bass"
	\notes <
	\key c \major
	\GlobalIV
	\context Voice=timpani
	\timpani
>
}
\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}
