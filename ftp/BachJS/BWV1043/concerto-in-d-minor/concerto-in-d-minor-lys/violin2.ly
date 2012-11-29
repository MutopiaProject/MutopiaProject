% This file creates the part for violin 2.

% The edition from which this was typed has orchestral accompaniment.
% I don't know if there's a piano arrangement which is out of copyright.

\header {
    \include "header.ly"
    subtitle =	"for two violins and strings (Violin 2)"
    % Want "Violin 2" to appear in subtitle
    filename = "violin2.ly"
}

\include "violin2_1.ly"
\include "violin2_2.ly"
\include "violin2_3.ly"

\version "2.16.0"

% 1st movement
\score {
     \context Voice = ViolinII {
        \set Staff.midiInstrument = "violin"
        \key d \minor
        \time 4/4
        \violinCB
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
     \context Voice = ViolinII {
        \set Staff.midiInstrument = "violin"
        \key f \major
        \time 12/8
        \violinCC
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
     \context Voice = ViolinII {
        \set Staff.midiInstrument = "violin"
        \key d \minor
        \time 3/4
        \violinCD
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
