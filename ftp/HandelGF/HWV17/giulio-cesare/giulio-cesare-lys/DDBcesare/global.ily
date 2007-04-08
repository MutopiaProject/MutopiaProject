\key f \major
\time 3/8
\scoreTempo \markup "Andante, e piano."
s4.*54
\tag #'(up cesare) \tempoMark \markup { \hspace #1 Adagio. }
s4.*27 
\time 4/4
s1*6 
\set Score.measureLength = #(ly:make-moment 5 4) s1 s4
\time 3/8
s4.*52
\tag #'(up cesare) \tempoMark \markup { \hspace #1 Adagio. }
s4.*6
\tag #'down \once \override TextScript #'padding = #3
s4.*2 -\tag #'down _\markup \scenic "(Entra Sesto e Nireno.)"
\bar "|."