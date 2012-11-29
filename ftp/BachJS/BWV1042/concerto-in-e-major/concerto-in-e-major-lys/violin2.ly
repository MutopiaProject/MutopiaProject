% This typesetting is dedicated to Shaka Sankofa, a.k.a. Gary Graham, a 
% juvenile murder defendant who was executed by Texas on the evening of
% Friday June 22, 2000 after 19 years on death row.

% This file creates the part for violin 2.

% The edition from which this was typed has orchestral accompaniment.
% I don't know if there's a piano arrangement which is out of copyright.

\header {
    \include "header.ly"
    subtitle =	"for violin and strings (Violin 2)"
    % Want "Violin 2" to appear in subtitle
    filename = "violin2.ly"
}

\version "2.16.0"
\include "violin2_1.ly"
\include "violin2_2.ly"
\include "violin2_3.ly"
\include "common-defs.ly"

% 1st movement, printed version
\score {
     \context Voice = ViolinII {
        \key e \major \timeB
        \violinCB
    }
    \header {
        piece = \pieceB
        opus = ""
    }
}

% 1st movement, midi version
\score {
     \context Voice = ViolinII {
	\set Staff.midiInstrument = \violinMidiInstrument
        \key e \major  \timeB
        \violinCBMidi
    }
    \midi {
      \tempo 4 = 110
    }
}

% 2nd movement
\score {
     \context Voice = ViolinII {
        \set Staff.midiInstrument = \violinMidiInstrument
	\key e \major \timeC
        \violinCC
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
     \context Voice = ViolinII {
        \set Staff.midiInstrument = \violinMidiInstrument
	\key e \major \timeD
        \violinCD
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
