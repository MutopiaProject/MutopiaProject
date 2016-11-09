continuoStaff =
#(define-music-function
     (parser location notes contFigBass)
     (ly:music? ly:music?)
   #{
      \new Staff \with {
        \consists Mark_engraver
        \consists "Staff_collecting_engraver"
        \override RehearsalMark.direction = #DOWN
        instrumentName = #continuoMarkup
        midiInstrument = #"cello"
      } {
        <<
          \new Voice { #notes }
          \new FiguredBass { #contFigBass }
        >>
      }
   #}
)
 
