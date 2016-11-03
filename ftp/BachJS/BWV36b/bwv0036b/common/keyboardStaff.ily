keybStaff =
#(define-music-function
     (parser location instName trebInstName trebNotes
                      dyn bassInstName bassNotes)
     (markup? markup? ly:music? ly:music? markup? ly:music?)
   #{
      \new PianoStaff <<
        \accidentalStyle Score.piano
        \set PianoStaff.instrumentName = #instName
        \new Staff = "treb" \with {
          \consists Mark_engraver
          \consists "Staff_collecting_engraver"
          instrumentName = #trebInstName
        } <<
          #trebNotes
        >>
        \new Dynamics { #dyn }
        \new Staff = "bass" \with {
          \consists Mark_engraver
          \consists "Staff_collecting_engraver"
          \override RehearsalMark.direction = #DOWN
          instrumentName = #bassInstName
        } <<
          #bassNotes
        >>
      >>
   #}
)

