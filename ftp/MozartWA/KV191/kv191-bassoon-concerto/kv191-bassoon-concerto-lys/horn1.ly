\version "2.7.29"
\include "global.ly"
\header {
title = "Concerto for Bassoon and Orchestra in B-flat major"
instrument = "French Horn"
opus = "K. 191"
composer = \markup \center-align { "Wolfgang Amadeus Mozart" \small "(1756-1791)" } 
 }  
tutti = \mark \markup { \small TUTTI }
solo = \mark \markup { \small SOLO }
horna = 
\relative {
\set Staff.instrument =\markup {
       \center-align { "2 Corni"
                 \line { "in B" \smaller \flat  "alto"  } } }
\override Staff.KeySignature #'transparent = ##t 
\key bes \major
\time 4/4 \set Staff.midiInstrument = "french horn"
\globala \transposition bes \override Score.Accidental #'transparent = ##t 
c'4^\markup{ a2 }_\markup{ \bracket { \dynamic f } } c2 e8. c16 g4 g2 e8. c16 <g' g,>4 <d' g,>2 <f d>4 << { f\trill e } \\ { d_\trill c } >> r2 
R1 <c e,>1\f < d g,> <c c,>~<c c,> <g g,>4 <g g,>8. <g g,>16 <g g,>4 <g g,> 
<g g,>1\p~<g g,>~<g g,> r2 <g e>2\f r2 <g e>2\f R1 R1 
<c c,>1\f <c c,>\fp <c c,>\fp <c e,>4 r4 r2 r8 g-.\f^\markup{ a2 } g-. g-. g-. g-. g-. g-. c,4 <c' e,>8. <c e,>16 <c e,>4 <c e,> <c e,> r4 r2 
r4 <c e,>8.\f <c e,>16 <c e,>4 <c e,> <c e,> r4 r2 r2 <g g,>2\p~<g g,>1~<g g,> <c c,> <g g,> 
<< { c,4 } \\ { c } >> r4 <c' c,>4 < c c,> <c c,> r4 <c c,> <c c,> <c c,> <c e,> <c c,> r4 
\solo R1*7 << { c,4 } \\ { c\f } >> r4 <c' c,>4 < c c,> <c c,> r4 <c c,> <c c,> <c c,> <c e,> << { c, } \\ { c } >> r4 | 
R1*13 d'4\f^\markup{ a2 } d8. d16 d4 d d1\p~d~d2 r2 R1*9 | \tutti
<< <d g,>1\f  >> << { d1 } \\ { d } >> <d g,>4 <d g,>8. <d g,>16 <d g,>4 <d g,> <d g,> r4 r2 r4 <d g,>8. <d g,>16 <d g,>4 <d g,> <d g,> r4 r2 | 
r2 d2\p^\markup{ a2 }~d1~d \solo g,4 r r2 R1*16 R1^\fermataMarkup  \tutti
c4\f c2 e8. c16 g4 g2 e8. c16 <g' g,>4 <d' g,>2 <f d>4 << { f\trill e } \\ { d_\trill c } >> r2
\solo R1*7 | \tutti << { c,4 } \\ { c\f } >> r4 <c' c,>4 < c c,> <c c,> r4 <c c,> <c c,> <c c,> <c e,> << { c, } \\ { c } >> r4 \solo 
R1*13 <c' c,>1\f R1*11  <g g,>4\f <g g,>8. <g g,>16 <g g,>4 <g g,> 
<g g,>1\p~<g g,>~<g g,>2 r2 R1*7 <c e,>1\p~<c e,> R1 R1 | \tutti
<< { c,4 } \\ { c\f } >> <c' e,>8. <c e,>16 <c e,>4 <c e,> <c e,> r4 r2 
r4 <c e,>8.\f <c e,>16 <c e,>4 <c e,> <c e,> r4 r2 r2 <g g,>2\p~<g g,>1~<g g,> <c c,>\f << { g2 } \\ { g } >> r2\fermata \tutti
<c e,>1  <d g,>1 <c c,> <c c,>\fp <c c,>\fp <c e,>4 r4 r2 << { g8 g g g g g g g c,4 } \\ { g'8\f g g g g g g g c,4 } >> r4 <c' c,>4 <c c,> 
<c c,>4 r4 <c c,> <c c,> <c c,> <c e,> << { c, } \\ { c } >> r4 


 

  \bar ".|." }