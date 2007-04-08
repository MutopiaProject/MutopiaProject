\version "2.7.29"
\include "global.ly"
\header {
title = "Concerto for Bassoon and Orchestra in B-flat major"
opus ="K. 191"
instrument = "2nd Violin"
composer = \markup \center-align { "Wolfgang Amadeus Mozart" \small "(1756-1791)" }  }  

tutti = \mark \markup{ \small TUTTI } 
solo = \mark \markup{ \small SOLO }
tri = \override Script #'padding = #1 
violinIIa =  \relative {
\set Staff.instrument =\markup {
       \center-align { "Violino II"
              } }
\key bes \major
\time 4/4 \set Staff.midiInstrument = "violin"
\globala 
<f' d>4_\markup{ \bracket { \dynamic f } } <f d>2 bes8.( f16) d4 d2 f,8.( d16) c4 c'2 c4 c\trill bes r bes,\p 
c4 d2( ees4) d16\f f f f f f f f d f f f bes, f' f f ees f f f f f f f c f f f a, f' f f bes, bes' bes bes bes bes bes bes d, bes' bes bes f bes bes bes 
bes16( a) bes( a) bes( a) bes( a) bes( a) g-. f-. ees( d) c( d) <a' f c>4 r r2 r2 r4 f4\p ees( c d f) 
ees( c d f) bes,8-. g'-. ees'4 aes,8-.\f f-. b,4 g'8-.\p ees-. c4 aes'8-.\f f-. b,4 g'\p \grace f16 ees4 \grace d16 c4 \grace b16 c4 
g4. ees'16( c) d4( c) <f' bes, d,>4.\f g8\trill f4. bes,8 a\fp( bes a g f g f ees) d\fp( g f ees d ees d c) 
bes-. bes'-.\f bes-. bes-. bes-. bes-. bes-. bes-. bes4.( c16 d) \grace e16 c4 \grace bes16 a4 bes4 bes'16 f d bes f' d bes f d' bes f d bes' f d bes \grace ees16 d8\p c16 bes a8-. a( bes c) 
a( bes) bes''16 f d bes f' d bes f d' bes f d bes'4 r4 r2 r4 \grace g16 f8\p ees16 d ees8[ ees] \grace f16 ees8 d16 c d8[ d] \grace ees16 d8 c16 bes c8[ c] \grace d16 c8 bes16 a 
bes8[ bes] \grace g'16 f8\p ees16 d ees8[ ees] \grace f16 ees8 d16 c 
bes16 \stemUp bes'\f bes bes \stemNeutral bes bes bes bes ees2:16 d: <ees, c>: 
bes'16 bes,16 c d ees f g a bes c d a bes c d a bes bes, c d ees f g a bes c d a bes c d a bes4 <d f, bes,> bes, r | \solo r8 d\p d d d d d d 
r d d d d d d d r c( c') c-. c c c c r c( bes) bes-. r d( f, f) \grace f16 ees4 d2( c4) 
d4 r d'8 r d r r ees,( d) d-. d( f ees c) d16\f bes16 c d ees f g a bes c d a bes c d a bes bes, c d ees f g a bes c d a bes c d a 
bes4 <d f, bes,> bes, r c8\p c c c c c c c c( a') a-. a-. a a a a g4 f4.( e16 f g8) f-. 
e( g) g-. g-. g g g g g g g g g( e f g) g4\trill f16( e f g) a8 f f f 
f4 r f8 r f r f4 r f8 r f r c'4 r c8 r c r g4 r g8 r g r 
c8( a) f8 f4 f f8 f4 f2 f4~f g( f e) f r r2 
r2 r4 c\p bes( g a c) bes( g) a8( c) f-. c'-. bes4 r8 fis( g4) r8 d( 
e4) r8 b( c) e4 e8 f f c' c bes bes f f f f f f f f e e f4 r r c( 
bes) r d r g8 r d' r d r d r r f f f f f f f << f2:16 { \setTextCresc s16\< s s\! } >> e2:16 \tutti 
\once \override DynamicLineSpanner #'padding = #1 
f16\f c c c c c c c a c c c f, c' c c bes c c c c c c c g c c c e, c' c c c4 c'16 a f c a' f c a f' c a f 
c' a f c \grace bes' a8\p g16 f e8-. e( f g) e( f) c''16\f a f c a' f c a f' c a f c'4 r r2 r4 \grace d16 c8\p bes16 a bes8[ bes] \grace c16 bes8 a16 g 
a8[ a] \grace bes16 a8 g16 f g8[ g] \grace a16 g8 f16 e f8[ f] \grace d' c8 bes16 a bes8[ bes] \grace c16 bes8 a16 g \solo f8( f aes) aes-. aes( g f ees) ees( d) d4. ( aes'8 g f ) 
ees4 r g r c,8\f d16 e f g aes b c d ees b c8 r r g,(\p g') g g( f ees d) d( c) c4. (g'8 f ees)  
d4 r f r bes,8\f c16 d ees f g a bes c d a bes8 r g8\p g ees ees c c bes bes a8-. d16-.\p e-. fis( g) a-. fis-. d8 r a'\p r 
bes8-. g,16-.\p a-. bes( c) d-. bes-. g8 r d'\p r ees8-. c16-.\p d-. ees( f) g-. ees-. c8 r g'\p r a8-. f16-.\p g-. a( bes) c-. a-. f8 r c'\p r d8-. bes,16-.\p c-. d( ees) f-. d-. bes8 r f'\p r 
g8 bes4 g, g' g8 f a16( bes a8) a-. bes([ c]) \grace ees16 d8 c16 bes a8-. a,16( bes a8) a-. bes([ c]) \grace ees16 d8 c16 bes a8.( bes16) a8.( bes16) a4 r^\fermata 
\tutti <f'' d>4\f <f d>2 bes8.( f16) d4 d2 f,8.( d16) c4 c'2 c4 c\trill bes8 \grace c32 bes16 a bes8 f d f 
\solo bes\p d, d d d d d d r d d d d d d d r c( c') c-. c c c c r c( bes) bes-. r d( f, f) 
\grace f8 ees4 d2( c4) d4 r d'8 r d r r ees,( d) d-. d( f ees c) \tutti d16\f bes c d ees f g a bes c d a bes c d a 
bes16 bes, c d ees f g a bes c d a bes c d a bes4 <d f, bes,> bes, r \solo bes8\p bes bes bes bes bes bes bes bes( g') g-. g-. g g g g  
f4 ees4.( d16 ees f8) ees-. d( f) f-. f-. f f f f f f f f f( d ees f) f4\trill ees16( d ees f) ees8( f g) g-. 
g g g g g g g g c, f16-.\f g-. a( bes) c-. a-. f8 a\p a a bes4 r f8 r f r f4 r f8 r f r 
f4 r f8 r f r f4 r c'8 r c r bes4 r bes8 r bes r bes,16\f bes' bes bes bes4\trill f16 bes bes bes d, bes' bes bes 
ees,8\p r bes r bes r bes r bes( g') g-. g-. g(\trill f) f(\trill ees) d r d r d r d r d d d d d(\trill c) c(\trill bes) 
a r a r a r a r a( c) c-. c-. c(\trill bes) bes(\trill a) bes( d) r f f( ees) r a bes( d) r f, f( ees) r a, 
bes d bes8 bes4 bes bes8 \grace g16 g'4 \grace f16 ees4 \grace d16 c4 \grace b16 c4 g4. g'16( ees) d4 c\trill d r r2 
r2 r4 f ees( c d f) ees( c) d8-. f( d) bes' bes4 r8 b( c4) r8 g( 
a4) r8 e( f4) r8 c d bes4 bes' bes, bes'8~bes bes bes bes bes bes a a bes4 r d8-. f-. f,4( 
ees) r g r g8 r g r g r c r bes4 r r2 R1 
r8 bes bes bes bes bes bes bes bes16 bes bes bes \setTextCresc bes\< bes bes\! bes a2:16 \tutti bes4 bes'16\f f d bes f' d bes f d' bes f d bes' f d bes \grace ees16 d8\p c16 bes a8-. a( bes c) 
cis( d) bes''16\f f d bes f' d bes f d' bes f d bes'4 r r2 r4 \grace g16 f8\p ees16 d ees8[ ees] \grace f16 ees8 d16 c d8[ d] \grace ees16 d8 c16 bes c8[ c] \grace d16 c8 bes16 a 
bes8[ bes] \grace g'16 f8\p ees16 d ees8[ ees] \grace f16 ees8 d16 c \stemUp 
bes16 \stemNeutral d'\f d d d d d d d d d d d d d d d2 r\fermata \tutti d,16 f f f f f f f d f f f bes, f' f f 
ees f f f f f f f c f f f a, f' f f <f' bes, d,>4. g8\trill f4. bes,8 a\fp( bes a g f g f ees) d\fp( g f ees d ees d c) 
bes-. bes'-.\f bes-. bes-. bes-. bes-. bes-. bes-. bes4.( c16 d) \grace d16 c4 \grace bes16 a4 bes16 bes, c d ees f g a bes c d a bes c d a bes16 bes, c d ees f g a bes c d a bes c d a 
bes4 <d f, bes,> bes, r \bar ".|." }

