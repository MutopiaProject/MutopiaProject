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
violinIb =  \relative {
\set Staff.instrument =\markup {
       \center-align { "Violino I"
              } }
\key f \major
\time 2/2 \set Staff.midiInstrument = "violin"
\globalb \once \override TextScript #'extra-offset = #'(1.5 . 0)
<< c'4.(\p { s8 s_\markup { \italic "con sordino" } } >> f8) \grace g16 f8( e) r bes \grace c16 bes8( a) r a \grace a16 g8 f4( e8) f4 r \times 2/3 { d'16( bes f') } f4( \grace e16 d8) b( c) r c f16( a,) a4( bes8) 
d( c) r g' a( f) r b, c4(\p cis d e,) \solo f16( a) a-. a-. a a a a r bes bes bes g g g g r g( a) a-. c c c a r g( f) f-. f( a g e) 
r f( d') d-. d-. d( c bes) a r f' r d r bes r r c-. c( d) f,-. f-. e-. e-. f c(\f a' c,) c( b) g'( bes,) a(\p c a') a d d d d r b b b c c c c r g( f') f-. f-. f-. e-. e-. \pad e8(\trill d) r4 
f32( g f e d16) d-. d-. d( e f) g32( a g f e16) e-. e-. g( f e) f,32( g f e d16) d-. d-. d( e f) g32( a g f e16) e-. e-. g( f e) r a( c) c-. c( a) c( a) r g( c) c-. c( g) c( g) r f( d') d-. d( f,) d'( f,) e8 r a r 
g r g r r16 g( g') g-. g( f e d) c-. c-. c-. c-. c( b a g) g( c,) c-. c-. c c c c c c c c d d d d e e' e e e e e e d d d d d d d d c8(\f g'4) f8 
\grace g16 f8( e) r d \grace e16 d8 c4( b8) c4 gis(\p a bes)  b16( c) c-. c-. c c c c r c c c c c c c r c c c c c c c r b b b b b bes bes 
r bes bes bes bes bes bes bes r bes bes bes a a a a r a a a g g g( c) c8[( cis d e,])  \grace f16 c'4.( f8) \grace g16 f8( e) r bes bes( a) c16 c c c r bes bes bes g g g g 
r g( a) a-. c-. c-. c( a) r g( f) f-. f( a g e) f4 r \times 2/3 { d'16( bes f') } f4( \grace e16 d8) b( c) r f16( c) c( bes) bes-. bes-. bes-. bes-. a( g) r f( d') d-. d-. d( c bes) a r f' r d r bes r 
r c-. c( d) f,-. f-. e-. e-. f c(\f a' c,) c( b) g'( bes,) a(\p c a') a d d d d r b b b \setTextCresc c\< c(\! cis) cis( d)\fp f,-. f-. f-. bes bes bes bes r gis gis gis \setTextCresc a\< a\! a a bes(\fp d,) d-. d-. g g g g r e e e f f f f 
r c( bes') bes-. bes-. bes-. a-. a-. a8(\trill g) r4 bes32( c bes a g16) g-. g-. g( a bes) c32( d c bes a16) a-. a-. c( bes a) bes32( c bes a g16) g-. g-. g( a bes) c32( d c bes a16) a-. a-. c( bes a) 
r d( f) f-. f( d) f( d) r c( f) f-. f( c) f( c) r bes( g') g-. g( bes,) g'( bes,) a8 r c, r r16 bes'( g') g-. g( bes,) g'( bes,) a8 r g r f r e r r16 c'( c') c-. c( bes a g) 
f-. f-. f-. f-. f( e d c) c f, f f f f f f f f f f g g g g r a a a g g g g r f( c') c-. c c cis cis d8-.[ d( e f]) r16 a, a a a a a a g g g g g g g g 
f(\f f') f-. f-. f( d) d-. d-. d( c) c-. c-. c( bes) bes-. bes-. 
a4 r r2^\fermata r16 a'(\f c,) c-. c c bes bes r f'( a,) a-. a a g g f4 cis'(\p d e,) f8 r <f a,> r <f a,> r r4 \bar ".|." }
