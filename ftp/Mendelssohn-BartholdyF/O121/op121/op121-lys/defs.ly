lyricsstyle = { \small }
midiFlute = {
   \set Staff.midiInstrument = "flute"
   \set Staff.midiMinimumVolume = #0.4
   \set Staff.midiMaximumVolume = #0.9
}
midiContrabass = {
   \set Staff.midiInstrument = "contrabass"
   \set Staff.midiMinimumVolume = #0.4
   \set Staff.midiMaximumVolume = #0.7
}

dto = #(define-music-function
  (parser location x y)
  ( number? number? )
 #{ \once \override DynamicText #'extra-offset = #(cons x y)
 #})

dtso = #(define-music-function
  (parser location x y)
  ( number? number? )
 #{ \once \override DynamicTextSpanner #'extra-offset = #(cons x y)
 #})
 
tso = #(define-music-function
  (parser location x y)
  ( number? number? )
 #{ \once \override TextScript #'extra-offset = #(cons x y)
 #})
 
hpo = #(define-music-function
  (parser location x y)
  ( number? number? )
 #{ \once \override Staff.Hairpin #'extra-offset = #(cons x y)
 #})

 dls = #(define-music-function
  (parser location x)
  ( number? )
 #{ \override DynamicLineSpanner.staff-padding = #x
    \override DynamicText.staff-padding = #x
 #})
 rdls = { \revert DynamicLineSpanner.staff-padding \revert DynamicText.staff-padding }
 
global = {
  \override DynamicTextSpanner.style = #'none
  \override Score.RehearsalMark.font-size = #5
  \set Score.markFormatter = #format-mark-alphabet
  \crescTextCresc
  \dimTextDim
}
