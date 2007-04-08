% This typesetting is dedicated to Shaka Sankofa, a.k.a. Gary Graham, a 
% juvenile murder defendant who was executed by Texas on the evening of
% Friday June 22, 2000 after 19 years on death row.

% The edition from which this was typed has orchestral accompaniment.
% I don't know if there's a piano arrangement which is out of copyright.

\header {
    \include "header.ly";
    subtitle = "for violin and strings (Score)";
    % Want "Score" to appear in subtitle
    filename = "score.ly";
}

\version "1.2.17";

\include "solo_violin_1.ly"
\include "violin1_1.ly"
\include "violin2_1.ly"
\include "viola_1.ly"
\include "continuo_1.ly"

\include "solo_violin_2.ly"
\include "violin1_2.ly"
\include "violin2_2.ly"
\include "viola_2.ly"
\include "continuo_2.ly"

\include "solo_violin_3.ly"
\include "violin1_3.ly"
\include "violin2_3.ly"
\include "viola_3.ly"
\include "continuo_3.ly"


\include "common-defs.ly"
\paper { \translator { \ScoreContext skipBars = 0 ; } }

% 1st movement, printed version
\score {
    \header { piece = \$piece1 ; opus = ""; }
    \context StaffGroup = fullscore \notes <
    	\context Voice = SoloViolin {
	    \key e \major; \time 2/2;
	    \$solo_violin_1
	}
	\context Voice = ViolinI {
	    \key e \major; \time 2/2;
    	    \$violin1_1
	}
	\context Voice = ViolinII {
	    \key e \major; \time 2/2;
	    \$violin2_1
	}
	\context Voice = Viola {
    	    \key e \major; \time 2/2;
	    \clef "alto";
    	    \$viola_1
	}
	\context Voice = Continuo {
    	    \key e \major; \time 2/2;
	    \clef "bass";
    	    \$continuo_1
	}
    >
    \paper { \translator { \VoiceContext beamAutoEnd = "1/4"; } }
}

% 1st movement, midi version
\score {
    \header { piece = \$piece1 ; opus = ""; }
    \context StaffGroup = fullscore \notes <
    	\context Voice = SoloViolin {
	    \property Staff.midiInstrument = \$violin_midi_instrument
	    \key e \major; \time 2/2;
	    \$solo_violin_1_midi
	}
	\context Voice = ViolinI {
	    \property Staff.midiInstrument = \$accomp_midi_instrument
	    \key e \major; \time 2/2;
    	    \$violin1_1_midi
	}
	\context Voice = ViolinII {
	    \property Staff.midiInstrument = \$accomp_midi_instrument
	    \key e \major; \time 2/2;
	    \$violin2_1_midi
	}
	\context Voice = Viola {
	    \property Staff.midiInstrument="harpsichord"
    	    \key e \major; \time 2/2;
	    \clef "alto";
    	    \$viola_1_midi
	}
	\context Voice = Continuo {
	    \property Staff.midiInstrument="harpsichord"
    	    \key e \major; \time 2/2;
	    \clef "bass";
    	    \$continuo_1_midi
	}

    >
    \midi { \tempo 4 = 110; }
}

% 2nd movement

\score {
    \header { piece = \$piece2 ; opus = ""; }

    \context StaffGroup = fullscore \notes <
	\context Voice = SoloViolin {
	    \property Staff.midiInstrument=\$violin_midi_instrument
	    \key cis \minor;
	    \time 3/4;
	    \$solo_violin_2
	}
	\context Voice = ViolinI {
	    \property Staff.midiInstrument=\$accomp_midi_instrument
	    \key cis \minor;
	    \time 3/4;
	    \$violin1_2
	}
	\context Voice = ViolinII {
	    \property Staff.midiInstrument=\$accomp_midi_instrument
    	    \key cis \minor;
	    \time 3/4;
    	    \$violin2_2
	}
	\context Voice = Viola {
	    \property Staff.midiInstrument=\$accomp_midi_instrument
    	    \key cis \minor;
	    \time 3/4;
	    \clef "alto";
    	    \$viola_2
	}

	\context Voice = Continuo {
	    \property Staff.midiInstrument=\$accomp_midi_instrument
    	    \key cis \minor;
	    \time 3/4;
	    \clef "bass";
    	    \$continuo_2
	}
    >
    \paper { linewidth = 18.0 \cm;
	\translator { \ScoreContext \consists "Bar_number_engraver"; }
    }
    
    \midi {
	\tempo 4 = 60;
    }
}

% 3rd movement
\score {
    \header {
	piece = \$piece3 ; opus = "";    }

    \context StaffGroup = fullscore \notes <
	\context Voice = SoloViolin {
	    \property Staff.midiInstrument="violin"
	    \key e \major;
	    \time 3/8;
	    \$solo_violin_3
	}
	\context Voice = ViolinI {
	    \property Staff.midiInstrument=\$accomp_midi_instrument
	    \key e \major;
	    \time 3/8;
	    \$violin1_3
	}
	\context Voice = ViolinII {
	    \property Staff.midiInstrument=\$accomp_midi_instrument
    	    \key e \major;
	    \time 3/8;
    	    \$violin2_3
	}
	\context Voice = Viola {
	    \property Staff.midiInstrument=\$accomp_midi_instrument
    	    \key e \major;
	    \time 3/8;
	    \clef "alto";
    	    \$viola_3
	}
	\context Voice = Continuo {
	    \property Staff.midiInstrument=\$accomp_midi_instrument
    	    \key e \major;
	    \time 3/8;
	    \clef "bass";
    	    \$continuo_3
	}
    >
    
    \paper { linewidth = 18.0 \cm;
	\translator { \ScoreContext \consists "Bar_number_engraver"; }
    }
    
    \midi {
	\tempo 4 = 110;
    }
}
