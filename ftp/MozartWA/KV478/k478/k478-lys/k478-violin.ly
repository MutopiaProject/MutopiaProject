\version "2.4.0"
\encoding "latin1"

\include "defs.ly"

#(set-global-staff-size 18)

\include "k478-header.ly"
\include "k478-violin-1.ly"
\include "k478-violin-2.ly"
\include "k478-violin-3.ly"

\book
{
    \score {
	\new Staff { 
	    \set Score.skipBars = ##t
	    \set Staff.instrument = \markup { "Violin" }
	    \set Staff.midiInstrument = #"violin"

	    \violinPartI
	}

	\layout {}
	\include "k478-defs-1.ly"
    }


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    \score {
	\new Staff { 
	    \set Score.skipBars = ##t
	    \set Staff.instrument = \markup { "Violin" }
	    \set Staff.midiInstrument = #"violin"

	    \violinPartII
	}

	\layout {}
	\include "k478-defs-2.ly"
    }


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    \score {
	\new Staff { 
	    \set Score.skipBars = ##t
	    \set Staff.instrument = \markup { "Violin" }
	    \set Staff.midiInstrument = #"violin"

	    \violinPartIII
	}

	\layout {}
	\include "k478-defs-3.ly"
    }
}
