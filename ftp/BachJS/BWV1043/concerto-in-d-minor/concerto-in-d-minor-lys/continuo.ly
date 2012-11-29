% This file creates the part for continuo.

% The edition from which this was typed has orchestral accompaniment.
% I don't know if there's a piano arrangement which is out of copyright.

\header {
    \include "header.ly"
    subtitle =	"for two violins and strings (Continuo)"
    % Want "Continuo" to appear in subtitle
    filename = "continuo.ly"
}

\include "continuo_1.ly"
\include "continuo_2.ly"
\include "continuo_3.ly"
\version "2.16.0"


% 1st movement
\score {
     \context Voice = Continuo {
        \set Staff.midiInstrument = "cello"
        \key d \minor
        \time 4/4
	\clef "bass"
        \continuoB
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
     \context Voice = Continuo {
        \set Staff.midiInstrument = "cello"
        \key f \major
        \time 12/8
	\clef "bass"
        \continuoC
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
     \context Voice = Continuo {
        \set Staff.midiInstrument = "cello"
        \key d \minor
        \time 3/4
	\clef "bass"
        \continuoD
    }
    \header {
	piece = "Allegro"
        opus = ""
    }
    \layout {}
    \midi {
      \tempo 4 = 110
    }
}
