violinIStaff =
#(define-music-function
     (parser location notes)
     (ly:music?)
   #{
      \new Staff \with {
        \consists Mark_engraver
        \consists "Staff_collecting_engraver"
        instrumentName = #violinIMarkup
        midiInstrument = #"violin"
      } {
        \new Voice { #notes }
      }
   #}
)

violinSoloStaff =
#(define-music-function
     (parser location notes)
     (ly:music?)
   #{
      \new Staff \with {
        \consists Mark_engraver
        \consists "Staff_collecting_engraver"
        instrumentName = #violinSoloMarkup
        midiInstrument = #"violin"
      } {
        \new Voice { #notes }
      }
   #}
)

violinIIStaff =
#(define-music-function
     (parser location notes)
     (ly:music?)
   #{
      \new Staff \with {
        \consists Mark_engraver
        \consists "Staff_collecting_engraver"
        instrumentName = #violinIIMarkup
        midiInstrument = #"violin"
      } {
        \new Voice { #notes }
      }
   #}
)

violaStaff =
#(define-music-function
     (parser location notes)
     (ly:music?)
   #{
      \new Staff \with {
        \consists Mark_engraver
        \consists "Staff_collecting_engraver"
        instrumentName = #violaMarkup
        midiInstrument = #"viola"
      } {
        \new Voice { #notes }
      }
   #}
)

vlIvlIIvla =
#(define-music-function
     (parser location vlINotes vlIINotes vlaNotes)
     (ly:music? ly:music? ly:music?)
   #{
      \new StaffGroup \with {
        \consists "Keep_alive_together_engraver"
      } <<
        \violinIStaff #vlINotes
        \violinIIStaff #vlIINotes
        \violaStaff #vlaNotes
      >>
   #}
)
