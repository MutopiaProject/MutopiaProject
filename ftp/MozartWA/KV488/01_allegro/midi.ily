% Mozart - Piano Concerto No. 23 in A major
% typeset by William Chargin
% MIDI settings for I. Allegro
% Do not compile

\include "../common/version.ily"

\score {
  \keepWithTag #'played
  \unfoldRepeats \articulate
  % TODO(@wchargin): Tune volume constants?
  <<
    \new Staff {
      \set Staff.midiInstrument = "flute"
      \set Staff.midiMinimumVolume = #0.30
      \set Staff.midiMaximumVolume = #0.75
      \global
      \flute
    }
    \new Staff {
      \set Staff.midiInstrument = "clarinet"
      \set Staff.midiMinimumVolume = #0.20
      \set Staff.midiMaximumVolume = #0.60
      \globalInA
      \clarinet
    }
    \new Staff {
      \set Staff.midiInstrument = "bassoon"
      \set Staff.midiMinimumVolume = #0.30
      \set Staff.midiMaximumVolume = #0.60
      \global
      \bassoon
    }
    \new Staff {
      \set Staff.midiInstrument = "french horn"
      \set Staff.midiMinimumVolume = #0.20
      \set Staff.midiMaximumVolume = #0.60
      \globalInA
      \horn
    }
    % Piano staff names are not arbitrary; they are depended on by
    % \staffUp and \staffDown in ./common/definitions.ily.
    \new Staff = "upper" {
      \set Staff.midiInstrument = "acoustic grand"
      \set Staff.midiMinimumVolume = #0.5
      \set Staff.midiMaximumVolume = #0.95
      \global \pianoTreble
    }
    \new Staff = "lower" {
      \set Staff.midiInstrument = "acoustic grand"
      \set Staff.midiMinimumVolume = #0.5
      \set Staff.midiMaximumVolume = #0.95
      \global \pianoBass
    }
    \new Staff {
      \set Staff.midiInstrument = "violin"
      \set Staff.midiMinimumVolume = #0.30
      \set Staff.midiMaximumVolume = #0.70
      \global
      \violinI
    }
    \new Staff {
      \set Staff.midiInstrument = "violin"
      \set Staff.midiMinimumVolume = #0.30
      \set Staff.midiMaximumVolume = #0.70
      \global
      \violinII
    }
    \new Staff {
      \set Staff.midiInstrument = "viola"
      \set Staff.midiMinimumVolume = #0.30
      \set Staff.midiMaximumVolume = #0.70
      \global
      \viola
    }
    \new Staff {
      \set Staff.midiInstrument = "cello"
      \set Staff.midiMinimumVolume = #0.30
      \set Staff.midiMaximumVolume = #0.70
      \global
      \cello
    }
  >>
  \midi {
    \tempo 4 = 120
  }
}
