% This file creates the score.

% The edition from which this was typed has orchestral accompaniment.
% I don't know if there's a piano arrangement which is out of copyright.

%#(set-default-paper-size "a4")
#(set-global-staff-size 15)
\header {
    \include "header.ly"
    % Want "Score" to appear in subtitle
    filename = "score.ly"
}

\paper {
  raggedbottom = ##f
  raggedlastbottom = ##f
}

\version "2.6.4"


\include "marks.ly"
\include "violin1_1.ly"
\include "violin1_2.ly"
\include "violin1_3.ly"
\include "violin1_4.ly"
\include "violin2_1.ly"
\include "violin2_2.ly"
\include "violin2_3.ly"
\include "violin2_4.ly"
\include "violin3_1.ly"
\include "violin3_2.ly"
\include "violin3_3.ly"
\include "violin3_4.ly"
\include "violin4_1.ly"
\include "violin4_2.ly"
\include "violin4_3.ly"
\include "violin4_4.ly"
\include "viola1_1.ly"
\include "viola1_2.ly"
\include "viola1_3.ly"
\include "viola1_4.ly"
\include "viola2_1.ly"
\include "viola2_2.ly"
\include "viola2_3.ly"
\include "viola2_4.ly"
\include "cello1_1.ly"
\include "cello1_2.ly"
\include "cello1_3.ly"
\include "cello1_4.ly"
\include "cello2_1.ly"
\include "cello2_2.ly"
\include "cello2_3.ly"
\include "cello2_4.ly"

ScoreFirstMovementTiming =
{
 s1^\markup {" " \raise #4.0 \bold\huge "Allegro moderato ma con fuoco"} | 
 s1*158 
 s1*81
 s1^\markup{" " \raise #2.0 \bold\huge "poco rit."} |
 s1*3 |
 s1^\markup{" " \raise #2.0 \bold\huge "a tempo"}
}


ScoreSecondMovementTiming =
{
 s2.*3^\markup {" " \raise #4.0 \bold\huge "Andante"} |
}


ScoreThirdMovementTiming =
{
 s2^\markup {" " \raise #4.0 \bold\huge "Allegro leggierissimo"} |
}

ScoreFourthMovementTiming =
{
 s1*21^\markup {" " \raise #4.0 \bold\huge "Presto"} | 
}

\book {
    
% 1rd movement
\score { <<
    \override Score.BarNumber #'padding = #2
    \override Score.RehearsalMark #'padding = #2
    \set Score.skipBars = ##t
    \new StaffGroup  <<
	\new Voice {
	    \set Staff.midiInstrument = "violin"
	    \set Staff.instrument = "Violin I"
	    \set Staff.instr = "Vl.I"
	    << \FirstMovementMarks \ScoreFirstMovementTiming \FirstViolinFirstMovement >>

	}
	\new Voice {
	    \set Staff.midiInstrument = "violin"
	    \set Staff.instrument = "Violin II"
	    \set Staff.instr = "Vl.II"    
    	    \SecondViolinFirstMovement
	}
	\new Voice {
	    \set Staff.midiInstrument = "violin"
	    \set Staff.instrument = "Violin III"
	    \set Staff.instr = "Vl.III"    
    	    \ThirdViolinFirstMovement
	}
	\new Voice {
	    \set Staff.midiInstrument = "violin"
	    \set Staff.instrument = "Violin IV"
	    \set Staff.instr = "Vl.IV"    
    	    \FourthViolinFirstMovement
	}
    >>
    \new StaffGroup <<
	\new Voice {
	    \set Staff.midiInstrument = "viola"
	    \set Staff.instrument = "Viola I"
	    \set Staff.instr = "Vla.I"
	    \FirstViolaFirstMovement
	}
	\new Voice {
	    \set Staff.midiInstrument = "viola"
	    \set Staff.instrument = "Viola II"
	    \set Staff.instr = "Vla.II"
	    \SecondViolaFirstMovement
	}
    >>
    \new StaffGroup << 
	\new Voice {
	    \set Staff.midiInstrument = "cello"
	    \set Staff.instrument = "Violoncello I"
	    \set Staff.instr = "Vc.I"
	    \FirstCelloFirstMovement
	}
	\new Voice {
	    \set Staff.midiInstrument = "cello"
	    \set Staff.instrument = "Violoncello II"
	    \set Staff.instr = "Vc.II"
	    \SecondCelloFirstMovement |
	}
    >>
>>
\midi { \tempo 4=112}
\layout { }
}
%Second Movement
\score { <<
    \override Score.BarNumber #'padding = #2
    \override Score.RehearsalMark #'padding = #2
    \set Score.skipBars = ##t
    \new StaffGroup  <<
	\new Voice {
	    \set Staff.midiInstrument = "violin"
	    \set Staff.instrument = "Violin I"
	    \set Staff.instr = "Vl.I"
	    << \SecondMovementMarks \ScoreSecondMovementTiming \FirstViolinSecondMovement >>

	}
	\new Voice {
	    \set Staff.midiInstrument = "violin"
	    \set Staff.instrument = "Violin II"
	    \set Staff.instr = "Vl.II"    
    	    \SecondViolinSecondMovement
	}
	\new Voice {
	    \set Staff.midiInstrument = "violin"
	    \set Staff.instrument = "Violin III"
	    \set Staff.instr = "Vl.III"    
    	    \ThirdViolinSecondMovement
	}
	\new Voice {
	    \set Staff.midiInstrument = "violin"
	    \set Staff.instrument = "Violin IV"
	    \set Staff.instr = "Vl.IV"    
    	    \FourthViolinSecondMovement
	}
    >>
    \new StaffGroup <<
	\new Voice {
	    \set Staff.midiInstrument = "viola"
	    \set Staff.instrument = "Viola I"
	    \set Staff.instr = "Vla.I"
	    \FirstViolaSecondMovement
	}
	\new Voice {
	    \set Staff.midiInstrument = "viola"
	    \set Staff.instrument = "Viola II"
	    \set Staff.instr = "Vla.II"
	    \SecondViolaSecondMovement
	}
    >>
    \new StaffGroup << 
	\new Voice {
	    \set Staff.midiInstrument = "cello"
	    \set Staff.instrument = "Violoncello I"
	    \set Staff.instr = "Vc.I"
	    \FirstCelloSecondMovement |
	}
	\new Voice {
	    \set Staff.midiInstrument = "cello"
	    \set Staff.instrument = "Violoncello II"
	    \set Staff.instr = "Vc.II"
	    \SecondCelloSecondMovement
	}
    >>
>>
\midi { \tempo 8=80}
\layout { }
}
%Third Movement
\score { <<
    \override Score.BarNumber #'padding = #2
    \override Score.RehearsalMark #'padding = #2
 \set Score.skipBars = ##t
 \new StaffGroup  <<
  \new Voice {
   \set Staff.midiInstrument = "violin"
   \set Staff.instrument = "Violin I"
   \set Staff.instr = "Vl.I"
   << \ThirdMovementMarks \ScoreThirdMovementTiming \FirstViolinThirdMovement >>
  }
  \new Voice {
   \set Staff.midiInstrument = "violin"
   \set Staff.instrument = "Violin II"
   \set Staff.instr = "Vl.II"    
   \SecondViolinThirdMovement
  }
  \new Voice {
   \set Staff.midiInstrument = "violin"
   \set Staff.instrument = "Violin III"
   \set Staff.instr = "Vl.III"    
   \ThirdViolinThirdMovement
  }
  \new Voice {
   \set Staff.midiInstrument = "violin"
   \set Staff.instrument = "Violin IV"
   \set Staff.instr = "Vl.IV"    
   \FourthViolinThirdMovement
  }
 >>
 \new StaffGroup <<
  \new Voice {
   \set Staff.midiInstrument = "viola"
   \set Staff.instrument = "Viola I"
   \set Staff.instr = "Vla.I"
   \FirstViolaThirdMovement
  }
  \new Voice {
   \set Staff.midiInstrument = "viola"
   \set Staff.instrument = "Viola II"
   \set Staff.instr = "Vla.II"
   \SecondViolaThirdMovement
  }
 >>
 \new StaffGroup << 
  \new Voice {
   \set Staff.midiInstrument = "cello"
   \set Staff.instrument = "Violoncello I"
   \set Staff.instr = "Vc.I"
   \FirstCelloThirdMovement
  }
  \new Voice {
   \set Staff.midiInstrument = "cello"
   \set Staff.instrument = "Violoncello II"
   \set Staff.instr = "Vc.II"
   \SecondCelloThirdMovement
  }
 >>
>>
\midi { \tempo 4=112}
\layout { }
}
%Fourth Movement
\score { <<
    \override Score.BarNumber #'padding = #2
    \override Score.RehearsalMark #'padding = #2
 \set Score.skipBars = ##t
 \new StaffGroup  <<
  \new Voice {
   \set Staff.midiInstrument = "violin"
   \set Staff.instrument = "Violin I"
   \set Staff.instr = "Vl.I"
   << \FourthMovementMarks \ScoreFourthMovementTiming \FirstViolinFourthMovement >>
  }
  \new Voice {
   \set Staff.midiInstrument = "violin"
   \set Staff.instrument = "Violin II"
   \set Staff.instr = "Vl.II"    
   \SecondViolinFourthMovement
  }
  \new Voice {
   \set Staff.midiInstrument = "violin"
   \set Staff.instrument = "Violin III"
   \set Staff.instr = "Vl.III"    
   \ThirdViolinFourthMovement
  }
  \new Voice {
   \set Staff.midiInstrument = "violin"
   \set Staff.instrument = "Violin IV"
   \set Staff.instr = "Vl.IV"    
   \FourthViolinFourthMovement
  }
 >>
 \new StaffGroup <<
  \new Voice {
   \set Staff.midiInstrument = "viola"
   \set Staff.instrument = "Viola I"
   \set Staff.instr = "Vla.I"
   \FirstViolaFourthMovement
  }
  \new Voice {
   \set Staff.midiInstrument = "viola"
   \set Staff.instrument = "Viola II"
   \set Staff.instr = "Vla.II"
   \SecondViolaFourthMovement
  }
 >>
 \new StaffGroup << 
  \new Voice {
   \set Staff.midiInstrument = "cello"
   \set Staff.instrument = "Violoncello I"
   \set Staff.instr = "Vc.I"
   \FirstCelloFourthMovement
  }
  \new Voice {
   \set Staff.midiInstrument = "cello"
   \set Staff.instrument = "Violoncello II"
   \set Staff.instr = "Vc.II"
   \SecondCelloFourthMovement |
  }
 >>
>>
\midi { \tempo 2=132 }
\layout { }
}
}
