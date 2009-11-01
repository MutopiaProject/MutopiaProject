\oldKey re \minor
\newKey sol \minor
\tempo "Marqué"
\midiTempo #48
\time 4/4
\overrideBeamSettings #'Staff #'(4 . 4) #'end
#'((* . (1 1 1 1))
   ((1 . 8) . (2 2 2 2))
   ((1 . 16) . (4 4 4 4))
   ((1 . 32) . (8 8 8 8)))

\partial 16 s16 s1*8 \alternatives { \grace s8 s1 } { \grace s8 s1 }
\bar "|:" s1*10 \alternatives s1 s1 s2 \bar "|."