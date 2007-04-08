% This file creates the part for violin 2.

% The edition from which this was typed has orchestral accompaniment.
% I don't know if there's a piano arrangement which is out of copyright.

\header {
    \include "header.ly"
    subtitle =	"for two violins and strings (Violin 2)";
    % Want "Violin 2" to appear in subtitle
    filename = "violin2.ly";
}

\include "violin2_1.ly"
\include "violin2_2.ly"
\include "violin2_3.ly"

\version "1.2.17";

% 1st movement
\score {
    \header {
	piece = "Vivace"; opus = "";
    }

    \notes \context Voice = ViolinII {
        \property Staff.midiInstrument="violin"
        \key d \minor;
        \time 4/4;
        \$violin2_1
    }
    
    \paper { linewidth = 18.0 \cm;
	\translator { \StaffContext \consists "Bar_number_engraver"; }
	\translator { \ScoreContext skipBars = 1; }
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

    \notes \context Voice = ViolinII {
        \property Staff.midiInstrument="violin"
        \key f \major;
        \time 12/8;
        \$violin2_2
    }
        
    \paper { linewidth = 18.0 \cm;
	\translator { \StaffContext \consists "Bar_number_engraver"; }
        \translator { \ScoreContext skipBars = 1; }
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

    \notes \context Voice = ViolinII {
        \property Staff.midiInstrument="violin"
        \key d \minor;
        \time 3/4;
        \$violin2_3
    }
        
    \paper { linewidth = 18.0 \cm;
    	\translator { \VoiceContext beamAutoEnd = "1/4"; }
	\translator { \StaffContext \consists "Bar_number_engraver"; }
	\translator { \ScoreContext skipBars = 1; }
    }
    
    \midi {
	\tempo 4 = 110;
    }
}
