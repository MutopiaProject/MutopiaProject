\version "2.7.29"
\include "global.ly"
\header {
title = "Concerto for Bassoon and Orchestra in B-flat major"
opus ="K. 191"
instrument = "1st Violin"
composer = \markup \center-align { "Wolfgang Amadeus Mozart" \small "(1756-1791)" }  }  
tutti = \mark \markup{ \small TUTTI } 
solo = \mark \markup{ \small SOLO }
pad = \once \override Script #'padding = #1.5 
violinIc = \relative {
\set Staff.instrument =\markup {
       \center-align { "Violino I"
              } }
\key bes \major 
\time 3/4 \set Staff.midiInstrument = "violin"
\globalc 
<bes' d,>2\f c8( d) f( ees) ees2 d8( f) bes,( d) g,[( c]) bes( a g f g a) <bes d,>2 c8( d) f( ees) ees2 d8.( ees32 f) bes,4 a <bes d,>2 r4 \bar ":|" 
c2 d8( bes) d( ees) ees2 d ees8( c) e( f) f2 
<bes, d,>2 c8( d) f( ees) ees2 d8( f) bes,( d) g,[( c]) bes( a g f g a) <bes d,>2 c8( d) f( ees) ees2 d8.( ees32 f) bes,4 a <bes d,>2 r4 \solo 
f4 f'8.( d16) f4 ees, ees'8.( c16) ees4 d g bes, \times 2/3 { a8[ bes c] } \times 2/3 { bes[ a g] } f4 
f4 f'8.( d16) f4 ees, ees'8.( c16) ees4 d << c2 { s16\startTrillSpan s4. s16\stopTrillSpan } >> \times 2/3 { bes8[ f d] } \times 2/3 { d[ ees f] } bes,4 
r8 d' d d f[( d]) r c c c f[( c]) r bes bes bes g'[( bes,]) \grace bes16 a4 g r 
a16( bes c) a-. f'8-.[ f-.] \pad f8.(\trill e32 f) e16( f g) e-. bes8-.[ bes-.] bes8.(\trill a32 bes) a16( bes c) a-. f'8-.[ f-.] \pad f8.(\trill e32 f) e16( f g) e-. bes8-.[ bes-.] bes8.(\trill a32 bes) 
a8 r c r f r g,4( bes d) c8.( d16) f,4( e) c'8 r f r f r g,4( bes d) r r r8 r16 d c8.( d16) f,4( e) 
e( f8.) g16 g8.(\trill f32 g) aes4\p c f~f d g~g c, ees~ees c f~f d e8.( c16) bes2( a4) \tutti 
<bes d,>2\f c8( d) f( ees) ees2 d8( f) bes,( d) g,[( c]) bes( a g f g a) <bes d,>2 c8( d) f( ees) ees2 d8.( ees32 f) bes,4 a <bes d,>2 r4 \solo 
g8\p g g g g g fis\fp fis fis fis fis fis g g g g g g fis\fp fis fis fis fis fis g( g') g( fis) r ees ees( d) d( c) r bes bes( a) a( g) g( fis) fis2( g4) 
r8 d4 f aes8( g4) r r r8 e4 g bes8( a4) r r r8 fis4 a c8( bes4) r r 
g8\p g g g g g fis\fp fis fis fis fis fis g g g g g g fis\fp fis fis fis fis fis g( g') g( fis) r ees ees( d) d( c) r bes bes( a) a( g) g( fis) fis2( g4) \tutti 
<bes d,>2 c8( d) f( ees) ees2 d8( f) bes,( d) g,[( c]) bes( a g f g a) <bes d,>2 c8( d) f( ees) ees2 d8.( ees32 f) bes,4 a <bes d,>2 r4 \solo 
f4 f'8.( d16) f4 ees, ees'8.( c16) ees4 d g bes, a c r 
f,4 f'8.( d16) f4 ees, ees'8.( c16) ees4 d << c2 { s16\startTrillSpan s4. s16\stopTrillSpan } >> bes8 a16 g f ees d c bes4 
r8 bes' bes bes f'[( aes,]) r g( bes) bes-. g'[( bes,]) r c c c g'[( bes,]) r a a a c[( f]) 
R2. c4( des bes) \times 2/3 { a8( c f) } f2 c4( des bes) \times 2/3 { a8( c f) } f4 f f r r^\fermata 
r8 f16 e f8 bes, c d f( ees) ees2 r8 d16 c d8[ bes] g' bes, bes( a) c2 r8 f16 e f8 bes, c d f( ees) ees2 r8 d16 ees f8 bes, c a 
bes4 r r r8 c16( b) c8-. c-. d( bes) d(ees) ees2 r8 d16( cis) d8-. d-. ees( c) e( f) f2 
<bes, d,>2 c8( d) f( ees) ees2 d8( f) bes,( d) g,[( c]) bes( a g f g a) <bes d,>2 c8( d) f( ees) ees2 d8.( ees32 f) bes,4 a 
d16( ees f) d-. bes'8-.[ bes-.] \pad bes8.(\trill a32 bes) a16( bes c) a-. ees8-.[ ees] \pad ees8.(\trill d32 ees) 
d16( ees f) d-. bes8-.[ bes-.] bes8.(\trill a32 bes) a16( bes c) a-. ees8-.[ ees] ees8.(\trill d32 ees) 
d8 r bes' r f' r c4( ees g) d8 d c c c c bes r f' r bes, r c4( ees g) R2. d8 d d d d d \setTextCresc c16 c c\< c << c2: { s8\! } >> \tutti 
<bes d,>2\f c8( d) f( ees) ees2 d8( f) bes,( d) g,[( c]) bes( a g f g a) <bes d,>2 c8( d) f( ees) ees2 d8.( ees32 f) bes,4 a 
<f' bes, d,>8. g32 a bes16 a g f ees d c bes ees f g ees d ees f d c d ees c <f bes, d,>8. g32 a bes16 a g f ees d c bes ees f g ees d ees f d c d ees c 
bes4 <bes' bes, d,> <bes bes, d,> <bes bes, d,> bes,, r \bar ".|." }