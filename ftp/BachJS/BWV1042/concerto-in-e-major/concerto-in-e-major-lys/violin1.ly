% This typesetting is dedicated to Shaka Sankofa, a.k.a. Gary Graham, a 
% juvenile murder defendant who was executed by Texas on the evening of
% Friday June 22, 2000 after 19 years on death row.

% This file creates the part for violin 1.

% The edition from which this was typed has orchestral accompaniment.
% I don't know if there's a piano arrangement which is out of copyright.

\header {
    \include "header.ly";
    subtitle =	"for violin and strings (Violin 1)";
    % Want "Violin 1" to appear in subtitle
    filename = "violin1.ly";
}

\version "1.2.17";
\include "violin1_1.ly"
\include "violin1_2.ly"
\include "violin1_3.ly"
\include "common-defs.ly"

% 1st movement, printed version
\score {
    \header { piece = \$piece1 ; opus = "" ; }
    \notes \context Voice = ViolinI {
        \key e \major; \time 2/2;
        \$violin1_1
    }
    \paper { \translator { \VoiceContext beamAutoEnd = "1/4"; } }
}

% 1st movement, midi version
\score {
    \notes \context Voice = ViolinI {
	\property Staff.midiInstrument = \$violin_midi_instrument
        \key e \major;  \time 2/2;
        \$violin1_1_midi
    }
    \midi { \tempo 4 = 110; }
}

% 2nd movement
\score {
    \header { piece = \$piece2 ; opus = "" ; }
    \notes \context Voice = ViolinI {
        \property Staff.midiInstrument = \$violin_midi_instrument
	\key e \major; \time 3/4;
        \$violin1_2
    }
    \paper { \translator { \VoiceContext beamAutoEnd = "1/4"; } }
    \midi { \tempo 4 = 50; }
}

% 3rd movement
\score {
    \header { piece = \$piece3 ; opus = "" ; }
    \notes \context Voice = ViolinI {
        \property Staff.midiInstrument = \$violin_midi_instrument
	\key e \major; \time 3/8;
        \$violin1_3
    }
    \paper {}
    \midi { \tempo 4 = 120; }
}
