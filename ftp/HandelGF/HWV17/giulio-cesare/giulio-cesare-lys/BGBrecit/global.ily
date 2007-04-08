\time 4/4
\key c \major

s1 
s1 s2.

s4 
s2

s2 
%% 5
s1*5
%% 10
s1*2 s2

s2 
s1*2
%% 15
s4

s2. 
s1*2 
\tag #'recit \break
s2.

s4 
s1
%% 20
s1*2 s4

s2. 
s4 s2. -\tag #'recit ^\markup \scenic "(Cesare leva da terra Cleopatra.)"
s1
%% 25
s1*2
\override Staff.TimeSignature   #'transparent = ##t
\set Score.measureLength = #(ly:make-moment 5 4)
s1 s4
\set Score.measureLength = #(ly:make-moment 4 4) 
s4 

s2 

s4 
s1
\set Score.measureLength = #(ly:make-moment 5 4) 
s1 s4 
\set Score.measureLength = #(ly:make-moment 4 4)

s1 
