\time 4/4
\key c \major

s4 

s2 

s4 
s8
\tag #'recit {
  \once \override Voice . TextScript #'no-spacing-rods = ##f
  \once \override Voice . TextScript #'extra-offset = #(cons 0 -11)
}
s8 -\tag #'recit ^\markup { " " 
                            \scenic \column {
                              \line { (Mentre le guardie vogliono }
                              \line { condur via Sesto, Cornelia corre }
                              \line { a ritenerlo per un braccio.) } } }

s2. 
s1*3
s1*2
\set Score.measureLength = #(ly:make-moment 5 4)
s1 s4
\bar "|."
