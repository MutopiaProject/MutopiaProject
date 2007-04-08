\time 4/4
\key c \major
s2.
s4  s1*2 s4
s2 
s4  s4
s2. 
\override Staff.TimeSignature   #'transparent = ##t
\set Score.measureLength = #(ly:make-moment 6 4) s2.
s2.
\set Score.measureLength = #(ly:make-moment 4 4) s2
s2  s1*4 s4
s2. s4
s2. s1*3 s2.
s4  s1
s1  
\set Score.measureLength = #(ly:make-moment 5 4) s1
s8 s8
\set Score.measureLength = #(ly:make-moment 4 4) s1*2
\set Score.measureLength = #(ly:make-moment 5 4) s2 
s4 -\tag #'recit ^\markup \scenic "(parte Achilla.)" s2
\set Score.measureLength = #(ly:make-moment 4 4) s1*6
\set Score.measureLength = #(ly:make-moment 5 4) s1 s4
\bar "|."
