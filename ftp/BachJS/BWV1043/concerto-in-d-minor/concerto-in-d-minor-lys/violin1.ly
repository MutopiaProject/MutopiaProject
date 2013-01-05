% This file creates the part for violin 1.

% The edition from which this was typed has orchestral accompaniment.
% I don't know if there's a piano arrangement which is out of copyright.

\header {
    \include "header.ly"
    subtitle =	"for two violins and strings (Violin 1)"
    % Want "Violin 1" to appear in subtitle
    filename = "violin1.ly"
}

\include "violin1_1.ly"
\include "violin1_2.ly"
\include "violin1_3.ly"
\version "2.16.0"

% 1st movement
\score {
     \context Voice = ViolinI {
        \set Staff.midiInstrument = "violin"
        \key d \minor
        \time 4/4
        \violinBB
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
     \context Voice =ViolinI {
        \set Staff.midiInstrument = "violin"
        \key f \major
        \time 12/8
        \violinBC
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
     \context Voice = ViolinI {
        \set Staff.midiInstrument = "violin"
        \key d \minor
        \time 3/4
        \violinBD
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
