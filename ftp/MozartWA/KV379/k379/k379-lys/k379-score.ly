% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.0"

\include "defs.ly"

#(set-global-staff-size 17)

\include "k379-header.ly"

\include "k379-violin-1.ly"
\include "k379-piano-1.ly"
\include "k379-violin-2.ly"
\include "k379-piano-2.ly"
\include "k379-markings-3.ly"
\include "k379-violin-3.ly"
\include "k379-piano-3.ly"

\include "k379-piano-layout.ly"

\book
{
    \score {
	\relative <<
	    \new Staff \with
	    {
		fontSize = #-2
		\override StaffSymbol #'staff-space = #(magstep -2)
	    } { 
		\set Score.skipBars = ##t
		\set Staff.instrument = \markup { "Violin" }
		\set Staff.midiInstrument = #"violin"
		
		\violinPartI
	    }

	    \new PianoStaff <<
		\set Score.skipBars = ##t
		\set PianoStaff.instrument = \markup { "Pianoforte." }
		\set PianoStaff.midiInstrument = #"acoustic grand"
		
		\context Staff = upper \pianoRightPartI
		\context Dynamics = dynamics \pianoDynamicsI
		\context Staff = lower \pianoLeftPartI
	    >>
	>>

	\layout { \pianoLayout }

	\include "k379-defs-1.ly"
    }

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    \score {
	\relative <<
	    \new Staff \with
	    {
		fontSize = #-2
		\override StaffSymbol #'staff-space = #(magstep -2)
	    } { 
		\set Score.skipBars = ##t
		\set Staff.instrument = \markup { "Violin" }
		\set Staff.midiInstrument = #"violin"

		\violinPartII
	    }

	    \new PianoStaff <<
		\set Score.skipBars = ##t
		\set PianoStaff.instrument = \markup { "Pianoforte." }
		\set PianoStaff.midiInstrument = #"acoustic grand"

		\context Staff = upper \pianoRightPartII
		\context Dynamics = dynamics \pianoDynamicsII
		\context Staff = lower \pianoLeftPartII
	    >>
	>>

	\layout { \pianoLayout }

	\include "k379-defs-2.ly"
    }

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    \score {
	\relative <<
	    \new Staff \with
	    {
		fontSize = #-2
		\override StaffSymbol #'staff-space = #(magstep -2)
	    } { 
		\set Score.skipBars = ##t
		\set Staff.instrument = \markup { "Violin" }
		\set Staff.midiInstrument = #"violin"

		<<
		  \violinPartIII
		  \new Voice { \markingsIII }
		>>
	    }

	    \new PianoStaff <<
		\set Score.skipBars = ##t
		\set PianoStaff.instrument = \markup { "Pianoforte." }
		\set PianoStaff.midiInstrument = #"acoustic grand"

		\context Staff = upper \pianoRightPartIII
		\context Dynamics = dynamics \pianoDynamicsIII
		\context Staff = lower \pianoLeftPartIII
	    >>
	>>

	\layout { \pianoLayout }

	\include "k379-defs-3.ly"
    }
}
