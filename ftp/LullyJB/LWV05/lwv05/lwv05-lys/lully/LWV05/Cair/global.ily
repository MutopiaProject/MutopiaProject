\key re \minor
\time 2/2
\partial 4
s4
s1*8
\set Score.measureLength = #(ly:make-moment 3 4)
\set Score.repeatCommands = #'((volta "1."))
s2.
\bar ":|"
\set Score.repeatCommands = #'((volta #f) (volta "2."))
\time 3/4
s2.
\set Score.repeatCommands = #'((volta #f))
s2.*6
\time 2/2
s1*8
\set Score.repeatCommands = #'((volta "1."))
s1
\bar ":|"
\set Score.measureLength = #(ly:make-moment 3 4)
\set Score.repeatCommands = #'((volta #f) (volta "2."))
s2.
\set Score.repeatCommands = #'((volta #f))