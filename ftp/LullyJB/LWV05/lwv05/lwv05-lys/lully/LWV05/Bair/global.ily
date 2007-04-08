\key re \minor
\time 2/2
s1*2
\bar "|:"
s1*8
\set Score.repeatCommands = #'((volta "1."))
s1
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
\set Score.repeatCommands = #'((volta #f) (volta "2."))
\set Score.measureLength = #(ly:make-moment 3 4)
s2.
\set Score.repeatCommands = #'((volta #f))
