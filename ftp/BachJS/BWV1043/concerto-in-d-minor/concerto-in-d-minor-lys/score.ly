% This file creates the score.

% The edition from which this was typed has orchestral accompaniment.
% I don't know if there's a piano arrangement which is out of copyright.

\header {
    \include "header.ly";
    subtitle = "for two violins and strings (Score)";
    % Want "Score" to appear in subtitle
    filename = "score.ly";
}

\version "1.2.17";

\include "solo_violin1_1.ly"
\include "solo_violin2_1.ly"
\include "violin1_1.ly"
\include "violin2_1.ly"
\include "viola_1.ly"
\include "continuo_1.ly"

\include "solo_violin1_2.ly"
\include "solo_violin2_2.ly"
\include "violin1_2.ly"
\include "violin2_2.ly"
\include "viola_2.ly"
\include "continuo_2.ly"

\include "solo_violin1_3.ly"
\include "solo_violin2_3.ly"
\include "violin1_3.ly"
\include "violin2_3.ly"
\include "viola_3.ly"
\include "continuo_3.ly"


% 1st movement
\score {
    \header {
	piece = "Vivace"; opus = "";
    }

    \context StaffGroup = fullscore \notes <
	\context Voice = SoloViolinI {
	    \property Staff.midiInstrument="violin"
	    \key d \minor;
	    \time 4/4;
	    \$solo_violin1_1
	}
	\context Voice = SoloViolinII {
	    \property Staff.midiInstrument="violin"
    	    \key d \minor;
	    \time 4/4;
    	    \$solo_violin2_1
	}
	\context Voice = ViolinI {
	    \property Staff.midiInstrument="harpsichord"
    	    \key d \minor;
	    \time 4/4;
    	    \$violin1_1
	}
	\context Voice = ViolinII {
	    \property Staff.midiInstrument="harpsichord"
    	    \key d \minor;
	    \time 4/4;
    	    \$violin2_1
	}
	\context Voice = Viola {
	    \property Staff.midiInstrument="harpsichord"
    	    \key d \minor;
	    \time 4/4;
	    \clef "alto";
    	    \$viola_1
	}
	\context Voice = Continuo {
	    \property Staff.midiInstrument="harpsichord"
    	    \key d \minor;
	    \time 4/4;
	    \clef "bass";
    	    \$continuo_1
	}
    >
    
    \paper { linewidth = 18.0 \cm;
	\translator { \ScoreContext \consists "Bar_number_engraver"; }
    }
    
    \midi {
	\tempo 4 = 100;
    }
}


% 2nd movement
\score {
    \header {
	piece = "Largo ma non tanto"; opus = "";
    }

    \context StaffGroup = fullscore \notes <
	\context Voice = SoloViolinI {
	    \property Staff.midiInstrument="violin"
	    \key f \major;
	    \time 12/8;
	    \$solo_violin1_2
	}
	\context Voice = SoloViolinII {
	    \property Staff.midiInstrument="violin"
    	    \key f \major;
	    \time 12/8;
    	    \$solo_violin2_2
	}
	\context Voice = ViolinI {
	    \property Staff.midiInstrument="harpsichord"
	    \key f \major;
	    \time 12/8;
	    \$violin1_2
	}
	\context Voice = ViolinII {
	    \property Staff.midiInstrument="harpsichord"
    	    \key f \major;
	    \time 12/8;
    	    \$violin2_2
	}
	\context Voice = Viola {
	    \property Staff.midiInstrument="harpsichord"
    	    \key f \major;
	    \time 12/8;
	    \clef "alto";
    	    \$viola_2
	}
	\context Voice = Continuo {
	    \property Staff.midiInstrument="harpsichord"
    	    \key f \major;
	    \time 12/8;
	    \clef "bass";
    	    \$continuo_2
	}
    >
    
    \paper { linewidth = 18.0 \cm;
	\translator { \ScoreContext \consists "Bar_number_engraver"; }
    }
    
    \midi {
	\tempo 4 = 48;
    }
}

% 3rd movement
\score {
    \header {
	piece = "Allegro"; opus = "";
    }

    \context StaffGroup = fullscore \notes <
	\context Voice = SoloViolinI {
	    \property Staff.midiInstrument="violin"
	    \key d \minor;
	    \time 3/4;
	    \$solo_violin1_3
	}
	\context Voice = SoloViolinII {
	    \property Staff.midiInstrument="violin"
    	    \key d \minor;
	    \time 3/4;
    	    \$solo_violin2_3
	}
	\context Voice = ViolinI {
	    \property Staff.midiInstrument="harpsichord"
	    \key d \minor;
	    \time 3/4;
	    \$violin1_3
	}
	\context Voice = ViolinII {
	    \property Staff.midiInstrument="harpsichord"
    	    \key d \minor;
	    \time 3/4;
    	    \$violin2_3
	}
	\context Voice = Viola {
	    \property Staff.midiInstrument="harpsichord"
    	    \key d \minor;
	    \time 3/4;
	    \clef "alto";
    	    \$viola_3
	}
	\context Voice = Continuo {
	    \property Staff.midiInstrument="harpsichord"
    	    \key d \minor;
	    \time 3/4;
	    \clef "bass";
    	    \$continuo_3
	}
    >
    
    \paper { linewidth = 18.0 \cm;
    	\translator { \VoiceContext beamAutoEnd = "1/4"; }
	\translator { \ScoreContext \consists "Bar_number_engraver"; }
    }
    
    \midi {
	\tempo 4 = 110;
    }
}
