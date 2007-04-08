\version "2.7.29"
\include "global.ly"
\header {
title = "Concerto for Bassoon and Orchestra in B-flat major"
opus ="K. 191"
instrument = "Viola"
composer = \markup \center-align { "Wolfgang Amadeus Mozart" \small "(1756-1791)" }  }  
tutti = \mark \markup{ \small TUTTI } 
solo = \mark \markup{ \small SOLO }
pad = \once \override Script #'padding = #1.5 
violab =  \relative {
\set Staff.instrument =\markup {
       \center-align { "Viola"
              } }
\key f \major 
\clef alto
\time 2/2 \set Staff.midiInstrument = "viola"
\globalb 
r16 f\p f_\markup { \italic "con sordino" } f f f f f r c c c g g e' e r e( f) f-. c c c c r bes bes bes a a g g f( g a bes c bes c a) r bes bes bes bes bes bes bes r gis( a) a-. a a a a r d d d d d d d 
r b( c) c-. c( bes) bes-. bes-. a( c) c-. c-. f( d) d-. d-. c4(\p cis d e,) \solo f16( f') f-. f-. f f f f r g, g g c c c c r c c c a a a a r bes bes bes a( c bes g) 
f( a bes) bes-. r c c c c8 r r4 r16 a-. a( c) c-. c -. bes-. bes-. a8 fis(\f g) bes16( g) f\p f( c' c) f f f f r d d d c c c c r d( g) g-. g-. g-. g-. g-. g8 g, r4 
r8 g' r g, r c, r c' r g' r g, r c r c, f' r f r c r c r b2( c8) r f, r 
g8 r b r r16 g( e') e-. e( d cis d) c-. c-. c-. c-. c( b a g) g( e) e-. e-. g g g g f f f f a a a a g g g g g' g g g g g g g f f f f 
\once \override DynamicLineSpanner #'padding = #1 e-.\f e( c) c-. c-. c( b) b-. 
r b( c) c-. c c c c r b( c) c-. c( e d f) c4 gis(\p a bes)  ees,16 ees ees' ees ees ees ees ees r d d d d( fis) fis-. fis-. r fis fis fis fis fis fis fis r d d d d d d d  
r c( g) g'-. e e e e r e e e f( c) c c r c c c c c c c c8[( cis d e,]) f16( a f') f f f f f r c c c e e e e r16 e( f) f-. f f f f r g, g g c c c c 
r c c c a a a a r bes bes bes a( c bes g) f( g a bes c bes c a) r bes bes bes bes bes bes bes r gis( a) a-. a a a a r e' e e e e a, a r a( bes) bes-. r c c c c8 r r4  
r16 a-. a( bes) c-. c-. bes-. bes-. a8 fis(\f g) bes16( g) f\p f( c') c f f f f r d d d \setTextCresc e\< e\! a a a\fp a, a a d d d d r b b b \setTextCresc c\< c\! f f f\fp f, f f bes bes bes bes r g g g f f f f 
r g( c) c-. c-. c-. c-. c-. c8 c, r4 r8 c' r c, r f r f' r c r c, r f' r f, bes' r bes r f r f r 
e2( f8) r f, r e'2( f8) r bes, r a r g r r16 c( a') a-. a( g fis g) f-. a,-. a-. a-. a( g f e) f f f f c' c c c  
bes bes bes bes d d d d r c c c c c c c r c( a) a-. a a a a bes8 r r4 r16 c c c c c c c c c c c bes bes bes bes a4\f bes a d, 
c4 r r2^\fermata  r8 c'4(\f e8) f c,4( e8) f4 cis'(\p d e,) f8 r c' r c r r4 \bar ".|." }