% This typesetting is dedicated to Shaka Sankofa, a.k.a. Gary Graham, a 
% juvenile murder defendant who was executed by Texas on the evening of
% Friday June 22, 2000 after 19 years on death row.

% This file creates the part for viola.

% The edition from which this was typed has orchestral accompaniment.
% I don't know if there's a piano arrangement which is out of copyright.

\header {
    \include "header.ly"
    subtitle =	"for violin and strings (Viola)"
    % Want "Viola" to appear in subtitle
    filename = "viola.ly"
}

\include "viola_1.ly"
\include "viola_2.ly"
\include "viola_3.ly"
\include "common-defs.ly"
\version "2.16.0"

% 1st movement, printed version
\score {
     \context Voice = Viola {
        \key e \major \timeB \clef "alto"
        \violaB
    }
    \header {
        piece = \pieceB
        opus = ""
    }
}

% 1st movement, midi version
\score {
     \context Voice = Viola {
	\set Staff.midiInstrument = \violaMidiInstrument
        \key e \major \timeB \clef "alto"
        \violaBMidi
    }
    \midi {
      \tempo 4 = 110
    }
}

% 2nd movement
\score {
     \context Voice = Viola {
        \set Staff.midiInstrument = \violaMidiInstrument
	\key e \major \timeC \clef "alto"
        \violaC
    }
    \header {
        piece = \pieceC
        opus = ""
    }
    \layout {}
    \midi {
      \tempo 4 = 50
    }
}

% 3rd movement
\score {
     \context Voice = Viola {
        \set Staff.midiInstrument = \violaMidiInstrument
	\key e \major \timeD \clef "alto"
        \violaD
    }
    \header {
        piece = \pieceD
        opus = ""
    }
    \layout {}
    \midi {
      \tempo 4 = 120
    }
}
