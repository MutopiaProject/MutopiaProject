\version "2.18.0"

\include "header.ily"

\header {
	instrument = "Score"
}

#(set-global-staff-size 12)
\include "notes1.ily"

\score {
<<
	\new StaffGroup <<
		\include "flauti.ily"
		\include "oboi.ily"
		\include "clarinetti.ily"
		\include "fagotti.ily"
		\include "corni.ily"
		\new PianoStaff <<
			\include "violinI.ily"
			\include "violinII.ily"
		>>
		\include "viola.ily"
	>>
	\new ChoirStaff <<
			\include "soprano.ily"
			\include "alto.ily"
			\include "tenor.ily"
			\include "basso.ily"
	>>
	\include "bass.ily"
>>
	\layout {}
\include \incmidi
	\header {
		piece = \pPiece
	}
}

\include "notes2.ily"

\score {
<<
	\new StaffGroup <<
		\include "oboesolo.ily"
		\new PianoStaff <<
			\include "violinI.ily"
			\include "violinII.ily"
		>>
			\include "viola.ily"
	>>
	\include "sopranosolo.ily"
	\new PianoStaff <<
			\include "cello.ily"
			\include "contrabasso.ily"
	>>
>>
	\layout {}
\include \incmidi
	\header {
		piece = \pPiece
	}
}

\include "notes3a.ily"

\score {
<<
	\new StaffGroup <<
		\include "oboesolo.ily"
		\new PianoStaff <<
			\include "violinI.ily"
			\include "violinII.ily"
		>>
		\include "viola.ily"
	>>
	\include "sopranosolo.ily"
	\new PianoStaff <<
			\include "cello.ily"
			\include "contrabasso.ily"
	>>
>>
	\layout {}
\include \incmidi
	\header {
		piece = \pPiece
	}
}

\include "notes3b.ily"

\score {
<<
	\new StaffGroup <<
		\include "flauti.ily"
		\include "oboi.ily"
		\include "clarinetti.ily"
		\include "fagotti.ily"
		\new PianoStaff <<
			\include "violinI.ily"
			\include "violinII.ily"
		>>
		\include "viola.ily"
	>>
	\include "sopranosolo.ily"
	\new ChoirStaff <<
		\include "soprano.ily"
		\include "alto.ily"
	>>
	\new PianoStaff <<
		\include "cello.ily"
		\include "contrabasso.ily"
	>>
>>
	\layout {}
\include \incmidi
}

\include "notes4.ily"

\score {
<<
	\new StaffGroup <<
		\include "flauti.ily"
		\include "oboi.ily"
		\include "clarinetti.ily"
		\include "fagotti.ily"
		\include "corni.ily"
		\include "trombe.ily"
		\new PianoStaff <<
			\include "tromboni.ily"
			\include "trombonebasso.ily"
		>>
		\new PianoStaff <<
			\include "violinI.ily"
			\include "violinII.ily"
		>>
		\include "viola.ily"
	>>
	\new ChoirStaff <<
		\include "soprano.ily"
		\include "alto.ily"
		\include "tenor.ily"
		\include "basso.ily"
	>>
	\include "bass.ily"
>>
	\layout {}
\include \incmidi
	\header {
		piece = \pPiece
	}
}

\include "notes5.ily"

\score {
<<
	\new StaffGroup <<
		\include "flauti.ily"
		\include "oboi.ily"
		\include "clarinetti.ily"
		\include "fagotti.ily"
		\include "corni.ily"
		\new PianoStaff <<
			\include "violinI.ily"
			\include "violinII.ily"
		>>
		\include "viola.ily"
	>>
	\include "sopranosolo.ily"
	\include "cello.ily"
>>
	\layout {}
\include \incmidi
	\header {
		piece = \pPiece
	}
}

\include "notes6.ily"

\score {
<<
	\new StaffGroup <<
		\include "flauti.ily"
		\new PianoStaff <<
			\include "violinI.ily"
			\include "violinII.ily"
		>>
		\include "viola.ily"
	>>
	\include "sopranosolo.ily"
	\new ChoirStaff <<
		\include "tenorsoloI.ily"
		\include "tenorsoloII.ily"
		\include "bassosoloI.ily"
		\include "bassosoloII.ily"
	>>
	\new PianoStaff <<
		\include "cello.ily"
		\include "bass.ily"
	>>
>>
	\layout {}
\include \incmidi
	\header {
		piece = \pPiece
	}
}

\include "notes7.ily"

\score {
<<
	\new StaffGroup <<
		\include "flauti.ily"
		\include "oboi.ily"
		\include "clarinetti.ily"
		\include "fagotti.ily"
		\include "corni.ily"
		\include "trombe.ily"
		\include "timpani.ily"
		\include "tromboni.ily"
		\include "trombonebasso.ily"
		\new PianoStaff <<
			\include "violinI.ily"
			\include "violinII.ily"
		>>
		\include "viola.ily"
	>>
	\new ChoirStaff <<
		\include "soprano.ily"
		\include "alto.ily"
		\include "tenor.ily"
		\include "basso.ily"
	>>
	\include "bass.ily"
>>
	\layout {}
\include \incmidi
	\header {
		piece = \pPiece
	}
}
