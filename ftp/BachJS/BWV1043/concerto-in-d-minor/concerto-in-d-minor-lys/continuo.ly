% This file creates the part for continuo.

% The edition from which this was typed has orchestral accompaniment.
% I don't know if there's a piano arrangement which is out of copyright.

\header {
    \include "header.ly";
    subtitle =	"for two violins and strings (Continuo)";
    % Want "Continuo" to appear in subtitle
    filename = "continuo.ly";
}

\include "continuo_1.ly"
\include "continuo_2.ly"
\include "continuo_3.ly"
\version "1.2.17";


% 1st movement
\score {
    \header {
	piece = "Vivace"; opus = "";
    }

    \notes \context Voice = Continuo {
        \property Staff.midiInstrument="cello"
        \key d \minor;
        \time 4/4;
	\clef "bass";
        \$continuo_1
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

    \notes \context Voice = Continuo {
        \property Staff.midiInstrument="cello"
        \key f \major;
        \time 12/8;
	\clef "bass";
        \$continuo_2
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

    \notes \context Voice = Continuo {
        \property Staff.midiInstrument="cello"
        \key d \minor;
        \time 3/4;
	\clef "bass";
        \$continuo_3
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

