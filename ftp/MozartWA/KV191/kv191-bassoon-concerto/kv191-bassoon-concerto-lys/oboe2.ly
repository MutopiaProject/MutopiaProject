\version "2.6.3"
\include "global.ly"
\header {
title = "Concerto for Bassoon and Orchestra in B-flat major"
opus = "K.191"
instrument = "Oboe"

composer = \markup \center-align { "Wolfgang Amadeus Mozart" \small "(1756-1791)" } }  

tutti = \mark \markup{ \small TUTTI } 
solo = \mark \markup{ \small SOLO }
tri = \override Script #'padding = #1 
oboeb = \relative {
\set Staff.instrument =\markup {
       \center-align { "2 Oboi"
              } }
\key f \major
\time 2/2 \set Staff.midiInstrument = "oboe"
\globalb  \set doubleSlurs = ##t 
R1 R1 <a' f>16(\p <bes g> <c a> <d bes> <ees c> <d bes> <ees c> <c a>) <d bes>8 r r4 R1 
r4 << { g a b c8 } \\ { e,4 f2 e8 } >> r r4 r2 \solo R1*5 r2 r8 <g g,>\p <g g,> <g g,> 
<g g,>1 <f d>32( <g e> <f d> <e c> <d b>16) <d b>-. <d b>-. <d b>( <e c> <f d>) <g e>32( <a f> <g e> <f d> <e c>16) <e c>-. <e c>-. <g e>( <f d> <e c>) << { r8 c( f a) r c,( e g) r b,( d f) e r r4 } \\ { R1 R1 } >>
R1 R1 r2 r4 << { e 
%bar 20 
d2 c4 } \\ { c~\p c b c } >> r4  R1*4 
<bes' e,>2.(\p <a f>4) <c a>8.( <a f>16) <g e>8-. r r2 R1*3 <a, f>16(\p <bes g> <c a> <d bes> <ees c> <d bes> <ees c> <c a>) <d bes>8 r r4 R1*6 
r2 r8 <c' c,>\p <c c,> <c c,> <c c,>1 <bes g>32( <c a> <bes g> <a f> <g e>16) <g e>-. <g e>-. <g e>( <a f> <bes g>) <c a>32( <d bes> <c a> <bes g> <a f>16) <a f>-. <a f>-. <c a>( <bes g> <a f>) 
%bar 40 
<< { r8 f( bes d) r f,( a c) } \\ { R1 } >> <bes e,>2( <a f>) <bes e,>2( <a f>8) r r4 R1*4 r4 << { a g2 f1~f4 } \\ 
{ f2( e4) f4\p f,2. a4 } >> r4 r2^\fermata 
<< { f'8 } \\ { f\f } >> <c' a>4( <bes g>8) \grace <bes g>16 <a f>8 <a f>4( <g e>8) << { f8 } \\ { f } >> r r4 r2 R1 \bar ".|."

}