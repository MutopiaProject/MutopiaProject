%{
  ***********************************************************************
  * BachJS - Violin Concerto No.1 in A minor                            *
  * typeset by Federico Bruni and Javier Ruiz-Alma                      *
  *                                                                     *
  * MIDI settings for this movement                                     *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "../common/version.ily"

%%-------This was adjusted to play the single violin solo
%------- included on this partial typeset

\score {
     %\keepWithTag #'played                         %------------------------------- [manual entry]
      <<
      \new Staff {
              \set Staff.midiInstrument = "violin" %------------------------------- [manual entry]
              \set Staff.midiMinimumVolume = #0.50 %------------------------------- [manual entry]
              \set Staff.midiMaximumVolume = #0.95 %------------------------------- [manual entry]
              \global \soloviolin                  %------------------------------- mov_/music.ily
      }
      %{
      \new Staff {
              \set Staff.midiInstrument = "violin" %------------------------------- [manual entry]
              \set Staff.midiMinimumVolume = #0.50 %------------------------------- [manual entry]
              \set Staff.midiMaximumVolume = #0.95 %------------------------------- [manual entry]
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
      %}
    >>
    \midi {
      \tempo 4 = 100                               %------------------------------- [manual entry]
    }
}