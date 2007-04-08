% This file creates the part for viola.

% The edition from which this was typed has orchestral accompaniment.
% I don't know if there's a piano arrangement which is out of copyright.

\header {
    \include "header.ly";
    subtitle =	"for two violins and strings (Viola)";
    % Want "Viola" to appear in subtitle
    filename = "viola.ly";
}

\include "viola_1.ly"
\include "viola_2.ly"
\include "viola_3.ly"
\version "1.2.17";

% 1st movement
\score {
    \header {
	piece = "Vivace"; opus = "";
    }

    \notes \context Voice = Viola {
        \property Staff.midiInstrument="viola"
        \key d \minor;
        \time 4/4;
	\clef "alto";
        \$viola_1
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

    \notes \context Voice = Viola {
        \property Staff.midiInstrument="viola"
        \key f \major;
        \time 12/8;
	\clef "alto";
        \$viola_2
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

    \notes \context Voice = Viola {
        \property Staff.midiInstrument="viola"
        \key d \minor;
        \time 3/4;
	\clef "alto";
        \$viola_3
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
