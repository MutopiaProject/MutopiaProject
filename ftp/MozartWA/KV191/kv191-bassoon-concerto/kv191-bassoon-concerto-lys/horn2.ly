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
hornb=  \relative {
\set Staff.instrument =\markup {
       \center-align { "2 Corni"
                 \line { "in F" } } }
\override Staff.KeySignature #'transparent = ##t 
\key f \major
\time 2/2 \set Staff.midiInstrument = "french horn"
\globalb \transposition f \set doubleSlurs = ##t 
R1 R1 <c' c,>2~\p <c c,>8 r r4 R1 <g g,>1~<g g,>8 r r4 r2 \solo R1*8 <g g,>1 R1*4 << { d'2~<d g,>4 } \\ { d2\p } >> r4 
R1*4 <d g,>2.\p <e c>4 <e c> <d g,>8 r r2  R1*3 <c c,>2~\p <c c,>8 r r4 R1*9 
<c c,>1\f << { r8 g( d' f) r c( e g) r g,( d' f) e r r4 } \\ { R1 R1 } >> R1*4 r2 << { g,2 } \\ { g } >> <c c,>1\f <g g,>4 r r2^\fermata 
<c e,>8\f <g' e>4 <f d>8 \grace <f d>16 <e c>8 <e c>4 <d g,>8 <c e,> r r4 r2 R1 \bar ".|." }