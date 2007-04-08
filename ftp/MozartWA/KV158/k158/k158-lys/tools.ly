mypartial =
#(define-music-function (parser location duration duration2) (number? number?)
  #{
    \set Timing.measurePosition = #(ly:make-moment $duration $duration2)
  #})
