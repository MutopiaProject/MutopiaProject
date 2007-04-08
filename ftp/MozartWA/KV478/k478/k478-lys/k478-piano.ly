\version "2.4.0"
\encoding "latin1"

\include "defs.ly"

#(set-global-staff-size 18)

\include "k478-header.ly"
\include "k478-piano-layout.ly"

\include "k478-piano-1.ly"
\include "k478-piano-2.ly"
\include "k478-piano-3.ly"

\book
{
    \score {
	\new PianoStaff <<
	    \set Score.skipBars = ##t
	    \set PianoStaff.instrument = \markup { "Pianoforte." }
	    \set PianoStaff.midiInstrument = #"acoustic grand"
	    
	    \context Staff = upper \pianoRightPartI
	    \context Dynamics=dynamics \pianoDynamicsI
	    \context Staff = lower \pianoLeftPartI
	>>

	\layout { \pianoLayout }

	\include "k478-defs-1.ly"
    }


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    \score {
	\new PianoStaff <<
	    \set Score.skipBars = ##t
	    \set PianoStaff.instrument = \markup { "Pianoforte." }
	    \set PianoStaff.midiInstrument = #"acoustic grand"
	    
	    \context Staff = upper \pianoRightPartII
	    \context Dynamics=dynamics \pianoDynamicsII
	    \context Staff = lower \pianoLeftPartII
	>>

	\layout { \pianoLayout }

	\include "k478-defs-2.ly"
    }


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    \score {
	\new PianoStaff <<
	    \set Score.skipBars = ##t
	    \set PianoStaff.instrument = \markup { "Pianoforte." }
	    \set PianoStaff.midiInstrument = #"acoustic grand"
	    
	    \context Staff = upper \pianoRightPartIII
	    \context Dynamics=dynamics \pianoDynamicsIII
	    \context Staff = lower \pianoLeftPartIII
	>>
	
	\layout { \pianoLayout }

	\include "k478-defs-3.ly"
    }
}
