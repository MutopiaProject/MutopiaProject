\version "2.18.2"

highSlur = #(define-music-function (parser location) ()
             #{
               \once \override  Slur.ratio = #2
             #}
             )
reallyHighSlur = #(define-music-function (parser location) ()
             #{
               \once \override  Slur.ratio = #5
             #}
             )
ridiculouslyHighSlur = #(define-music-function (parser location) ()
             #{
               \once \override  Slur.ratio = #10
             #}
             )
littleRightSlur = #(define-music-function (parser location) ()
               #{
                 \once \override Slur. eccentricity = #0.5
               #}
               )
rightSlur = #(define-music-function (parser location) ()
               #{
                 \once \override Slur. eccentricity = #2
               #}
               )
reallyRightSlur = #(define-music-function (parser location) ()
               #{
                 \once \override Slur. eccentricity = #4
               #}
               )

slurAccidentalCrash = #(define-music-function (parser location ) ()
                         #{
                           \once \override  Slur.details = #'((accidental-collision . 10))
                         #}
                         )
slurCenterRight = #(define-music-function (parser location) ()
                     #{
                       \once \override Slur.eccentricity = #4
                     #}
                     )
slurEndsFar = #(define-music-function (parser location) ()
                     #{
                       \shape #'((0 . 1)(0.5 . 1.2)(-0.3 . 0.6)(0 . 0)) Slur
                     #}
                     )
liftSlur = #(define-music-function (parser location) ()
              #{
                \shape #'((0 . 0.2)(0 . 0.2)(0 . 0.2)(0 . 0.2)) Slur
              #}
              )
liftTie = #(define-music-function (parser location) ()
              #{
                \shape #'((0 . 0.2)(0 . 0.2)(0 . 0.2)(0 . 0.2)) Tie
              #}
              )
lowerSlur = #(define-music-function (parser location) ()
              #{
                \shape #'((0 . -0.2)(0 . -0.2)(0 . -0.2)(0 . -0.2)) Slur
              #}
              )
lowerTie = #(define-music-function (parser location) ()
              #{
                \shape #'((0 . -0.2)(0 . -0.2)(0 . -0.2)(0 . -0.2)) Tie
              #}
              )
liftLeftSlur = #(define-music-function (parser location) ()
              #{
                \shape #'((0 . 0.7)(0 . 0.6)(0 . 0.4)(0 . 0)) Slur
              #}
              )
liftRightSlur = #(define-music-function (parser location) ()
              #{
                \shape #'((0 . 0)(0 . 0.4)(0 . 0.6)(0 . 0.7)) Slur
              #}
              )