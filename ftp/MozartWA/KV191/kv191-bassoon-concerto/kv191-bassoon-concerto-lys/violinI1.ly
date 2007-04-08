\version "2.7.29"
\include "global.ly"
\header {
title = "Concerto for Bassoon and Orchestra in B-flat major"
opus ="K. 191"
instrument = "1st Violin"
composer = \markup \center-align { "Wolfgang Amadeus Mozart" \small "(1756-1791)" }  }  

tutti = \mark \markup{ \small TUTTI } 
solo = \mark \markup{ \small SOLO }
tri = \override Script #'padding = #1 
violinIa = \relative {
\set Staff.instrument =\markup {
       \center-align { "Violino I"
              } }
\key bes \major
\time 4/4 \set Staff.midiInstrument = "violin"
\globala 
<bes'' d,>4_\markup{ \bracket { \dynamic f } } bes2 d8.( bes16) f4 f2 d8.( bes16) f4 ees'2 ees4 ees\trill d r \grace g16 f8\p ees16 d 
\grace d8 c4 bes2( a4) bes16\f f f f f f f f bes f f f d' f, f f c' f, f f f f f f c' f, f f ees' f, f f d' bes bes bes bes bes bes bes f' bes, bes bes aes' bes, bes bes 
g'16( fis) g( fis) g( fis) g( fis) g( f) ees-. d-. c( bes) a( bes) <f' a,>4 r r2 
r2 d,8-.\p f-. bes4 a8-. c-. ees4 \grace ees16 d8 c16 bes a8 bes a-. c-. ees4 \grace ees16 d8 c16 bes a8 bes 
g-. bes-. g'4 b,8-.\f f'-. aes4 c,8-.\p ees-. g4 b,8-.\f f'-. aes4 g\p \grace f16 ees4 \grace d16 c4 \grace b16 c4 g4. ees'16( c) bes4( a) 
<f' bes, d,>4.\f g8\trill f4. bes8 a\fp( bes a g f g f ees) d\fp( g f ees d ees d c) bes-. d-.\f d-. d-. d-. d-. d-. d-. d4.( ees16 f) \grace f16 ees4 \grace d16 c4 
bes4 bes'16 f d bes f' d bes f d' bes f d bes' f d bes \grace g''16 f8\p ees16 d c8-. c( d ees) cis( d) 
bes'16 f d bes f' d bes f d' bes f d bes' f d bes \grace g''16 f8\p ees16 d ees8[ ees] \grace f16 ees8 d16 c d8[ d] \grace ees16 d8 c16 bes c8[ c] \grace d16 c8 bes16 a 
bes8[ bes] \grace g'16 f8\p ees16 d ees8[ ees] \grace f16 ees8 d16 c d8[ d] \grace ees16 d8 c16 bes c8[ c] \grace d16 c8 bes16 a 
bes16 \once \override DynamicLineSpanner #'padding = #1 
d\f d d d d d d g2:16 f: a,: bes16 bes,16 c d ees f g a bes c d a bes c d a bes bes, c d ees f g a bes c d a bes c d a bes4 <bes' bes, d,> bes,, r | 
\solo r8 f'\p f f f f f f r f f f f f f f r f( ees') ees-. ees ees ees ees r ees( d) d-. r f( bes, d) \grace d16 c4 bes2( a4) 
bes4 r f'8 r bes r r c,( bes) bes-. bes( d c a) bes16\f bes,16 c d ees f g a bes c d a bes c d a bes bes, c d ees f g a bes c d a bes c d a bes4 <bes' bes, d,> bes,, r 
a'8\p a a a a a a a a( c) c( f) f( e d c) c( b) b b b b b b bes bes bes bes bes bes bes bes bes bes bes bes bes( g a bes) bes4\trill a16( g a bes) c8 c c c 
d4 r d8 r d r d4 r d8 r d r e4 r e8 r e r e4 r e8 r e r f8( c) c2( cis4) d4.( e16 f) e8( d c b) c4( bes! a g) f r r2 
r2 a,8-.\p c-. f4 e8-. g-. bes4 \grace bes16 a8 g16 f e8 f e-. g-. bes4 \grace bes16 a8 g16 f c'8 ees! d4 r8 c( bes4) r8 a( g4) r8 f( e) g4( d'8) 
c c f f d d bes bes a a a a g g g g f4 r r ees( d) r g r d'8 r f r f r f r r a a a a a a a \setTextCresc g16\< g g\! g g g g g g2:16 \tutti 
f16\f c c c c c c c f c c c a' c, c c g' c, c c c c c c g' c, c c bes' c, c c a'4 c16 a f c a' f c a f' c a f c' a f c \grace d' c8\p bes16 a g8-. g( a bes) gis( a) 
c'16\f a f c a' f c a f' c a f c' a f c \grace d'' c8\p bes16 a bes8[ bes] \grace c16 bes8 a16 g a8[ a] \grace bes16 a8 g16 f g8[ g] \grace a16 g8 f16 e f8[ f]  
\grace d' c8 bes16 a bes8[ bes] \grace c16 bes8 a16 g a8[ a] \grace bes16 a8 g16 f g8[ g] \grace a16 g8 f16 e \solo 
f8( f, f') f-. f( ees d c) c( b) b2 b4 c r d r c,8\f d16 e f g aes b c d ees b c8 r r ees,(\p ees') ees ees( d c bes) bes( a) a2 a4 
bes4 r c r bes,8\f c16 d ees f g a bes c d a bes8 r ees8\p ees c c a a g g fis8-. d16-.\p e-. fis( g) a-. fis-. d8 r d'\p r 
d8-. g,,16-.\p a-. bes( c) d-. bes-. g8 r g'\p r g8-. c,16-.\p d-. ees( f) g-. ees-. c8 r c'\p r c8-. f,16-.\p g-. a( bes) c-. a-. f8 r f'\p r 
f8-. bes,,16-.\p c-. d( ees) f-. d-. bes8 r bes'\p r bes g'4 ees c bes8 a c16( d c8) c-. d([ ees]) \grace g16 f8 ees16 d c8-. c,16( d c8) c-. d([ ees]) \grace g16 f8 ees16 d 
c8.( d16) c8.( d16) c4 r^\fermata \tutti <bes'' d,>4\f bes2 d8.( bes16) f4 f2 d8.( bes16) f4 ees'2 ees4 ees\trill d8 \grace c32 bes16 a bes8 f d f 
\solo bes\p f f f f f f f r f f f f f f f r f( ees') ees-. ees ees ees ees r ees( d) d-. r f( bes, d) \grace d8 c4 bes2( a4) bes4 r f'8 r bes r r c,( bes) bes-. bes( d c a) \tutti 
bes16\f bes, c d ees f g a bes c d a bes c d a bes16 bes, c d ees f g a bes c d a bes c d a bes4 <bes' bes, d,> bes,, r \solo g'8\p g g g g g g g g( bes) bes( ees) ees( d c bes) 
bes( a) a a a a a a aes aes aes aes aes aes aes aes aes aes aes aes aes( f g aes) aes4\trill g16( f g aes) g8( a bes b) c c c c c c bes bes a f16-.\f g-. a( bes) c-. a-. f8 c'\p c c 
d4 r d8 r d r d4 r d8 r d r ees4 r ees8 r ees r ees4 r ees8 r ees r d4 r d8 r d r bes,16\f bes' bes bes bes4\trill f16 bes bes bes d, bes' bes bes ees,8\p r g r g r g r 
g( bes) bes-. bes-. bes(\trill aes) aes(\trill g) f r f r f r f r f f f f f(\trill ees) ees(\trill d) c r c r c r c r c( ees) ees-. ees-. ees(\trill d) d(\trill c) d( f) r bes a( c) r ees 
d( f) r bes, a( c) r ees, d f f2 fis4 \grace g16 g'4 \grace f16 ees4 \grace d16 c4 \grace b16 c4 g4. ees'16( c) bes4 a\trill bes r r2 r2 f'4 \grace ees16 d8 c16 bes 
ees4 \grace d16 c8 bes16 a bes8 d f4 \grace f16 ees4 \grace d16 c8 bes16 a bes8[ d] \once \override Script #'padding = #1 f8.(\trill ees32 f) g4 r8 f( ees4) r8 d( 
c4) r8 bes( a4) r8 g f f f' f \grace f16 ees4 \grace d16 c4 d8 d d d c c c c bes4 r f'8-. aes-. <aes, bes,>4( g) r c r c8 r c r c r ees r d4 r r2 R1 r8 d d d d d d d 
c16 c c c \setTextCresc c\< c c\! c c2:16 \tutti bes4 bes'16\f f d bes f' d bes f d' bes f d bes' f d bes \grace g''16 f8\p ees16 d c8-. c( d ees) cis( d) 
bes'16\f f d bes f' d bes f d' bes f d bes' f d bes \grace g''16 f8\p ees16 d ees8[ ees] \grace f16 ees8 d16 c d8[ d] \grace ees16 d8 c16 bes c8[ c] \grace d16 c8 bes16 a 
bes8[ f] \grace g16 f8\p ees16 d ees8[ ees] \grace f16 ees8 d16 c d8[ d] \grace ees16 d8 c16 bes c8[ c] \grace d16 c8 bes16 a 
\stemUp bes16 \stemNeutral 
bes''\f bes bes bes bes bes bes bes bes bes bes bes bes bes bes bes2 r\fermata \tutti 
bes,16 f f f f f f f bes f f f d' f, f f c' f, f f f f f f c' f, f f ees' f, f f <f' bes, d,>4. g8\trill f4. bes8 a\fp( bes a g f g f ees) d\fp( g f ees d ees d c) bes-. d-.\f d-. d-. d-. d-. d-. d-. 
d4.( ees16 f) \grace f16 ees4 \grace d16 c4 bes16 bes, c d ees f g a bes c d a bes c d a bes16 bes, c d ees f g a bes c d a bes c d a bes4 <bes' bes, d,> bes,, r  
\bar ".|."

}