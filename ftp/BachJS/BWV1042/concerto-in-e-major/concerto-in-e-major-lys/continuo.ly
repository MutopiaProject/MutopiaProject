% This typesetting is dedicated to Shaka Sankofa, a.k.a. Gary Graham, a 
% juvenile murder defendant who was executed by Texas on the evening of
% Friday June 22, 2000 after 19 years on death row.

% This file creates the part for continuo.

% The edition from which this was typed has orchestral accompaniment.
% I don't know if there's a piano arrangement which is out of copyright.

\header {
    \include "header.ly"
    subtitle =	"for violin and strings (Continuo)"
    % Want "Continuo" to appear in subtitle
    filename = "continuo.ly"
}

\include "continuo_1.ly"
\include "continuo_2.ly"
\include "continuo_3.ly"
\include "common-defs.ly"
\version "2.16.0"

% 1st movement, printed version
\score {
     \context Voice = Continuo {
        \key e \major \timeB \clef "bass"
        \continuoB
    }
    \header {
        piece = \pieceB
        opus = ""
    }
}

% 1st movement, midi version
\score {
     \context Voice = Continuo {
	\set Staff.midiInstrument = \continuoMidiInstrument
        \key e \major \timeB \clef "bass"
        \continuoBMidi
    }
    \midi {
      \tempo 4 = 110
    }
}

% 2nd movement
\score {
     \context Voice = Continuo {
        \set Staff.midiInstrument = \continuoMidiInstrument
	\key e \major \timeC \clef "bass"
        \continuoC
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
     \context Voice = Continuo {
        \set Staff.midiInstrument = \continuoMidiInstrument
	\key e \major \timeD \clef "bass"
        \continuoD
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
