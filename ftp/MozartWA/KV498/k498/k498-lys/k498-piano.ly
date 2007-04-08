\version "1.5.68"

\include "paper16.ly"

\include "defs.ly"

\include "piano-dynamics.ly"

\include "clarinet-i.ly"
\include "viola-i.ly"
\include "piano-right-i.ly"
\include "piano-left-i.ly"

\score {
    <
	\property Score.BarNumber \override #'padding = #3

	\context Staff = clarinet <
	    \property Staff.fontSize = #-1
	    \property Staff.midiInstrument = #"clarinet"
	    \property Staff.instrument = #'(lines "Clarinetto" "in B.")
	    \property Staff.transposing = #-2
	    
	    \markingsI
	    
	    \clarinetFirstMov
	>
	
	\context Staff = viola <
	    \property Staff.fontSize = #-1
	    \property Staff.autoBeaming = ##f
	    \property Staff.midiInstrument = #"viola"
	    \property Staff.instrument = "Viola"
	    
	    \violaFirstMov
	>
	
	\context PianoStaff = piano <
	    \property PianoStaff.midiInstrument = #"acoustic grand"
	    \property PianoStaff.instrument = "Piano"
	    
	    \context Staff=upper <
		\rightHandFirstMov
		\markingsI
	    >
	    
	    \context Dynamics=dynamics \dynamicsFirstMov
	    
	    \context Staff=lower \leftHandFirstMov
	>
    >
    
    \paper {
	% This will give a better spacing: Lily gets a bit confused
	% with the 64th notes...
	\translator {
	    \ScoreContext SpacingSpanner \override
	    #'common-shortest-duration = #(make-moment 1 16)
	}

	\translator {
	    \type "Engraver_group_engraver"
	    \name Dynamics
	    \consists "Output_property_engraver"
	    MinimumVerticalExtent = #'(-1 . 1)
	    
	    \consists "Script_engraver"
	    \consists "Dynamic_engraver"
	    \consists "Text_engraver"
	    
	    TextScript \override #'font-relative-size = #1
	    TextScript \override #'font-shape = #'italic
	    DynamicText \override #'extra-offset = #'(0 . 2.5)
	    Hairpin \override #'extra-offset = #'(0 . 2.5)
	    
	    \consists "Skip_req_swallow_translator"
	    
	    \consistsend "Axis_group_engraver"
	}
	\translator {
	    \PianoStaffContext
	    \accepts Dynamics
	    VerticalAlignment \override #'forced-distance = #7
	}
    }
    
    \midi {
	\tempo 4 = 70
	
	\translator {
	    \type "Performer_group_performer"
	    \name Dynamics
	    
	    \consists "Span_dynamic_performer"
	    \consists "Dynamic_performer"
	}

	\translator {
	    \PianoStaffContext
	    \accepts Dynamics
	}
    }
}


\include "clarinet-ii.ly"
\include "viola-ii.ly"
\include "piano-right-ii.ly"
\include "piano-left-ii.ly"

\score {
    <
	\property Score.BarNumber \override #'padding = #3

	\context Staff = clarinet <
	    \property Staff.fontSize = #-1
	    \property Staff.autoBeaming = ##f
	    \property Staff.midiInstrument = #"clarinet"
	    \property Staff.instrument = #'(lines "Clarinetto" "in B.")
	    \property Staff.transposing = #-2
	    
	    \markingsII
	    
	    \clarinetSecondMov
	>
	
	\context Staff = viola <
	    \property Staff.fontSize = #-1
	    \property Staff.autoBeaming = ##f
	    \property Staff.midiInstrument = #"viola"
	    \property Staff.instrument = "Viola"
	    
	    \violaSecondMov
	>
	
	\context PianoStaff = piano <
	    \property PianoStaff.midiInstrument = #"acoustic grand"
	    \property PianoStaff.instrument = "Piano"
	    
	    \context Staff=upper <
		\rightHandSecondMov
		\markingsII
	    >
	    
	    \context Dynamics=dynamics \dynamicsSecondMov
	    
	    \context Staff=lower \leftHandSecondMov
	>
    >
    
    \paper {
	\translator {
	    \type "Engraver_group_engraver"
	    \name Dynamics
	    \consists "Output_property_engraver"
	    MinimumVerticalExtent = #'(-1 . 1)
	    
	    \consists "Script_engraver"
	    \consists "Dynamic_engraver"
	    \consists "Text_engraver"
	    
	    TextScript \override #'font-relative-size = #1
	    TextScript \override #'font-shape = #'italic
	    DynamicText \override #'extra-offset = #'(0 . 2.5)
	    Hairpin \override #'extra-offset = #'(0 . 2.5)
	    
	    \consists "Skip_req_swallow_translator"
	    
	    \consistsend "Axis_group_engraver"
	}
	\translator {
	    \PianoStaffContext
	    \accepts Dynamics
	    VerticalAlignment \override #'forced-distance = #7
	}
    }
    
    \midi {
	\tempo 4 = 120
	
	\translator {
	    \type "Performer_group_performer"
	    \name Dynamics
	    
	    \consists "Span_dynamic_performer"
	    \consists "Dynamic_performer"
	}

	\translator {
	    \PianoStaffContext
	    \accepts Dynamics
	}
    }
}


\include "clarinet-iii.ly"
\include "viola-iii.ly"
\include "piano-right-iii.ly"
\include "piano-left-iii.ly"

\score {
    <
	\property Score.BarNumber \override #'padding = #3

	\context Staff = clarinet <
	    \property Staff.fontSize = #-1
	    \property Staff.autoBeaming = ##f
	    \property Staff.midiInstrument = #"clarinet"
	    \property Staff.instrument = #'(lines "Clarinetto" "in B.")
	    \property Staff.transposing = #-2
	    
	    \markingsIII
	    
	    \clarinetThirdMov
	>
	
	\context Staff = viola <
	    \property Staff.fontSize = #-1
	    \property Staff.autoBeaming = ##f
	    \property Staff.midiInstrument = #"viola"
	    \property Staff.instrument = "Viola"
	    
	    \violaThirdMov
	>
	
	\context PianoStaff = piano <
	    \property PianoStaff.midiInstrument = #"acoustic grand"
	    \property PianoStaff.instrument = "Piano"
	    
	    \context Staff=upper <
		\rightHandThirdMov
		\markingsIII
	    >
	    
	    \context Dynamics=dynamics \dynamicsThirdMov
	    
	    \context Staff=lower \leftHandThirdMov
	>
    >
    
    \paper {
	\translator {
	    \type "Engraver_group_engraver"
	    \name Dynamics
	    \consists "Output_property_engraver"
	    MinimumVerticalExtent = #'(-1 . 1)
	    
	    \consists "Script_engraver"
	    \consists "Dynamic_engraver"
	    \consists "Text_engraver"
	    
	    TextScript \override #'font-relative-size = #1
	    TextScript \override #'font-shape = #'italic
	    DynamicText \override #'extra-offset = #'(0 . 2.5)
	    Hairpin \override #'extra-offset = #'(0 . 2.5)
	    
	    \consists "Skip_req_swallow_translator"
	    
	    \consistsend "Axis_group_engraver"
	}
	\translator {
	    \PianoStaffContext
	    \accepts Dynamics
	    VerticalAlignment \override #'forced-distance = #7
	}
    }
    
    \midi {
	\tempo 4 = 120
	
	\translator {
	    \type "Performer_group_performer"
	    \name Dynamics
	    
	    \consists "Span_dynamic_performer"
	    \consists "Dynamic_performer"
	}

	\translator {
	    \PianoStaffContext
	    \accepts Dynamics
	}
    }
}
