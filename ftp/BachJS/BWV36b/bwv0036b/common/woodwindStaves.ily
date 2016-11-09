fluteStaff =
#(define-music-function
     (parser location notes)
     (ly:music?)
   #{
      \new Staff \with {
        \consists Mark_engraver
        \consists "Staff_collecting_engraver"
        instrumentName = #fluteMarkup
        midiInstrument = #"flute"
      } {
        \new Voice { #notes }
      }
   #}
)

oboeStaff =
#(define-music-function
     (parser location notes)
     (ly:music?)
   #{
      \new Staff \with {
        \consists Mark_engraver
        \consists "Staff_collecting_engraver"
        instrumentName = #oboeMarkup
        midiInstrument = #"oboe"
      } {
        \new Voice { #notes }
      }
   #}
)


