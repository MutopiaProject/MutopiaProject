% This typesetting is dedicated to Shaka Sankofa, a.k.a. Gary Graham, a 
% juvenile murder defendant who was executed by Texas on the evening of
% Friday June 22, 2000 after 19 years on death row.

% This file creates the part for viola.

% The edition from which this was typed has orchestral accompaniment.
% I don't know if there's a piano arrangement which is out of copyright.

\header {
    \include "header.ly";
    subtitle =	"for violin and strings (Viola)";
    % Want "Viola" to appear in subtitle
    filename = "viola.ly";
}

\include "viola_1.ly"
\include "viola_2.ly"
\include "viola_3.ly"
\include "common-defs.ly"
\version "1.2.17";

% 1st movement, printed version
\score {
    \header { piece = \$piece1 ; opus = "" ; }
    \notes \context Voice = Viola {
        \key e \major; \time 2/2; \clef "alto";
        \$viola_1
    }
    \paper { \translator { \VoiceContext beamAutoEnd = "1/4"; } }
}

% 1st movement, midi version
\score {
    \notes \context Voice = Viola {
	\property Staff.midiInstrument = \$viola_midi_instrument
        \key e \major; \time 2/2; \clef "alto";
        \$viola_1_midi
    }
    \midi { \tempo 4 = 110; }
}

% 2nd movement
\score {
    \header { piece = \$piece2 ; opus = "" ; }
    \notes \context Voice = Viola {
        \property Staff.midiInstrument = \$viola_midi_instrument
	\key e \major; \time 3/4; \clef "alto";
        \$viola_2
    }
    \paper { \translator { \VoiceContext beamAutoEnd = "1/4"; } }
    \midi { \tempo 4 = 50; }
}

% 3rd movement
\score {
    \header { piece = \$piece3 ; opus = "" ; }
    \notes \context Voice = Viola {
        \property Staff.midiInstrument = \$viola_midi_instrument
	\key e \major; \time 3/8; \clef "alto";
        \$viola_3
    }
    \paper {}
    \midi { \tempo 4 = 120; }
}
