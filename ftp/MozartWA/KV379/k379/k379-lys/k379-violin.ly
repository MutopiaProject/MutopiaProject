% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.0"

\include "defs.ly"

#(set-global-staff-size 19)

\include "k379-header.ly"
\include "k379-violin-1.ly"
\include "k379-violin-2.ly"
\include "k379-markings-3.ly"
\include "k379-violin-3.ly"

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
	\include "k379-defs-1.ly"
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
	\include "k379-defs-2.ly"
    }

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    \score {
	\new Staff { 
	    \set Score.skipBars = ##t
	    \set Staff.instrument = \markup { "Violin" }
	    \set Staff.midiInstrument = #"violin"

	    <<
		\violinPartIII
		\new Voice { \markingsIII }
	    >>
	}

	\layout {}
	\include "k379-defs-3.ly"
    }
}
