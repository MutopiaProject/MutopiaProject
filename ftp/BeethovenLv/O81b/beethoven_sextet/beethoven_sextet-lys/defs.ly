tempoMark = #(define-music-function (parser location markp) (string?)
#{
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'extra-spacing-width = #'(+inf.0 . -inf.0)
  \mark \markup { \smaller \bold $markp }
#})

sfzp = #(make-dynamic-script "sfzp")
sfz = #(make-dynamic-script "sfz")
fpp = #(make-dynamic-script "fpp")
