\time 4/4
\key bes \major
\tag #'full {
  \scoreTempo \markup Allegro.
  s1*7
  \scoreSegno
  s1*29
  \set Score.repeatCommands = #'((volta "1.")) s2 
  \set Score.repeatCommands = #'((volta #f)) s2
  s1*18
  \scoreDalSegno
  \bar "||"
  \break
}
\override Staff . TimeSignature #'print-function = ##f
\set Score.repeatCommands = #'((volta "2.")) 
s2 -\tag #'cesare ^\markup \scenic "(parte con Curio)"
\set Score.repeatCommands = #'((volta #f)) s2
s1*6
\bar "|."