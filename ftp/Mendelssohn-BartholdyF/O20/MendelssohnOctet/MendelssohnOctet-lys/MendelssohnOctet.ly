% This file creates the score and MIDI files.

% The edition from which this was typed has orchestral accompaniment.
% I don't know if there's a piano arrangement which is out of copyright.

\version "2.19.80"

%#(set-default-paper-size "a4")
#(set-global-staff-size 15)
\header {
  \include "header.ly"
  % Want "Score" to appear in subtitle
  filename = "score.ly"
}

\paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  
  markup-system-spacing = 
    #'((basic-distance . 2)
       (padding . 1)) % defaults: 1, 0.5
    
  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 2)
       (stretchability . 60)) % defaults: 12, 8, 1, 60
    
  % Variables not affected by scaling of paper size 
  top-margin = 12\mm % default 5
  bottom-margin = 12\mm % default 6  
}

\include "articulate.ly"

% What proportion of an ordinary grace note's time should be stolen
% from preceding notes (as opposed to stealing from the principal note).
% Composers' intentions for this vary.  Taking all from the preceding
% notes is LilyPond's built-in behaviour for MIDI output.
#(define ac:defaultGraceBackwardness 0) % default: 1

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

% --- Printed score

\book {

  % First movement
  \score {
    <<
      \override Score.BarNumber.padding = #2
      \override Score.RehearsalMark.padding = #2
      \set Score.skipBars = ##t
      \new StaffGroup  <<
        \new Voice {
          \set Staff.instrumentName = "Violin I"
          \set Staff.shortInstrumentName = "Vl.I"
          <<
            \FirstMovementMarks
            \ScoreFirstMovementTiming
            \FirstViolinFirstMovement
          >>
        }
        \new Voice {
          \set Staff.instrumentName = "Violin II"
          \set Staff.shortInstrumentName = "Vl.II"
          \SecondViolinFirstMovement
        }
        \new Voice {
          \set Staff.instrumentName = "Violin III"
          \set Staff.shortInstrumentName = "Vl.III"
          \ThirdViolinFirstMovement
        }
        \new Voice {
          \set Staff.instrumentName = "Violin IV"
          \set Staff.shortInstrumentName = "Vl.IV"
          \FourthViolinFirstMovement
        }
      >>
      \new StaffGroup <<
        \new Voice {
          \set Staff.instrumentName = "Viola I"
          \set Staff.shortInstrumentName = "Vla.I"
          \FirstViolaFirstMovement
        }
        \new Voice {
          \set Staff.instrumentName = "Viola II"
          \set Staff.shortInstrumentName = "Vla.II"
          \SecondViolaFirstMovement
        }
      >>
      \new StaffGroup <<
        \new Voice {
          \set Staff.instrumentName = "Violoncello I"
          \set Staff.shortInstrumentName = "Vc.I"
          \FirstCelloFirstMovement
        }
        \new Voice {
          \set Staff.instrumentName = "Violoncello II"
          \set Staff.shortInstrumentName = "Vc.II"
          \SecondCelloFirstMovement |
        }
      >>
    >>

    \layout { }
  }

  % Second Movement
  \score {
    <<
      \override Score.BarNumber.padding = #2
      \override Score.RehearsalMark.padding = #2
      \set Score.skipBars = ##t
      \new StaffGroup  <<
        \new Voice {
          \set Staff.instrumentName = "Violin I"
          \set Staff.shortInstrumentName = "Vl.I"
          <<
            \SecondMovementMarks
            \ScoreSecondMovementTiming
            \FirstViolinSecondMovement
          >>
        }
        \new Voice {
          \set Staff.instrumentName = "Violin II"
          \set Staff.shortInstrumentName = "Vl.II"
          \SecondViolinSecondMovement
        }
        \new Voice {
          \set Staff.instrumentName = "Violin III"
          \set Staff.shortInstrumentName = "Vl.III"
          \ThirdViolinSecondMovement
        }
        \new Voice {
          \set Staff.instrumentName = "Violin IV"
          \set Staff.shortInstrumentName = "Vl.IV"
          \FourthViolinSecondMovement
        }
      >>
      \new StaffGroup <<
        \new Voice {
          \set Staff.instrumentName = "Viola I"
          \set Staff.shortInstrumentName = "Vla.I"
          \FirstViolaSecondMovement
        }
        \new Voice {
          \set Staff.instrumentName = "Viola II"
          \set Staff.shortInstrumentName = "Vla.II"
          \SecondViolaSecondMovement
        }
      >>
      \new StaffGroup <<
        \new Voice {
          \set Staff.instrumentName = "Violoncello I"
          \set Staff.shortInstrumentName = "Vc.I"
          \FirstCelloSecondMovement |
        }
        \new Voice {
          \set Staff.instrumentName = "Violoncello II"
          \set Staff.shortInstrumentName = "Vc.II"
          \SecondCelloSecondMovement
        }
      >>
    >>

    \layout { }
  }

  % Third Movement
  \score {
    <<
      \override Score.BarNumber.padding = #2
      \override Score.RehearsalMark.padding = #2
      \set Score.skipBars = ##t
      \new StaffGroup  <<
        \new Voice {
          \set Staff.instrumentName = "Violin I"
          \set Staff.shortInstrumentName = "Vl.I"
          <<
            \ThirdMovementMarks
            \ScoreThirdMovementTiming
            \FirstViolinThirdMovement
          >>
        }
        \new Voice {
          \set Staff.instrumentName = "Violin II"
          \set Staff.shortInstrumentName = "Vl.II"
          \SecondViolinThirdMovement
        }
        \new Voice {
          \set Staff.instrumentName = "Violin III"
          \set Staff.shortInstrumentName = "Vl.III"
          \ThirdViolinThirdMovement
        }
        \new Voice {
          \set Staff.instrumentName = "Violin IV"
          \set Staff.shortInstrumentName = "Vl.IV"
          \FourthViolinThirdMovement
        }
      >>
      \new StaffGroup <<
        \new Voice {
          \set Staff.instrumentName = "Viola I"
          \set Staff.shortInstrumentName = "Vla.I"
          \FirstViolaThirdMovement
        }
        \new Voice {
          \set Staff.instrumentName = "Viola II"
          \set Staff.shortInstrumentName = "Vla.II"
          \SecondViolaThirdMovement
        }
      >>
      \new StaffGroup <<
        \new Voice {
          \set Staff.instrumentName = "Violoncello I"
          \set Staff.shortInstrumentName = "Vc.I"
          \FirstCelloThirdMovement
        }
        \new Voice {
          \set Staff.instrumentName = "Violoncello II"
          \set Staff.shortInstrumentName = "Vc.II"
          \SecondCelloThirdMovement
        }
      >>
    >>

    \layout { }
  }

  % Fourth Movement
  \score {
    <<
      \override Score.BarNumber.padding = #2
      \override Score.RehearsalMark.padding = #2
      \set Score.skipBars = ##t
      \new StaffGroup  <<
        \new Voice {
          \set Staff.instrumentName = "Violin I"
          \set Staff.shortInstrumentName = "Vl.I"
          << 
            \FourthMovementMarks 
            \ScoreFourthMovementTiming 
            \FirstViolinFourthMovement 
          >>
        }
        \new Voice {
          \set Staff.instrumentName = "Violin II"
          \set Staff.shortInstrumentName = "Vl.II"
          \SecondViolinFourthMovement
        }
        \new Voice {
          \set Staff.instrumentName = "Violin III"
          \set Staff.shortInstrumentName = "Vl.III"
          \ThirdViolinFourthMovement
        }
        \new Voice {
          \set Staff.instrumentName = "Violin IV"
          \set Staff.shortInstrumentName = "Vl.IV"
          \FourthViolinFourthMovement
        }
      >>
      \new StaffGroup <<
        \new Voice {
          \set Staff.instrumentName = "Viola I"
          \set Staff.shortInstrumentName = "Vla.I"
          \FirstViolaFourthMovement
        }
        \new Voice {
          \set Staff.instrumentName = "Viola II"
          \set Staff.shortInstrumentName = "Vla.II"
          \SecondViolaFourthMovement
        }
      >>
      \new StaffGroup <<
        \new Voice {
          \set Staff.instrumentName = "Violoncello I"
          \set Staff.shortInstrumentName = "Vc.I"
          \FirstCelloFourthMovement
        }
        \new Voice {
          \set Staff.instrumentName = "Violoncello II"
          \set Staff.shortInstrumentName = "Vc.II"
          \SecondCelloFourthMovement |
        }
      >>
    >>

    \layout { }
  }
}

% --- MIDI files

% First movement
\score {
  \articulate <<
    \new Voice {
      \set Staff.midiInstrument = "violin"
      \FirstViolinFirstMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "violin"
      \SecondViolinFirstMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "violin"
      \ThirdViolinFirstMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "violin"
      \FourthViolinFirstMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "viola"
      \FirstViolaFirstMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "viola"
      \SecondViolaFirstMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "cello"
      \FirstCelloFirstMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "cello"
      \SecondCelloFirstMovement |
    }
  >>

  \midi {
    \tempo 4 = 112
  }
}

% Second Movement
\score {
  \articulate <<
    \new Voice {
      \set Staff.midiInstrument = "violin"
      \FirstViolinSecondMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "violin"
      \SecondViolinSecondMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "violin"
      \ThirdViolinSecondMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "violin"
      \FourthViolinSecondMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "viola"
      \FirstViolaSecondMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "viola"
      \SecondViolaSecondMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "cello"
      \FirstCelloSecondMovement |
    }
    \new Voice {
      \set Staff.midiInstrument = "cello"
      \SecondCelloSecondMovement
    }
  >>

  \midi {
    \tempo 8 = 80
  }
}

% Third Movement
\score {
  \articulate <<
    \new Voice {
      \set Staff.midiInstrument = "violin"
      \FirstViolinThirdMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "violin"
      \SecondViolinThirdMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "violin"
      \ThirdViolinThirdMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "violin"
      \FourthViolinThirdMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "viola"
      \FirstViolaThirdMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "viola"
      \SecondViolaThirdMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "cello"
      \FirstCelloThirdMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "cello"
      \SecondCelloThirdMovement
    }
  >>

  \midi {
    \tempo 4 = 112
  }
}

% Fourth Movement
\score {
  \articulate <<
    \new Voice {
      \set Staff.midiInstrument = "violin"
      \FirstViolinFourthMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "violin"
      \SecondViolinFourthMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "violin"
      \ThirdViolinFourthMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "violin"
      \FourthViolinFourthMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "viola"
      \FirstViolaFourthMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "viola"
      \SecondViolaFourthMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "cello"
      \FirstCelloFourthMovement
    }
    \new Voice {
      \set Staff.midiInstrument = "cello"
      \SecondCelloFourthMovement |
    }
  >>

  \midi {
    \tempo 2 = 132
  }
}