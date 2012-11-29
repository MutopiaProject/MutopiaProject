% This typesetting is dedicated to Shaka Sankofa, a.k.a. Gary Graham, a 
% juvenile murder defendant who was executed by Texas on the evening of
% Friday June 22, 2000 after 19 years on death row.

% The edition from which this was typed has orchestral accompaniment.
% I don't know if there's a piano arrangement which is out of copyright.

\header {
    \include "header.ly"
    subtitle = "for violin and strings (Score)"
    % Want "Score" to appear in subtitle
    filename = "score.ly"
}

\version "2.16.0"

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

% 1st movement, printed version
\score {
    \context StaffGroup = "fullscore"  <<
    	\context Voice = SoloViolin {
	    \key e \major \timeB
	    \soloViolinB
	}
	\context Voice = ViolinI {
	    \key e \major \timeB
    	    \violinBB
	}
	\context Voice = ViolinII {
	    \key e \major \timeB
	    \violinCB
	}
	\context Voice = Viola {
    	    \key e \major \timeB
	    \clef "alto"
    	    \violaB
	}
	\context Voice = Continuo {
    	    \key e \major \timeB
	    \clef "bass"
    	    \continuoB
	}
    >>
    \header {
        piece = \pieceB
        opus = ""
    }
}

% 1st movement, midi version
\score {
    \context StaffGroup = "fullscore"  <<
    	\context Voice = SoloViolin {
	    \set Staff.midiInstrument = \violinMidiInstrument
	    \key e \major \timeB
	    \soloViolinBMidi
	}
	\context Voice = ViolinI {
	    \set Staff.midiInstrument = \accompMidiInstrument
	    \key e \major \timeB
    	    \violinBBMidi
	}
	\context Voice = ViolinII {
	    \set Staff.midiInstrument = \accompMidiInstrument
	    \key e \major \timeB
	    \violinCBMidi
	}
	\context Voice = Viola {
	    \set Staff.midiInstrument = "harpsichord"
    	    \key e \major \timeB
	    \clef "alto"
    	    \violaBMidi
	}
	\context Voice = Continuo {
	    \set Staff.midiInstrument = "harpsichord"
    	    \key e \major \timeB
	    \clef "bass"
    	    \continuoBMidi
	}
    >>
    \midi {
      \tempo 4 = 110
    }
}

% 2nd movement

\score {
    \context StaffGroup = "fullscore"  <<
	\context Voice = SoloViolin {
	    \set Staff.midiInstrument = \violinMidiInstrument
	    \key cis \minor
	    \timeC
	    \soloViolinC
	}
	\context Voice = ViolinI {
	    \set Staff.midiInstrument = \accompMidiInstrument
	    \key cis \minor
	    \timeC
	    \violinBC
	}
	\context Voice = ViolinII {
	    \set Staff.midiInstrument = \accompMidiInstrument
    	    \key cis \minor
	    \timeC
    	    \violinCC
	}
	\context Voice = Viola {
	    \set Staff.midiInstrument = \accompMidiInstrument
    	    \key cis \minor
	    \timeC
	    \clef "alto"
    	    \violaC
	}

	\context Voice = Continuo {
	    \set Staff.midiInstrument = \accompMidiInstrument
    	    \key cis \minor
	    \timeC
	    \clef "bass"
    	    \continuoC
	}
    >>
    \header {
        piece = \pieceC
        opus = ""
    }
    \layout {}
    \midi {
      \tempo 4 = 60
    }
}

% 3rd movement
\score {
    \context StaffGroup = "fullscore"  <<
	\context Voice = SoloViolin {
	    \set Staff.midiInstrument = "violin"
	    \key e \major
	    \timeD
	    \soloViolinD
	}
	\context Voice = ViolinI {
	    \set Staff.midiInstrument = \accompMidiInstrument
	    \key e \major
	    \timeD
	    \violinBD
	}
	\context Voice = ViolinII {
	    \set Staff.midiInstrument = \accompMidiInstrument
    	    \key e \major
	    \timeD
    	    \violinCD
	}
	\context Voice = Viola {
	    \set Staff.midiInstrument = \accompMidiInstrument
    	    \key e \major
	    \timeD
	    \clef "alto"
    	    \violaD
	}
	\context Voice = Continuo {
	    \set Staff.midiInstrument = \accompMidiInstrument
    	    \key e \major
	    \timeD
	    \clef "bass"
    	    \continuoD
	}
    >>
    \header {
        piece = \pieceD
        opus = ""
    }
    \layout {}
    \midi {
      \tempo 4 = 110
    }
}
