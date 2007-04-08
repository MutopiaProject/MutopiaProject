% Please remember Shaka Sankofa, a.k.a. Gary Graham, a juvenile murder
% defendant who was executed by Texas on the evening of Friday June 22,
% 2000, after 19 years on death row.

% This file creates the part for solo violin.

% The edition from which this was typed has orchestral accompaniment.
% I don't know if there's a piano arrangement which is out of copyright.

\header {
    \include "header.ly";
    subtitle =	"for violin and strings (Solo Violin)";
    % Want "Solo Violin" to appear in subtitle
    filename = "solo_violin.ly";
}

\include "solo_violin_1.ly"
\include "solo_violin_2.ly"
\include "solo_violin_3.ly"
\include "common-defs.ly"
\version "1.2.17";

% 1st movement, printed version
\score {
    \header { piece = \$piece1 ; opus = "" ; }
    \notes \context Voice = SoloViolin {
        \key e \major; \time 2/2;
        \$solo_violin_1
    }
    \paper { \translator { \VoiceContext beamAutoEnd = "1/4"; } }
}

% 1st movement, midi version
\score {
    \notes \context Voice = SoloViolin {
	\property Staff.midiInstrument = \$violin_midi_instrument
        \key e \major;  \time 2/2;
        \$solo_violin_1_midi
    }
    \midi { \tempo 4 = 110; }
}

% 2nd movement
\score {
    \header { piece = \$piece2 ; opus = "" ; }
    \notes \context Voice = SoloViolin {
        \property Staff.midiInstrument = \$violin_midi_instrument
	\key e \major; \time 3/4;
        \$solo_violin_2
    }
    \paper { \translator { \VoiceContext beamAutoEnd = "1/4"; } }
    \midi { \tempo 4 = 50; }
}

% 3rd movement
\score {
    \header { piece = \$piece3 ; opus = "" ; }
    \notes \context Voice = SoloViolin {
        \property Staff.midiInstrument = \$violin_midi_instrument
	\key e \major; \time 3/8;
        \$solo_violin_3
    }
    \paper {}
    \midi { \tempo 4 = 120; }
}
