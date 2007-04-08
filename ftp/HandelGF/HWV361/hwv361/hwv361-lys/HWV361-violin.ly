% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.6.4"

\include "defs.ly"

\include "HWV361-header.ly"
\include "HWV361-violin-1.ly"
\include "HWV361-violin-2.ly"
\include "HWV361-violin-3.ly"
\include "HWV361-violin-4.ly"


\paper {
linewidth = 17.8\cm
topmargin = 0.7\cm
bottommargin = 0.9\cm
leftmargin = 1.7\cm
firstpagenumber = 2
}

\book
{
    \score {
	\new Staff { 
	    \set Score.skipBars = ##t
	    \set Staff.instrument = \markup { "Violin" }
	    \set Staff.midiInstrument = #"violin"

	    \keepWithTag #'vllayout \violinPartI
	}

	\layout {
	  indent = 12.6 \mm
	}
	\midi { \tempo 4 = 60 }
    }

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    \score {
	\new Staff { 
	    \set Score.skipBars = ##t
	    \set Staff.midiInstrument = #"violin"

	    \keepWithTag #'vllayout \violinPartII
	}

	\layout {
 	  indent = 5.6 \mm
	}
	\midi { \tempo 4 = 120 }
    }

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    \score {
	\new Staff { 
	    \set Score.skipBars = ##t
	    \set Staff.midiInstrument = #"violin"

	    \keepWithTag #'vllayout \violinPartIII
	}

	\layout {
	  indent = 5.6 \mm
	}
	\midi { \tempo 4 = 40 }
    }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    \score {
	\new Staff { 
	    \set Score.skipBars = ##t
	    \set Staff.midiInstrument = #"violin"

            \keepWithTag #'vllayout \violinPartIV
	}

	\layout {
	  indent = 5.6 \mm
	}
	\midi { \tempo 4 = 110 }
    }

}
	