% This typesetting is dedicated to Shaka Sankofa, a.k.a. Gary Graham, a 
% juvenile murder defendant who was executed by Texas on the evening of
% Friday June 22, 2000 after 19 years on death row.

% This file creates the part for continuo.

% The edition from which this was typed has orchestral accompaniment.
% I don't know if there's a piano arrangement which is out of copyright.

\header {
    \include "header.ly";
    subtitle =	"for violin and strings (Continuo)";
    % Want "Continuo" to appear in subtitle
    filename = "continuo.ly";
}

\include "continuo_1.ly"
\include "continuo_2.ly"
\include "continuo_3.ly"
\include "common-defs.ly"
\version "1.2.17";

% 1st movement, printed version
\score {
    \header { piece = \$piece1 ; opus = "" ; }
    \notes \context Voice = Continuo {
        \key e \major; \time 2/2; \clef "bass";
        \$continuo_1
    }
    \paper { \translator { \VoiceContext beamAutoEnd = "1/4"; } }
}

% 1st movement, midi version
\score {
    \notes \context Voice = Continuo {
	\property Staff.midiInstrument = \$continuo_midi_instrument
        \key e \major; \time 2/2; \clef "bass";
        \$continuo_1_midi
    }
    \midi { \tempo 4 = 110; }
}

% 2nd movement
\score {
    \header { piece = \$piece2 ; opus = "" ; }
    \notes \context Voice = Continuo {
        \property Staff.midiInstrument = \$continuo_midi_instrument
	\key e \major; \time 3/4; \clef "bass";
        \$continuo_2
    }
    \paper { \translator { \VoiceContext beamAutoEnd = "1/4"; } }
    \midi { \tempo 4 = 50; }
}

% 3rd movement
\score {
    \header { piece = \$piece3 ; opus = "" ; }
    \notes \context Voice = Continuo {
        \property Staff.midiInstrument = \$continuo_midi_instrument
	\key e \major; \time 3/8; \clef "bass";
        \$continuo_3
    }
    \paper {}
    \midi { \tempo 4 = 120; }
}
