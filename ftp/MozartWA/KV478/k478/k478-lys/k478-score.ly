\version "2.4.0"
\encoding "latin1"

\include "defs.ly"

#(set-global-staff-size 17.5)

\include "k478-header.ly"
\include "k478-piano-layout.ly"

\include "k478-violin-1.ly"
\include "k478-viola-1.ly"
\include "k478-cello-1.ly"
\include "k478-piano-1.ly"

\include "k478-violin-2.ly"
\include "k478-viola-2.ly"
\include "k478-cello-2.ly"
\include "k478-piano-2.ly"

\include "k478-violin-3.ly"
\include "k478-viola-3.ly"
\include "k478-cello-3.ly"
\include "k478-piano-3.ly"

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

	    \new Staff \with
	    {
		fontSize = #-2
		\override StaffSymbol #'staff-space = #(magstep -2)
	    } { 
		\set Score.skipBars = ##t
		\set Staff.instrument = \markup { "Viola" }
		\set Staff.midiInstrument = #"violin"
		
		\violaPartI
	    }

	    \new Staff \with
	    {
		fontSize = #-2
		\override StaffSymbol #'staff-space = #(magstep -2)
	    } { 
		\set Score.skipBars = ##t
		\set Staff.instrument = \markup { "Cello" }
		\set Staff.midiInstrument = #"cello"
		
		\celloPartI
	    }

	    \new PianoStaff <<
		\set Score.skipBars = ##t
		\set PianoStaff.instrument = \markup { "Pianoforte." }
		\set PianoStaff.midiInstrument = #"acoustic grand"
		
		\context Staff = upper \pianoRightPartI
		\context Dynamics=dynamics \pianoDynamicsI
		\context Staff = lower \pianoLeftPartI
	    >>
	>>

	\layout { \pianoLayout }

	\include "k478-defs-1.ly"
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

	    \new Staff \with
	    {
		fontSize = #-2
		\override StaffSymbol #'staff-space = #(magstep -2)
	    } { 
		\set Score.skipBars = ##t
		\set Staff.instrument = \markup { "Viola" }
		\set Staff.midiInstrument = #"violin"
		
		\violaPartII
	    }

	    \new Staff \with
	    {
		fontSize = #-2
		\override StaffSymbol #'staff-space = #(magstep -2)
	    } { 
		\set Score.skipBars = ##t
		\set Staff.instrument = \markup { "Cello" }
		\set Staff.midiInstrument = #"cello"
		
		\celloPartII
	    }

	    \new PianoStaff <<
		\set Score.skipBars = ##t
		\set PianoStaff.instrument = \markup { "Pianoforte." }
		\set PianoStaff.midiInstrument = #"acoustic grand"
		
		\context Staff = upper \pianoRightPartII
		\context Dynamics=dynamics \pianoDynamicsII
		\context Staff = lower \pianoLeftPartII
	    >>
	>>

	\layout { \pianoLayout }

	\include "k478-defs-2.ly"
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
		
		\violinPartIII
	    }

	    \new Staff \with
	    {
		fontSize = #-2
		\override StaffSymbol #'staff-space = #(magstep -2)
	    } { 
		\set Score.skipBars = ##t
		\set Staff.instrument = \markup { "Viola" }
		\set Staff.midiInstrument = #"violin"
		
		\violaPartIII
	    }

	    \new Staff \with
	    {
		fontSize = #-2
		\override StaffSymbol #'staff-space = #(magstep -2)
	    } { 
		\set Score.skipBars = ##t
		\set Staff.instrument = \markup { "Cello" }
		\set Staff.midiInstrument = #"cello"
		
		\celloPartIII
	    }

	    \new PianoStaff <<
		\set Score.skipBars = ##t
		\set PianoStaff.instrument = \markup { "Pianoforte." }
		\set PianoStaff.midiInstrument = #"acoustic grand"
		
		\context Staff = upper \pianoRightPartIII
		\context Dynamics=dynamics \pianoDynamicsIII
		\context Staff = lower \pianoLeftPartIII
	    >>
	>>

	\layout { \pianoLayout }

	\include "k478-defs-3.ly"
    }
}
