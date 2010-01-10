\version "2.13.9"

\include "horn.ily"
\include "defs.ily"

instrument = \markup {Horn in F}
\include "header.ily"

allegro = \transpose f ees \hornAllegro
romanze = \transpose f ees \hornRomanze
rondo = \transpose f ees \hornRondo
\include "part.ily"
