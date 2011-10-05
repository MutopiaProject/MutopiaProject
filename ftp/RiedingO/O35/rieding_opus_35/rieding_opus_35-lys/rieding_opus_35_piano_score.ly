\version "2.14.2"

\include "header.ly"
\include "rieding_opus_35_violin.ly"
\include "rieding_opus_35_piano.ly"

\score
{
  {
    <<
      \new Staff = "Violino."
      <<
	\context Staff = "Violino." {
	  \set Staff.fontSize = #-4
	  \override Staff.StaffSymbol #'staff-space = #(magstep -4)
	}
	\set Staff.instrumentName = #"Violin."
	\set Staff.midiInstrument = #"violin"
	  \violinOne
      	>>	
      
    	\new PianoStaff
    	<<
	  \set PianoStaff.instrumentName = #"Piano."
				%\set Staff.midiInstrument = #"harpsichord"
	  \new Staff = RHOne { \pianoRHOne }
	  \new Staff = LHOne { \pianoLHOne }
    	>>
    >>
  }
  \layout { }
  \midi { }
}

\score
{
  {
    <<
      \new Staff = "Violino."
      <<
	\context Staff = "Violino." {
	  \set Staff.fontSize = #-4
	  \override Staff.StaffSymbol #'staff-space = #(magstep -4)
	}
	\set Staff.instrumentName = #"Violin."
	\set Staff.midiInstrument = #"violin"
	\violinTwo
      >>	
      
      \new PianoStaff
      <<
	\set PianoStaff.instrumentName = #"Piano."
				%\set Staff.midiInstrument = #"harpsichord"
	\new Staff = RHTwo { \pianoRHTwo }
	\new Staff = LHTwo { \pianoLHTwo }
      >>
    >>
  }
  \layout { }
  \midi { }
}

\score
{
  {
    <<
      \new Staff = "Violino."
      <<
	\context Staff = "Violino." {
	  \set Staff.fontSize = #-4
	  \override Staff.StaffSymbol #'staff-space = #(magstep -4)
	}
	\set Staff.instrumentName = #"Violin."
	\set Staff.midiInstrument = #"violin"
	\violinThree
      >>	
      
      \new PianoStaff
      <<
	\set PianoStaff.instrumentName = #"Piano."
				%\set Staff.midiInstrument = #"harpsichord"
	\new Staff = RHThree { \pianoRHThree }
	\new Staff = LHThree { \pianoLHThree }
      >>
    >>
  }
  \layout { }
  \midi { }
}
