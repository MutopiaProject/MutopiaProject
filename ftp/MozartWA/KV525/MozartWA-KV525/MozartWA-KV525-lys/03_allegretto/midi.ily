\score {
     \keepWithTag #'played                         %------------------------------- [manual entry]

      <<
      \new Staff {
              \set Staff.midiInstrument = "violin" %------------------------------- [manual entry]
              \set Staff.midiMinimumVolume = #0.30 %------------------------------- [manual entry]
              \set Staff.midiMaximumVolume = #0.70 %------------------------------- [manual entry]
              \global \violinI                     %------------------------------- mov_/music.ily
      }
      \new Staff {
              \set Staff.midiInstrument = "violin" %------------------------------- [manual entry]
              \set Staff.midiMinimumVolume = #0.25 %------------------------------- [manual entry]
              \set Staff.midiMaximumVolume = #0.50 %------------------------------- [manual entry]
              \global \violinII                    %------------------------------- mov_/music.ily
      }
      \new Staff {
              \set Staff.midiInstrument = "viola"  %------------------------------- [manual entry]
              \set Staff.midiMinimumVolume = #0.25 %------------------------------- [manual entry]
              \set Staff.midiMaximumVolume = #0.50 %------------------------------- [manual entry]
              \global \viola                       %------------------------------- mov_/music.ily
      }
      \new Staff { 
              \set Staff.midiInstrument = "cello"  %------------------------------- [manual entry]
              \set Staff.midiMinimumVolume = #0.3  %------------------------------- [manual entry]
              \set Staff.midiMaximumVolume = #0.6  %------------------------------- [manual entry]
              \global \cello                    %------------------------------- mov_/music.ily
      }
 
    >>
    \midi {
      \tempo 4 = 112                               %------------------------------- [manual entry]
    }
}

























