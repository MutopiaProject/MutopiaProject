\version "2.7.29"
\include "global.ly"
\header {
title = "Concerto for Bassoon and Orchestra in B-flat major"
opus ="K. 191"
instrument = "2nd Violin"
composer = \markup \center-align { "Wolfgang Amadeus Mozart" \small "(1756-1791)" }  }  
tutti = \mark \markup{ \small TUTTI } 
solo = \mark \markup{ \small SOLO }
pad = \once \override Script #'padding = #1.5 
violinIIc = \relative {
\set Staff.instrument =\markup {
       \center-align { "Violino II"
              } }
\key bes \major 
\time 3/4 \set Staff.midiInstrument = "violin"
\globalc 
f2\f ees8( d) g4 bes,( c) bes8( d) d( bes') g[( ees]) d( c bes a bes c) d4( f) ees8( d) g4 bes,( c) f d c <bes' d,>2 r4 \bar ":|" 
a,2 bes8( g) b( c) c2 bes c8( a) cis( d) d2 
f2 ees8( d) g4 bes,( c) bes8( d) d( bes') g[( ees]) d( c bes a bes c) d4( f) ees8( d) g4 bes,( c) f d c <bes' d,>2 r4 \solo 
d,4 bes'8.( f16) d'4 a, c'8.( a16) f4 f bes g f \times 2/3 { d8[ c bes] } \times 2/3 { a[ bes c] } 
d4 bes'8.( f16) d'4 a, c'8.( a16) f4 f g a \times 2/3 { bes8[ f d] } \times 2/3 { d[ ees f] } bes,4 
r8 f' f f d'[( f,]) r f f f c'[( f,]) r e e e bes'[( g]) \grace g16 f4 e r 
r c( a') g g,( e') f c( a') bes g,( e') 
f8 r f r c r d2( e4) f a,( g) f'8 r c' r c, r d4( bes g) r r r8 r16 e' f4 a,4( bes) 
bes( a8.) g'16 g8.(\trill f32 g) aes4\p r c( b) r f( ees) r bes'( a) r ees( d) f g8.( ees16) d2( c4) \tutti 
f2\f ees8( d) g4 bes,( c) bes8( d) d( bes') g[( ees]) d( c bes a bes c) d4( f) ees8( d) g4 bes,( c) f d c <bes' d,>2 r4 \solo 
bes,8\p bes bes bes bes bes ees\fp ees ees ees ees ees d d d d d d es\fp ees ees ees ees ees d( d') c4( bes) a( g f) ees( d c) c2( bes4)  
r8 bes4 d f8( ees4) r r r8 c4 e g8( f4) r r r8 d4 fis a8( g4) r r 
d8\p d d d d d c\fp c c c c c bes d d d d d ees\fp ees ees ees ees ees d( d') c4( bes) a( g f) ees( d c) c2( bes4) \tutti 
f'2\f ees8( d) g4 bes,( c) bes8( d) d( bes') g[( ees]) d( c bes a bes c) d4( f) ees8( d) g4 bes,( c) f d c <bes' d,>2 r4 \solo 
d,4 bes'8.( f16) d'4 a, c'8.( a16) c4 bes2( g4) f a a16( g f ees)  
d4 bes'8.( f16) d'4 a, c'8.( a16) c4 bes2( a4) bes8 a16 g f ees d c bes4 
r8 d d d aes'[( f]) r ees( g) g-. bes[( g]) r g g g bes[( g]) r f f f a[( a,]) 
R2. r4 r e''( f) r r r r e( f) r des,( c) r r^\fermata 
R2. r8 a'16 bes c8 f, g a bes4 r r r8 c16 bes a8 f g a bes4 r r r8 a16 bes c8 f, g a bes4 r r 
r8 d16 ees f8 d( c bes) a8-. a16( gis) a8-. a-. bes( d) b(c) c2 r8 bes16( a) bes8-. bes-. c( ees) cis( d) d2 
f2 ees8( d) g4 c( a) bes8( d) d,( bes') g[( ees]) d( c bes a bes c) d4( f) ees8( d) g4 c( a) bes8.( c32 d) d,4( c) 
d f( d') ees c,( a') bes f( d') ees c,( a') 
bes8 r f r bes, r g'4( ees c) bes8 bes' bes bes a a bes r bes r f r g4( ees c) R2. bes8 bes bes bes bes bes \setTextCresc a16 a a\< a << a2: { s8\! } >> \tutti 
<bes f>2\f ees,8( d) g4 bes,( c) bes8( d) d( bes') g[( ees]) d( c bes a bes c) d4( f) ees8( d) g4 bes,( c) f d c
<f' bes, d,>8. g32 a bes16 a g f ees d c bes c d ees c bes c d bes a bes c a <f' bes, d,>8. g32 a bes16 a g f ees d c bes c d ees c bes c d bes a bes c a 
bes4 <d f, bes,> <d f, bes,> <d f, bes,> bes, r \bar ".|." }