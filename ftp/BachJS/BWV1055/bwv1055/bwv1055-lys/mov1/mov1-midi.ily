

%-------Generate midi
\score {
     \keepWithTag #'played
      <<
      \new Staff = "Staff_violinI"  {
              \set Staff.midiInstrument = "violin"
              \set Staff.midiMinimumVolume = #0.30
              \set Staff.midiMaximumVolume = #0.70
              \clef treble \global \violinI
      }
      \new Staff = "Staff_violinII" {
              \set Staff.midiInstrument = "violin"
              \set Staff.midiMinimumVolume = #0.25
              \set Staff.midiMaximumVolume = #0.50
              \clef treble \global \violinII
      }
      \new Staff = "Staff_viola" {
              \set Staff.midiInstrument = "viola"
              \set Staff.midiMinimumVolume = #0.25
              \set Staff.midiMaximumVolume = #0.50
              \clef alto \global \viola
      }
      \new Staff = "Staff_continuo" { 
              \set Staff.midiInstrument = "cello"
              \clef bass \global \continuo
              \set Staff.midiMinimumVolume = #0.3
              \set Staff.midiMaximumVolume = #0.6
      }
      \new Staff = "upper" {
              \set Staff.midiInstrument = "acoustic grand"
              \set Staff.midiMinimumVolume = #0.5
              \set Staff.midiMaximumVolume = #0.95
              \clef treble \global \upperKeyb
      }
      \new Staff = "lower" {
              \set Staff.midiInstrument = "acoustic grand"
              \clef bass \global \lowerKeyb
              \set Staff.midiMinimumVolume = #0.5
              \set Staff.midiMaximumVolume = #0.95
      }
    >>
    \midi { \tempo 4 = 106 }
}