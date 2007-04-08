\time 3/8
\key ees \major
\scoreTempo \markup "Allegro, e staccato."
s4.*57 
s8 \tag #'tolomeo { \once \override Voice . TextScript #'padding = #2 }
s4 -\tag #'tolomeo ^\markup \tempo "Adagio."
s4.*9
s4 
\scoreFine
\bar "|." \break s8
s4.*23
\scoreDaCapo
\bar "|."
