\time 3/8
\key c \minor
\scoreTempo \markup { Adagio, e piano. }
s4.*10 \bar "||" \break
\time 4/4
s1 -\tag #'cleopatra ^\markup \character Cleopatra. s1*8
\set Score.measureLength = #(ly:make-moment 5 4) s1 s4
\set Score.measureLength = #(ly:make-moment 4 4) 
s1 -\tag #'upB ^\markup \scenic "(S'ode strepito d'armi nella Scena.)"
s1*8
\set Score.measureLength = #(ly:make-moment 5 4) s1 s4
\bar "||"
