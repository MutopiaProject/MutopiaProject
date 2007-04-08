% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.0"

\include "defs.ly"

#(set-global-staff-size 18)

\include "k379-header.ly"
\include "k379-piano-1.ly"
\include "k379-piano-2.ly"
\include "k379-piano-3.ly"
\include "k379-markings-3.ly"

\include "k379-piano-layout.ly"

\book
{
    \score {
	\new PianoStaff <<
	    \set Score.skipBars = ##t
	    \set PianoStaff.instrument = \markup { "Pianoforte." }
	    \set PianoStaff.midiInstrument = #"acoustic grand"
	    
	    \context Staff = upper \pianoRightPartI
	    \context Dynamics = dynamics \pianoDynamicsI
	    \context Staff = lower \pianoLeftPartI
	>>

	\layout { \pianoLayout }

	\include "k379-defs-1.ly"
    }

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    \score {
	\new PianoStaff <<
	    \set Score.skipBars = ##t
	    \set PianoStaff.instrument = \markup { "Pf." }
	    \set PianoStaff.midiInstrument = #"acoustic grand"
	    
	    \context Staff = upper \pianoRightPartII
	    \context Dynamics = dynamics \pianoDynamicsII
	    \context Staff = lower \pianoLeftPartII
	>>

	\layout { \pianoLayout }

	\include "k379-defs-2.ly"
    }

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    \score {
	\new PianoStaff <<
	    \set Score.skipBars = ##t
	    \set PianoStaff.instrument = \markup { "Pf." }
	    \set PianoStaff.midiInstrument = #"acoustic grand"
	    
	    \context Staff = upper << \pianoRightPartIII 
				      \new Voice { \markingsIII } >>
	    \context Dynamics = dynamics \pianoDynamicsIII
	    \context Staff = lower \pianoLeftPartIII
	>>

	\layout { \pianoLayout }

	\include "k379-defs-3.ly"
    }
}
