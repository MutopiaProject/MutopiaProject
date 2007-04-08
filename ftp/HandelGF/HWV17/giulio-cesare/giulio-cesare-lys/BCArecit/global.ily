\time 4/4
\key c \major
\partial 2
s2
s1*4 s4
s2.
s1*2 s2
s2
s1*6
\set Score.measureLength = #(ly:make-moment 5 4)
s2
\tag #'recit {
    \once \override Voice . TextScript #'no-spacing-rods = ##f
    \once \override Voice . TextScript #'extra-offset = #(cons 0 -11)
}
s4 -\tag #'recit ^\markup \scenic \column { "(Uno degli Egizii svela il"
                             "bacile, sopra il squale sia"
                             "il capo tronco di Pompeo.)" }
s2
\set Score.measureLength = #(ly:make-moment 4 4)
s4
s2.
s2
s2
s1*2
s2.
s4
s1*2
\set Score.measureLength = #(ly:make-moment 5 4)
s4 -\tag #'recit ^\markup \scenic "(Si sviene.)" 
s2
s2
\set Score.measureLength = #(ly:make-moment 4 4)
s4 s8 s16 s16 -\tag #'recit ^\markup \scenic  "(Cesare piange.)" 
s2 s4
s2.
s1 s2
s2
s1 s2
s2
s1 s4
s2.
s1*2 s4
s2
s4
s1*5 s2
s2
\set Score.measureLength = #(ly:make-moment 7 4)
s1. s4
\set Score.measureLength = #(ly:make-moment 4 4)
s1
s2
s2
s1*2
\set Score.measureLength = #(ly:make-moment 5 4)
s1 s4
\bar "|."
