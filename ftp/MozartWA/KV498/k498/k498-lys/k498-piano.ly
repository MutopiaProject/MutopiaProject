\version "2.16.0"

#(set-global-staff-size 16)

\include "defs.ily"

\include "piano-dynamics.ily"

\include "clarinet-i.ily"
\include "viola-i.ily"
\include "piano-right-i.ily"
\include "piano-left-i.ily"

\score {
    <<
	\override Score.BarNumber   #'padding = #3

	\context Staff = "clarinet" <<
	    \set Staff.fontSize = #-1
	    \set Staff.midiInstrument = #"clarinet"
	    \set Staff.instrumentName = \markup {\column { "Clarinetto" \line {"in B."}}}
	    \transposition ais 
	    
	    \markingsI
	    
	    \clarinetFirstMov
	>>
	
	\context Staff = "viola" <<
	    \set Staff.fontSize = #-1
	    \set Staff.autoBeaming = ##f
	    \set Staff.midiInstrument = #"viola"
	    \set Staff.instrumentName = "Viola"
	    
	    \violaFirstMov
	>>
	
	\context PianoStaff = "piano" <<
	    \set PianoStaff.midiInstrument = #"acoustic grand"
	    \set PianoStaff.instrumentName = "Piano"
	    
	    \context Staff = "upper" <<
		\rightHandFirstMov
		\markingsI
	    >>
	    
	    \context Dynamics = "dynamics" \dynamicsFirstMov
	    
	    \context Staff = "lower" \leftHandFirstMov
	>>
    >>
    
    \layout {
    }
    \midi {
	\tempo 4 = 70
	\context {
	    \PianoStaff
	    \accepts Dynamics
	}
    }
}


\include "clarinet-ii.ily"
\include "viola-ii.ily"
\include "piano-right-ii.ily"
\include "piano-left-ii.ily"

\score {
    <<
	\override Score.BarNumber   #'padding = #3

	\context Staff = "clarinet" <<
	    \set Staff.fontSize = #-1
	    \set Staff.autoBeaming = ##f
	    \set Staff.midiInstrument = #"clarinet"
	    \set Staff.instrumentName = \markup {\column { "Clarinetto" \line {"in B."}}}
	    \transposition ais 
	    
	    \markingsII
	    
	    \clarinetSecondMov
	>>
	
	\context Staff = "viola" <<
	    \set Staff.fontSize = #-1
	    \set Staff.autoBeaming = ##f
	    \set Staff.midiInstrument = #"viola"
	    \set Staff.instrumentName = "Viola"
	    
	    \violaSecondMov
	>>
	
	\context PianoStaff = "piano" <<
	    \set PianoStaff.midiInstrument = #"acoustic grand"
	    \set PianoStaff.instrumentName = "Piano"
	    
	    \context Staff = "upper" <<
		\rightHandSecondMov
		\markingsII
	    >>
	    
	    \context Dynamics = "dynamics" \dynamicsSecondMov
	    
	    \context Staff = "lower" \leftHandSecondMov
	>>
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


\include "clarinet-iii.ily"
\include "viola-iii.ily"
\include "piano-right-iii.ily"
\include "piano-left-iii.ily"

\score {
    <<
	\override Score.BarNumber   #'padding = #3

	\context Staff = "clarinet" <<
	    \set Staff.fontSize = #-1
	    \set Staff.autoBeaming = ##f
	    \set Staff.midiInstrument = #"clarinet"
	    \set Staff.instrumentName = \markup {\column { "Clarinetto" \line {"in B."}}}
	    \transposition ais 
	    
	    \markingsIII
	    
	    \clarinetThirdMov
	>>
	
	\context Staff = "viola" <<
	    \set Staff.fontSize = #-1
	    \set Staff.autoBeaming = ##f
	    \set Staff.midiInstrument = #"viola"
	    \set Staff.instrumentName = "Viola"
	    
	    \violaThirdMov
	>>
	
	\context PianoStaff = "piano" <<
	    \set PianoStaff.midiInstrument = #"acoustic grand"
	    \set PianoStaff.instrumentName = "Piano"
	    
	    \context Staff = "upper" <<
		\rightHandThirdMov
		\markingsIII
	    >>
	    
	    \context Dynamics = "dynamics" \dynamicsThirdMov
	    
	    \context Staff = "lower" \leftHandThirdMov
	>>
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
