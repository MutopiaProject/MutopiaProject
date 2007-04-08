\version "2.7.29" 
\include "global.ly"
\header {
title = "Concerto for Bassoon and Orchestra in B-flat major"
opus ="K. 191"
instrument = "Solo Bassoon"
composer = \markup \center-align { "Wolfgang Amadeus Mozart" \small "(1756-1791)" }  }  
tutti = \mark \markup{ \small TUTTI } 
solo = \mark \markup{ \small SOLO } 
pad = \once \override Score.Script #'padding = #1.5 
bassoonb =  \relative {
\set Staff.instrument = \markup { \center-align {
       "Fagotto" "Principale" }  } 
\key f \major
\clef bass 
\time 2/2 \set Staff.midiInstrument = "bassoon"
 \globalb 
R1*6 \solo c4.( f8) \grace g16 f8[( e]) r bes \grace c16 bes8( a) r a \grace a16 g8 f4( e8) 
f16( d') d4 c16( bes) a8 g'32[( f e f]) e[( d cis d] c bes a bes) c8.[( \grace { d32[ c bes c] } d16]) f,8( e) f4 r f, f''8.( d16) \grace c16 b8.( c32 d) c8 r g f'4 e8 \pad e(\trill d) r4 
d32( e d c b16) b-. b-. b( c d) e32( f e d c16) c-. c-. e( d c) g'1 a,4 f' g, e' f, d' e,16( g g') g-. g( f e d) 
c-. c-. c-. c-. c( b a g) g8 b16( c) r8 g'16( f) r8 dis16( e) r8 c16( b) g'4 bes,, a a'' g,8 g'4 f32( e d c) << d2 { s16\startTrillSpan s4. s32 s\stopTrillSpan } >> c4 r 
R1 R1  r8 ees,4 c'16( a) g8( fis4) a'8~a16 fis8 ees d c16 c( b) b4( bes8~ ) 
bes c,,4 g'''8~g16 e( c bes) a( c f) a, c8.( a16) g8-. r r2  R1  c4.( f8) \grace g16 f8[( e]) r bes \grace c16 bes8( a) r a \grace a16 g8 f4( e8) 
f16( d') d4 c16( bes) a8 g'32[( f e f]) e[( d cis d] c bes a bes) c8.[( \grace { d32[ c bes c] } d16]) f,8( e) f4 r f, f''8.( d16) b8.( c32 d) c8 r 
d,,4 d''8.( bes16) gis8.( a32 b) a8 r bes,,4 bes''8.( g16) e8.( f32 g) f8 r 
c bes'4( a8) \pad a(\trill g) r4 g32( a g f e16) e-. e-. e( f g) a32( bes a g f16) f-. f-. a( g f) c'1 bes,4 d' c a, 
c \pad bes'8.(\trill a32 bes) a16 f'8 c a f16 c4 \pad bes'8.(\trill a32 bes) a16( c, c') c-. c( bes a g) f-. f-. f-. f-. f( e d c) c8 e16( f) r8 c'16( bes) r8 gis16( a) r8 f16( e) c'4 a, 
bes d' c \pad g8.(\trill f32 g) \times 2/3 { f16( a c) } c4( cis8) d-.[ d( e f]) c4~c16 d32( c bes a g f) << g2 { s16\startTrillSpan s4. s32 s\stopTrillSpan } >> f4 r r2 R1 R1   
 f2_\markup { \italic cadenza } g4.^\fermata f8 f4 r r2 R1 R1  \bar ".|." }