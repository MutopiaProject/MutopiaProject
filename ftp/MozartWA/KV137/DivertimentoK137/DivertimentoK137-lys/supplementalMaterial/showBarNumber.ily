\version "2.18.2"

showBarNumber = #(define-music-function (parser location) ()
                   #{
                     \once \override Score.BarNumber.break-visibility = #all-visible
                     \once \override Score.BarNumber.direction = #DOWN
                     \once \override Score.BarNumber.Y-offset = #0.3
                     \once \override Score.BarNumber.staff-padding = #0
                   #}
                   )