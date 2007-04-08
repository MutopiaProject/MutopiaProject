\version "2.7.29"
\include "global.ly"
\header {
title = "Concerto for Bassoon and Orchestra in B-flat major"
opus ="K. 191"
instrument = "Viola"
composer = \markup \center-align { "Wolfgang Amadeus Mozart" \small "(1756-1791)" }  }  

tutti = \mark \markup{ \small TUTTI } 
solo = \mark \markup{ \small SOLO }
pad = \override Script #'padding = #1.5 
violac = \relative {
\set Staff.instrument =\markup {
       \center-align { "Viola"
              } }
\key bes \major 
\clef alto
\time 3/4 \set Staff.midiInstrument = "viola"
\globalc 
d4(\f bes') a8( bes) g2( f4) f8[( d) g( bes,]) ees( c) f,4 f' f f( bes) a8( bes) g2( f4) f f f f2 r4 \bar ":|" 
c2 d8( bes) d( ees) e2 d ees8( c) e( f) f2 
d4(\f bes') a8( bes) g2( f4) f8[( d) g( bes,]) ees( c) f,4 f' f f( bes) a8( bes) g2( f4) f f f f2 r4 \solo 
bes,2.\p c d4( c) c c r r bes2. c d4 ees2 \times 2/3 { d8[ f ees] } \times 2/3 { d[ ees f] } bes,4 
bes r bes a r a c2.~c4 c8 d( c) e( f4) r r R2.*4 
bes,2( g4) a8.( bes16) c2 c4 r r bes2. r4 r r8 r16 g a8.( bes16) c4( g) g( f8.) g16 g8.(\trill f32 g) 
aes4\p r c( d) r d( c) r bes( c) r c( bes2) bes8.( g'16) f2( e4) \tutti
d4(\f bes') a8( bes) g2( f4) f8[( d) g( bes,]) ees( c) f,4 f' f f( bes) a8( bes) g2( f4) f f f f2 r4 \solo 
d8\p d d d d d c\fp c c c c c bes bes bes bes bes bes a\fp a a a a a bes4( a g) fis( g) d' c( bes a) a2( g4) 
r bes bes bes r r r c c c r r r d d d r r 
bes8 bes bes bes bes bes ees\fp ees ees ees ees ees d bes bes bes bes bes a\fp a a a a a bes4( a g) fis( g) d' c( bes a) a2( g4) \tutti 
d'4(\f bes') a8( bes) g2( f4) f8[( d) g( bes,]) ees( c) f,4 f' f f( bes) a8( bes) g2( f4) f f f f2 r4 \solo 
bes,2.\p c2( a4) bes2( c4) c8( a) f4 r bes2. c2( a4) f' g f8( ees) d16 bes' a g f ees d c bes4 
f'4.( d8) bes4 bes'4.( g8) ees4 g4.( e8) c4 c'4.( a8) f4 r r e( f) r r r r e( f) r r r r bes,( a) r r^\fermata 
r f'( bes) a( f) r r bes,( ees) f( a) r r f( bes) a( f) r r bes8( f ees c) d4 r r 
f2.~f bes~bes bes2 a8( bes) g4( f2) f8( d) g( bes,) ees[( c]) f,4 f' f f( bes) a8( bes) g4( f2) f4 f f f r r R2.*4 
ees2. f8 f f f f f f4 r r ees2. R2. f8 f f f f f \setTextCresc ees16 ees ees\< ees << ees2:16 { s8\! } >> \tutti 
d4(\f bes') a8( bes) g2( f4) f8[( d) g( bes,]) ees( c) f,4 f' f f( bes) a8( bes) g2( f4) f f f 
d8 d d d d d ees ees f f ees ees d d d d d d ees ees f f f, f bes bes d bes d f bes4 bes, r  \bar ".|."

}