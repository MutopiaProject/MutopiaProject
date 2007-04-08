\version "2.4.0"
\encoding "latin1"

\include "defs.ly"

#(set-global-staff-size 19)

\include "k478-header.ly"
\include "k478-cello-1.ly"
\include "k478-cello-2.ly"
\include "k478-cello-3.ly"

\book
{
    \score {
	\new Staff { 
	    \set Score.skipBars = ##t
	    \set Staff.instrument = \markup { "Cello" }
	    \set Staff.midiInstrument = #"cello"

	    \celloPartI
	}

	\layout {}
	\include "k478-defs-1.ly"
    }


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    \score {
	\new Staff { 
	    \set Score.skipBars = ##t
	    \set Staff.instrument = \markup { "Cello" }
	    \set Staff.midiInstrument = #"cello"

	    \celloPartII
	}

	\layout {}
	\include "k478-defs-2.ly"
    }


    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    \score {
	\new Staff { 
	    \set Score.skipBars = ##t
	    \set Staff.instrument = \markup { "Cello" }
	    \set Staff.midiInstrument = #"cello"

	    \celloPartIII
	}

	\layout {}
	\include "k478-defs-3.ly"
    }
}
