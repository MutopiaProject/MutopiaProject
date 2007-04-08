\version "1.5.66"

\include "header.ly"

\include "MFOAdagioI.ly"
\score {
	\context Staff = flauti {
	\property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"  Flauti  "
	\property Staff.instr = #"  Fl.  "
	\context Voice=one \partcombine Voice
		\context Thread=one \flautoI
		\context Thread=two \flautoII
}
\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}

\include "MFOAllegroI.ly"
\score {
	\context Staff = flauti {
	\property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"  Flauti  "
	\property Staff.instr = #"  Fl.  "
	\context Voice=one \partcombine Voice
		\context Thread=one \flautoI
		\context Thread=two \flautoII
}
\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}

\include "MFOAdagioII.ly"
\score {
	\context Staff = flauti {
	\property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"  Flauti  "
	\property Staff.instr = #"  Fl.  "
	\context Voice=one \partcombine Voice
		\context Thread=one \flautoI
		\context Thread=two \flautoII
}
\paper {

indent = 20.\mm }
\include "midiadagio.ly"
}
\include "MFOAllegroII.ly"
\score {
	\context Staff = flauti {
	\property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"  Flauti  "
	\property Staff.instr = #"  Fl.  "
	\context Voice=one \partcombine Voice
		\context Thread=one \flautoI
		\context Thread=two \flautoII
}
\paper {

indent = 20.\mm }
\include "midiallegro.ly"
}
