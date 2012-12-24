% This file creates the part for viola.

% The edition from which this was typed has orchestral accompaniment.
% I don't know if there's a piano arrangement which is out of copyright.

\header {
    \include "header.ly"
    subtitle =	"for two violins and strings (Viola)"
    % Want "Viola" to appear in subtitle
    filename = "viola.ly"
}

\include "viola_1.ly"
\include "viola_2.ly"
\include "viola_3.ly"
\version "2.16.0"

% 1st movement
\score {
     \context Voice = Viola {
        \set Staff.midiInstrument = "viola"
        \key d \minor
        \time 4/4
	\clef "alto"
        \violaB
    }
    \header {
	piece = "Vivace"
        opus = ""
    }
    \layout {}
    \midi {
      \tempo 4 = 100
    }
}

% 2nd movement
\score {
     \context Voice = Viola {
        \set Staff.midiInstrument = "viola"
        \key f \major
        \time 12/8
	\clef "alto"
        \violaC
    }
    \header {
	piece = "Largo ma non tanto"
        opus = ""
    }
    \layout {}
    \midi {
      \tempo 4 = 48
    }
}


% 3rd movement
\score {
     \context Voice = Viola {
        \set Staff.midiInstrument = "viola"
        \key d \minor
        \time 3/4
	\clef "alto"
        \violaD
    }
    \header {
	piece = "Allegro" opus = ""
    }
    \layout {}
    \midi {
      \tempo 4 = 110
    }
}
