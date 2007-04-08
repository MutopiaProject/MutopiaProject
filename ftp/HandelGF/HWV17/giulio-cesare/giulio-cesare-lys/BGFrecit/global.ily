\time 4/4
\key c \major

s1 
s1*4 s2 

s2 
s1*3
\override Staff.TimeSignature #'transparent = ##t
\set Score.measureLength = #(ly:make-moment 5 4) 
s1 
\tag #'down {
    \once \override Voice . TextScript #'self-alignment-X = #1
    \once \override Voice . TextScript #'padding = #1
}
s4 -\tag #'down _\markup \scenic "(Si ritirano.)"
\bar "|."
