% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.4"

\include "defs.ly"

#(set-global-staff-size 19)

\paper {
linewidth = 17.8\cm
topmargin = 0.5\cm
bottommargin = 0.9\cm
leftmargin = 1.7\cm
firstpagenumber = 2
}

\include "HWV370-header.ly"
\include "HWV370-violin-1.ly"
\include "HWV370-piano-1.ly"
\include "HWV370-violin-2.ly"
\include "HWV370-piano-2.ly"
\include "HWV370-violin-3.ly"
\include "HWV370-piano-3.ly"
\include "HWV370-violin-4.ly"
\include "HWV370-piano-4.ly"

\include "HWV370-piano-layout.ly"

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
		
		\removeWithTag #'vllayout \violinPartI
	    }

	    \new PianoStaff <<
		\set Score.skipBars = ##t
		\set PianoStaff.instrument = \markup { \hspace #-8 "Pianoforte" }
		\set PianoStaff.midiInstrument = #"acoustic grand"
		
		\context Staff = upper \pianoRightPartI
		\context Staff = lower \pianoLeftPartI
	    >>
	>>

	\layout { \pianoLayout 
	}

	\midi { \tempo 4 = 75 }

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
		\set Staff.midiInstrument = #"violin"

		\removeWithTag #'vllayout \violinPartII
	    }

	    \new PianoStaff <<
		\set Score.skipBars = ##t
		\set PianoStaff.midiInstrument = #"acoustic grand"

		\context Staff = upper \pianoRightPartII
		\context Staff = lower \pianoLeftPartII
	    >>
	>>

	\layout { \pianoLayout }

	\midi { \tempo 4 = 115 }
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
		\set Staff.midiInstrument = #"violin"

		
		 \removeWithTag #'vllayout \violinPartIII
		
		}

	    \new PianoStaff <<
		\set Score.skipBars = ##t
		\set PianoStaff.midiInstrument = #"acoustic grand"

		\context Staff = upper \pianoRightPartIII
		\context Staff = lower \pianoLeftPartIII
	    >>
	>>

	\layout { \pianoLayout }

	\midi { \tempo 4 = 70 }
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
		\set Staff.midiInstrument = #"violin"

		
		 \removeWithTag #'vllayout \violinPartIV
		
		}

	    \new PianoStaff <<
		\set Score.skipBars = ##t
		\set PianoStaff.midiInstrument = #"acoustic grand"

		\context Staff = upper \pianoRightPartIV
		\context Staff = lower \pianoLeftPartIV
	    >>
	>>

	\layout { \pianoLayout }

	\midi { \tempo 4 = 115 }
    }
}
