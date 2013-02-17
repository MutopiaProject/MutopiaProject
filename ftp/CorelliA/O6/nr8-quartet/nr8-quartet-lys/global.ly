\version "2.16.1"
\include "english.ly"

padtext = \override TextScript   #'padding = #'1.5
padbarnos = \override Score.BarNumber   #'padding = #'2.0

textUp = \override TextScript   #'direction = #1

pesp = \markup {\dynamic p \italic espress.}
mfesp = \markup {\dynamic mf \italic espress.}

\include "header.ly"
