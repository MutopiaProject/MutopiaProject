\override Staff.TimeSignature   #'transparent = ##t
\time 5/4
\key e \major
\scoreTempo \markup { \null \translate #'(12 . 0) Allegro. }
s4 s1 \time 4/4 s1*3 
s4. s8-\tag #'cesare ^"Viol. all'ottaya." s2
\scoreSegno
s1*24 s2. 
\scoreFine
\bar "|." \tag #'with-break \break
s4 
s1*7
\scoreDalSegnoAndText \markup "(parte.)"
\bar "||"
