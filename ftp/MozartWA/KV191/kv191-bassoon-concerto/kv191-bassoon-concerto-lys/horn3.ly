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
hornc = \relative {
\set Staff.instrument =\markup {
       \center-align { "2 Corni"
                 \line { "in B" \smaller \flat "alto" } } }
\override Staff.KeySignature #'transparent = ##t 
\key bes \major
\time 3/4 \set Staff.midiInstrument = "french horn"
\globalc \transposition bes  \override Score.Accidental #'transparent = ##t 
<c' e,>2\f r4 r <c c,> <d g,> <e c>2 <f d>4 << { g,2.~<g c,>2 } \\ { g2. } >> r4 r <c c,> <d g,> <e c>2 <d g,>4 <c e,>2 r4 \bar ":|" 
<g g,>2.~<g g,>4 <g g,> <g g,> <g c,>2.~<g c,>4 <g c,> <g c,> 
<c e,>2 r4 r <c c,> <d g,> <e c>2 <f d>4 << { g,2.~<g c,>2 } \\ { g2. } >> r4 r <c c,> <d g,> <e c>2 <d g,>4 <c g>2 r4 \solo R2.*30 \tutti 
<c e,>2\f r4 r <c c,> <d g,> <e c>2 <f d>4 << { g,2.~<g c,>2 } \\ { g2. } >> r4 r <c c,> <d g,> <e c>2 <d g,>4 <c e,>2 r4 \solo R2.*22 \tutti 
<c e,>2\f r4 r <c c,> <d g,> <e c>2 <f d>4 << { g,2.~<g c,>2 } \\ { g2. } >> r4 r <c c,> <d g,> <e c>2 <d g,>4 <c e,>2 r4 \solo R2.*12 
<g g,>2.~<g g,>~<g g,>~<g g,>~<g g,>~<g g,>4 r r^\fermata R2.*31 \tutti 
<c e,>2\f r4 r <c c,> <d g,> <e c>2 <f d>4 << { g,2.~<g c,>2 } \\ { g2. } >> r4 r <c c,> <d g,> <e c>2 <d g,>4 
<c c,>2. r4 << { g g } \\ { g g } >> <c c,>2.~<c c,>4 <e c> <d g,> <c e,> <c e,> <c e,> <c e,> <c c,> r \bar ".|." }