\key ees \major
\tag #'full {
  \time 4/4
  \scoreTempo \markup Largo.
  \skip 1*3 
  \scoreSegno
  \skip 1*12
  \set Score . repeatCommands = #'((volta "1."))
  \skip 1*2 \skip 4
  \set Score . repeatCommands = #'((volta #f)) \bar "|."
  \skip 2. \skip 1*7
  \scoreDalSegno
  \bar "||"  
  \set Score.measureLength = #(ly:make-moment 1 4)
  \skip 4
  \set Score.measureLength = #(ly:make-moment 4 4)
}
\set Score . repeatCommands = #'((volta "2."))
\override Staff . TimeSignature #'stencil = ##f
s1
\set Score . repeatCommands = #'((volta #f))
s1
s1
\once \override Staff . RehearsalMark #'padding = #3
\scoreEndText  \markup { (Partono Cornelia, Sesto, e Nireno.) }
\bar "|."
