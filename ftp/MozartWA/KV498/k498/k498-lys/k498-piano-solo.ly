\version "2.16.0"

#(set-global-staff-size 20)

\include "defs.ly"

\header {
    instrument = "Piano"
}

\layout {
    \compressFullBarRests
}

\include "piano-dynamics.ly"

\include "piano-right-i.ly"
\include "piano-left-i.ly"

\score {
    \context PianoStaff <<
	\set PianoStaff.midiInstrument = #"acoustic grand"
	
	\context Staff = "upper" <<
	    \rightHandFirstMov
	    \markingsI
	>>

	\context Dynamics = "dynamics" \dynamicsFirstMov

	\context Staff = "lower" \leftHandFirstMov
    >>

    \layout { }
    
    \midi {
	\tempo 4 = 70
	
	\context {
	    \PianoStaff
	    \accepts Dynamics
	}
    }
}


\include "piano-right-ii.ly"
\include "piano-left-ii.ly"

\score {
    \context PianoStaff <<
	\set PianoStaff.midiInstrument = #"acoustic grand"
	
	\context Staff = "upper" <<
	    \rightHandSecondMov
	    \markingsII
	>>

	\context Dynamics = "dynamics" \dynamicsSecondMov

	\context Staff = "lower" \leftHandSecondMov
    >>

    \layout { }
    
    \midi {
	\tempo 4 = 120
	
	\context {
	    \PianoStaff
	    \accepts Dynamics
	}
    }
}

\include "piano-right-iii.ly"
\include "piano-left-iii.ly"

\score {
    \context PianoStaff <<
	\set PianoStaff.midiInstrument = #"acoustic grand"
	
	\context Staff = "upper" <<
	    \rightHandThirdMov
	    \markingsIII
	>>

	\context Dynamics = "dynamics" \dynamicsThirdMov

	\context Staff = "lower" \leftHandThirdMov
    >>

    \layout { }
    
    \midi {
	\tempo 4 = 120
	
	\context {
	    \PianoStaff
	    \accepts Dynamics
	}
    }
}
