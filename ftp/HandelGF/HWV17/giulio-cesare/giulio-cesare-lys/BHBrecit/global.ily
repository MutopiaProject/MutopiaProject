\time 4/4
\key c \major
\tag #'recit \clef alto
s1*2 s4

s2. 
s1 s4

s2. 
s1*3 s2 s8
\tag #'recit {
    \once \override Voice . TextScript #'no-spacing-rods = ##f
    \once \override Voice . TextScript #'extra-offset = #(cons 0 -12)
}
s8 -\tag #'recit ^\markup \scenic \column { 
    "     (Non si tosto Cornelia ha presa"
    "     una spada fuori degli arnesi di"
    "     guerra, che Sesto sopragiunge.)" }

s4 
s1

s1 
s1*3

s1 
s4
s2. -\tag #'recit ^\markup \scenic \column {
  \line { (Sesto toglie là }
  \line { spada a Cornelia.) } }

s1 
s1*2 s2.

s4 
s1
\set Score.measureLength = #(ly:make-moment 5 4)
s1 s4
\set Score.measureLength = #(ly:make-moment 4 4)

s1 
s1*2

s1 
s1 s2
\tag #'recit {
    \once \override Voice . TextScript #'no-spacing-rods = ##f
    \once \override Voice . TextScript #'extra-offset = #(cons 0 -10)
}
s4 -\tag #'recit ^\markup \scenic \column {
    "     (Cleopatra che sorte fuori"
    "     impetuosamente, e detti.)" }
s4 
s2

s2 
s2

s2 
s1*3

s1 
s1*2 s2

s2 
s1*6
\set Score.measureLength = #(ly:make-moment 5 4)
s2

s2. 
\set Score.measureLength = #(ly:make-moment 4 4)


s4

s2. 
s1 s2.
s4 -\tag #'recit ^\markup \scenic "(accennando Nireno.)" 
s2
s2 
s1*5
\set Score.measureLength = #(ly:make-moment 5 4)
s1 s4
\bar "|."
