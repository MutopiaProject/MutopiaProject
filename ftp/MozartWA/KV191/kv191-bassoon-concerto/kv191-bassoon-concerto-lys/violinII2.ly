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
violinIIb =  \relative {
\set Staff.instrument =\markup {
       \center-align { "Violino II"
              } }
\key f \major
\time 2/2 \set Staff.midiInstrument = "violin"
\globalb
r16 a'\p a_\markup { \italic "con sordino" } a a a a a r bes bes bes e, e g g r g( f) f-. f f f f r d d d c c bes bes a( bes c d ees d ees c) r d d d d d d d r b( c) c-. c c c c r f f f f f f f 
r f( e) e-. e( g) g-. g-. f( a) a-. a-. a( f) f-. f-. e4(\p cis' d e,) \solo f16( c) c-. c-. c c c c r c c c e e e e r e( f) f-. f f f f r d d d c( f e bes) 
r a( f') f-. g-. bes( a g) f r d r bes r g r r f' f f a,-. a-. g-. g-. a c(\f a' c,) c( b) g'( bes,) a(\p a f') f a a a a r g g g g g g g r g( d') d-. d-. d-. c-. c-. c8(\trill b) r4 
R1 d,32( e d c b16) b-. b-. b( c d) e32( f e d c16) c-. c-. e( d c) r c( a') a-. a( c,) a'( c,) r e( g) g-. g( e) g( e) r d( b') b-. b( d,) b'( d,) c8 r c r 
e r d r r16 g,( g') g-. g( f e f) e-. e-. e-. e-. e( d c b) c( g) g-. g-. bes bes bes bes a a a a c c c c c c' c c c c c c c c c c b b b b c-.\f g( e) e-. e-. e( d) d-. 
r d( c) c-. a' a a a r f( e) e-. e( g f a) e4 gis(\p a bes) r16  g g g g g g g r a a a a a a a r a a a a a a a r g g g g( aes g f) 
r e e e g g g g r g g g f f f f r f f f e e e( g) c8[( cis d e,])  f16-. c( a') a-. a a a a r bes bes bes g g g g  r16 g( a) a-. a a a a r c, c c e e e e 
r e( f) f-. f f f f r d d d c( f e bes) a( bes c d ees d ees c) r d d d d d d d r b( c) c-. c-. c-. c( f) r g g g g-. g-.  f( e) r a,( f') f-. g-. bes( a g) f r d r bes r g r 
r f' f f a,-. a-. g-. g-. a c(\f a' c,) c( b) g'( bes,) a(\p a f') f a a a a r g g g \setTextCresc g\< g\! g g f(\fp d) d-. d-. f f f f r e e e \setTextCresc e\< e\! ees ees d(\fp bes) bes-. bes-. d d d d r c c c c c c c 
r c( g') g-. g-. g-. f-. f-. f8(\trill e) r4 R1 g32( a g f e16) e-. e-. e( f g) a32( bes a g f16) f-. f-. a( g f) r f( d') d-. d( f,) d'( f,) r a( c) c-. c( a) c( a) 
r g( bes) bes-. bes( g) bes( g) f8 r a, r r16 g'( bes) bes-. bes( g) bes( g) f8 r d r c r c r r16 c( c') c-. c( bes a bes) a-. f-. f-. f-. f( e d c) c c c c ees ees ees ees 
d d d d f f f f r f f f e e e e r f f f f f f f f8-.[ bes,( c d)] r16 f f f f f f f f f f f e e e e f(\f f) f-. f-. f( d) d-. d-. d( c) c-. c-. c( bes) bes-. bes-. 
a4 r r2^\fermata  r16 f''(\f a,) a-. a a g g r a( c,) c-. c c bes bes a4 cis'(\p d e,) f8 r <f a,> r <f a,> r r4  \bar ".|." }