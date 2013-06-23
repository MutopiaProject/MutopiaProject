\version "2.16.0"

#(set-global-staff-size 16)

\include "defs.ly"

\include "piano-dynamics.ly"

\include "clarinet-i.ly"
\include "viola-i.ly"
\include "piano-right-i.ly"
\include "piano-left-i.ly"

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


\include "clarinet-ii.ly"
\include "viola-ii.ly"
\include "piano-right-ii.ly"
\include "piano-left-ii.ly"

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


\include "clarinet-iii.ly"
\include "viola-iii.ly"
\include "piano-right-iii.ly"
\include "piano-left-iii.ly"

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
