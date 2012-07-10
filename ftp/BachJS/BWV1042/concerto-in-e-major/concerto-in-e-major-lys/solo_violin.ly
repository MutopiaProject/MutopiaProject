% Please remember Shaka Sankofa, a.k.a. Gary Graham, a juvenile murder
% defendant who was executed by Texas on the evening of Friday June 22,
% 2000, after 19 years on death row.

% This file creates the part for solo violin.

% The edition from which this was typed has orchestral accompaniment.
% I don't know if there's a piano arrangement which is out of copyright.

\header {
    \include "header.ly"
    subtitle =	"for violin and strings (Solo Violin)"
    % Want "Solo Violin" to appear in subtitle
    filename = "solo_violin.ly"
}

\include "solo_violin_1.ly"
\include "solo_violin_2.ly"
\include "solo_violin_3.ly"
\include "common-defs.ly"
\version "2.14.0"

% 1st movement, printed version
\score {
     \context Voice = SoloViolin {
        \key e \major \timeB
        \soloViolinB
    }
    \header {
        piece = \pieceB
        opus = ""
    }
}

% 1st movement, midi version
\score {
     \context Voice = SoloViolin {
	\set Staff.midiInstrument = \violinMidiInstrument
        \key e \major  \timeB
        \soloViolinBMidi
    }
    \midi {
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 110 4)
      }
    }
}

% 2nd movement
\score {
     \context Voice = SoloViolin {
        \set Staff.midiInstrument = \violinMidiInstrument
	\key e \major \timeC
        \soloViolinC
    }
    \header {
        piece = \pieceC
        opus = ""
    }
    \layout {}
    \midi {
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 50 4)
      }
    }
}

% 3rd movement
\score {
     \context Voice = SoloViolin {
        \set Staff.midiInstrument = \violinMidiInstrument
	\key e \major \timeD
        \soloViolinD
    }
    \header {
        piece = \pieceD
        opus = ""
    }
    \layout {}
    \midi {
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }
}
