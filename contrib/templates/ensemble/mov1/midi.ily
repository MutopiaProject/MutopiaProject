%{
  ***********************************************************************
  * Composer - Work in Tonality                                         *
  * typeset by                                                          *
  *                                                                     *
  * MIDI settings for this movement                                     *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "../common/version.ily"

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
              \global \continuo                    %------------------------------- mov_/music.ily
      }
      \new Staff = "upper" {  %-----------------------------  dependency with \staffUp  in /common/definitions.ily
              \set Staff.midiInstrument = "acoustic grand" %----------------------- [manual entry]
              \set Staff.midiMinimumVolume = #0.5  %------------------------------- [manual entry]
              \set Staff.midiMaximumVolume = #0.95 %------------------------------- [manual entry]
              \global \upperKeyb                   %------------------------------- mov_/music.ily
      }
      \new Staff = "lower" {  %-----------------------------  dependency with \staffDown in /common/definitions.ily
              \set Staff.midiInstrument = "acoustic grand" %----------------------- [manual entry]
              \set Staff.midiMinimumVolume = #0.5  %------------------------------- [manual entry]
              \set Staff.midiMaximumVolume = #0.95 %------------------------------- [manual entry]
              \global \lowerKeyb                   %------------------------------- mov_/music.ily
      }
    >>
    \midi {
      \tempo 4 = 106                               %------------------------------- [manual entry]
    }
}