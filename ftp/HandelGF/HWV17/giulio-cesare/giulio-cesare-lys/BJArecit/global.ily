\time 4/4
\key c \major

s1 
s1 s2

s2 
\set Score.measureLength = #(ly:make-moment 6 4)
s1


s2 
\set Score.measureLength = #(ly:make-moment 4 4)
s1*5 s2

s2 
s1*6
\set Score.measureLength = #(ly:make-moment 5 4)
s2

s2. 
\set Score.measureLength = #(ly:make-moment 4 4)
s1*2

s1 
s1 s4

s2. 
s1 s2 s8
s4. -\tag #'recit ^\markup \scenic { (accena alle guardie.) } 
s1 \tag #'hack \break s1*5
s1 -\tag #'recit ^\markup \scenic { (piano ad Achilla.) } 
s1 s2

s2 
s2

s2 
s4
s2 -\tag #'recit ^\markup \scenic { (parte.) }
