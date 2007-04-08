\time 4/4
\key c \major
s1*3
\set Score.measureLength = #(ly:make-moment 5 4) s1 s4
\bar "|."
\tag #'(down partDown partBoth) \customDaCapoMark \markup "Aria da Capo."
\tag #'(up partUp) \segnoUpEndMark