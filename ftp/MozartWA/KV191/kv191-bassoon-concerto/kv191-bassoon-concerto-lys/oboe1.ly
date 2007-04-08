\version "2.7.29"
\include "global.ly"
\header {
title = "Concerto for Bassoon and Orchestra in B-flat major"
opus = "K.191"
instrument = "Oboe"

composer = \markup \center-align { "Wolfgang Amadeus Mozart" \small "(1756-1791)" } }  

tutti = \mark \markup{ \small TUTTI } 
solo = \mark \markup{ \small SOLO }
tri = \override Script #'padding = #1 
oboea = \relative {
\set Staff.instrument =\markup {
       \center-align { "2 Oboi"
              } }
\key bes \major
\time 4/4 \set Staff.midiInstrument = "oboe"
\globala \set doubleSlurs = ##t 
<< { bes''1_\markup{ \bracket { \dynamic f } } f1~f4 a,( c ees) ees\trill d } \\ { d1~d c4 f,( a c) c\trill bes } >> r2 R1
<f' d>1\f < f ees> <f d>2. <aes f>4 << { g1 } \\  { ees4 bes2. } >> <f' a,>4 <f f,>8. <f f,>16 <f f,>4 <f f,> 
<f f,>1\p~<f f,>~<f f,> r2 <aes b,>2\f r <aes b,>\f 
R1 R1\once \override TextScript #'extra-offset = #'(-1 . 0.5) f4.\f^\markup{ a2 } \once \override Script #'padding = #1 g8\trill f4. bes8 
\set doubleSlurs =##f a\fp( bes a g f g f ees) 
%bar 20 
d\fp( g f ees d ees d c) \set doubleSlurs =##t
bes4 r4 r2 <f' d>2\f \grace <f d>16 <ees c>4 \grace <d bes>16 <c a>4 << { bes } \\ { bes } >> <bes' d,>8. <bes d,>16 <bes d,>4 <bes d,>
<bes d,> r4 r2 r4 <bes d,>8.\f <bes d,>16 <bes d,>4 <bes d,> <bes d,>4 r4 r2
R1 << {  \once \override Voice.MultiMeasureRest #'staff-position = #7 R1 f2^\p( ees) } 
\\ { f\p( ees) d( c) } >> <d bes>2\f <g ees> <f d> <a, ees> << { bes4 } \\ { bes } >> r4 <bes' bes,> <bes bes,> 
<bes bes,> r4 <bes bes,> <bes bes,> <bes bes,> <bes d,> << { bes, } \\ { bes } >> r4  
\solo R1*7 
%bar 42 
<< { bes4 } \\ { bes\f } >> r4 <bes' bes,> <bes bes,> 
<bes bes,> r4 <bes bes,> <bes bes,> <bes bes,> <bes d,> << { bes, } \\ { bes } >> r4 
R1*13 <c' c,>4\f <c c,>8. <c c,>16 <c c,>4 <c c,> <c c,>1\p~
%bar 60 
<c c,>~<c c,>2 r2 R1*7
r2 << { a2 \setTextCresc  << g1 { s8_\< s16\! } >> } \\ {  f2\p~f e2\! } >> \tutti 
<a f>1\f <bes g>1 <a f>4 <a f>8. <a f>16 <a f>4 <a f> <a f> r4 r2 r4  <a f>8. <a f>16 <a f>4 <a f> <a f> r4 r2 R1 
<< {  \once \override Voice.MultiMeasureRest #'staff-position = #10 R1 c2^\p( bes) } \\ { c\p( bes) a( g) } >> 
%bar 80
\solo <a f>4  r4 r2 R1 
<< { g1^\p~g4 r4 r2 } \\ { R1 R1 } >> R1 R1 << { f1^\p~f4 r4 r2 } \\ { R1 R1 } >> R1*8 r8 <c a>16\p( <d bes> <c a>8) <c a>-. <d bes>[( <ees c>]) \grace <g ees>16 <f d>8 <ees c>16 <d bes> 
<c a>8.( <d bes>16) <c a>8.( <d bes>16) <c a>4 r4\fermata \tutti
<< { bes'1\f f1~f4 
%bar 100 
a,( c ees) ees\trill d } \\ { d1~d c4 f,( a c) c\trill bes } >> r2 \solo 
R1*7  \tutti << { bes4 } \\ { bes\f } >> r4 <bes' bes,> <bes bes,> 
<bes bes,> r4 <bes bes,> <bes bes,> <bes bes,> <bes d,> <bes bes,> r4 \solo R1*15 
%bar 127 
r8 << { \tri bes8 bes bes bes\trill( aes) aes\trill( g) } \\ { g g g g_\trill( f) f_\trill( ees) } >> R1  
r8 << { \tri f8 f f f\trill( ees) ees\trill( d) } \\ { \tri d d d d_\trill( c) c_\trill( bes) } >> R1 
r8 << { \tri ees8 ees ees ees\trill( d) d\trill( c) } \\ { \tri c c c c_\trill( bes) bes_\trill( a) } >>  \once \override TextScript #' extra-offset = #'(-1 . 1) f'1^\markup{ a2 }~f~f4 r4 r2  
R1 R1 <f f,>4\f <f f,>8. <f f,>16 <f f,>4 <f f,> <f f,>1\p~<f f,>~<f f,>2 r2  
%bar 140 
R1*7  <f d>1\p~<f d> R1 R1 \tutti
<< { bes,4 } \\ { bes\f } >>  <bes' d,>8. <bes d,>16 <bes d,>4 <bes d,>
<bes d,> r4 r2 r4 <bes d,>8.\f <bes d,>16 <bes d,>4 <bes d,> <bes d,>4 r4 r2 R1
<< { \once \override Voice.MultiMeasureRest #'staff-position = #7 R1 f2^\p( ees) } \\ { f\p( ees) d( c) } >> <d bes>4 <bes' d,>2\f <bes d,>4 
%bar 160
<bes d,>2 r2\fermata \tutti
<f d>1 <f ees>1 << { f4. g8^\trill } \\ { d8 f4 g8 } >> \once \override TextScript #' extra-offset = #'(0 . 1) f4.^\markup{ a2} bes8 \set doubleSlurs =##f
a\fp( bes a g f g f ees) d\fp( g f ees d ees d c) bes4 r4 r2 
<f' d>2\f \grace <f d>16 <ees c>4 \grace <d bes>16 <c a>4 << { bes } \\ { bes } >> r4 <bes' bes,> <bes bes,> 
<bes bes,> r4 <bes bes,> <bes bes,> <bes bes,> <bes d,> << { bes, } \\ { bes } >> r4 

\bar ".|."

}