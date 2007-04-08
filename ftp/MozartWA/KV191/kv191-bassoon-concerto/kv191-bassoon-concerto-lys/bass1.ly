\version "2.7.29"
\include "global.ly"
\header {
title = "Concerto for Bassoon and Orchestra in B-flat major"
opus = "K. 191"
instrument = "Cello and Bass"
composer = \markup \center-align { "Wolfgang Amadeus Mozart" \small "(1756-1791)" } }  
tutti = \mark \markup{ \small TUTTI } 
solo = \mark \markup{ \small SOLO } 
\layout { indent = 2 \cm } 
bassa = \relative {
\set Staff.instrument = \markup {
       \center-align { "Violoncello e"
                 \line { "Contrabasso"  } } }  
\key bes \major
\clef bass 
\time 4/4 \set Staff.midiInstrument = "cello"
\globala 
bes,8_\markup { \bracket { \dynamic f } } bes bes bes bes bes bes bes bes bes bes bes bes bes bes bes a a a a a' a a a bes bes bes bes d,\p d d d 
ees ees ees ees f f f f bes,4\f r8 d' bes f d bes a4 r8 c' a f c a bes4 r8 d' bes f d bes ees ees ees ees ees ees ees( e) f4 r4 r2 
r2 r4 d4\p c( a bes d) c( a bes d) ees r4 d2\f( ees4\p) r4 d2\f( ees4\p) r4 r2 r4 ees f f, r8 bes\f d ees d bes16 c d8 g 
f\fp( g f ees d ees d c) bes\fp( bes' a g f g f e) f r4 r2 r8 f-.\f f-. f-. f-. f-. f-. f-. f-. bes,4 r4 r2 bes'2\p( f) bes,4 r4 r2 
bes'2\p( f)~f1~f~f g8\f g g g ees ees ees ees f f f f f f f f 
bes, c16 d ees f g a bes c d a bes c d a bes bes, c d ees f g a bes c d a bes c d a bes4 bes bes, r4 \solo
bes'4\p r4 bes, r bes' r bes, r a' r a, r bes' r d, r ees2 f4( ees) d4 r4 r2 ees4( e f) f,-. 
bes8\f c16 d ees! f g a bes c d a bes c d a bes bes, c d ees f g a bes c d a bes c d a bes4 bes bes, r4 
f'4\p r4 r2 f4 r4 r2 g4 r4 r2 c,4 r4 r2 c'2 c, f4 f, r8 a a a bes4 r bes8 r bes r 
bes4 r bes8 r bes r  bes4 r bes8 r bes r  bes4 r bes8 r bes r a a a a a a a a bes4 bes r8 bes( c d) a4( bes c2) 
f,4 r4 r2 r2 r4 a'\p g( e f a) g( e f a) bes a g f e d c bes a a' bes d c8 c c c c c bes bes a4 r4 r4 a,( bes) r bes r 
bes8 r bes r bes r bes r c c c c c c c c \setTextCresc c\< c\! c c c c c c \tutti f4\f  r8 a f c a f e4 r8 g' e bes g e f4 r4 r2 
f'2\p c f,4 r4 r2 f'2\p c~c1~c~c \solo f4 r f r r8 g,8( g') g-. g( f ees d) c4 r b r c8\f d16 ees f g aes b c d ees b c8 r c,4\p r c r 
r8 f,( f') f-. f( ees d c) bes4 r a r bes8\f c16 d ees f g a bes c d a bes8 r c,8\p c c c c c cis cis d8-. d16-.\f e-. fis( g) a-. fis-. d8 r fis\p r 
g8-. g,16-.\f a-. bes( c) d-. bes-. g8 r b\p r c8-. c16-.\f d-. ees( f) g-. ees-. c8 r e\p r f8-. f16-.\f g-. a( bes) c-. a-. f8 r a\p r 
bes8-. bes,16-.\f c-. d( ees)  f-. d-. bes8 r d\p r ees8 ees ees ees ees ees ees( e) f4 r4 r2 f4 r4 r2 f4 f f r4\fermata | \tutti
bes,8\f  bes8 bes bes bes bes bes bes bes bes bes bes bes bes bes bes a a a a a' a a a 
bes4 r8 \grace c32 bes16 a bes8 f d f \solo bes4\p r bes, r bes' r bes, r a' r a, r bes' r d, r ees2 f4( ees) d r4 r2 ees4( e) f f, 
\tutti bes8 c16 d ees f g a bes c d a bes c d a bes bes, c d ees f g a bes c d a bes c d a bes4 bes bes, r4 \solo
ees4\p r4 r2 ees4 r4 r2 f4 r4 r2 bes,4 r4 r2 bes'2 bes, ees4 ees, r2 ees'8 ees ees ees ees ees e e f f16-.\f g-. a( bes) c-. a-. f4 f,\p 
bes4 r4 bes8 r bes r  bes4 r4 bes8 r bes r a4 r4 a8 r a r a4 r4 a8 r a r bes4 r4 bes8 r bes8 r 
bes16\f bes' bes bes bes4 f16 bes bes bes d, bes' bes bes ees,8\p r ees r ees r ees r ees4 r4 r2 
bes8 r bes r bes r bes r bes4 r4 r2 f'8 r f r f r f r f4 r4 r2 bes,4( d c f) bes,( d c f) bes,8 bes bes bes d d d d ees4 r4 r2 
r4 ees f f, bes r4 r2 r2 r4 d c( f, bes d) c( f, bes) d' ees d c bes a g f ees d d g ees f8 f f f f f ees ees d4 r4 r4 d( ees) r4 ees r 
ees8 r ees r ees r ees r f4 r4 r2 R1 f8 f f f f f f f f, f \setTextCresc f\< f\! f f f f \tutti bes4\f r4 r2 bes'2\p( f) bes,4 r4 r2 
bes'2\p( f)~f1~f~f g4 bes\f d, e f2 r2\fermata \tutti bes,4 r8 d' bes f d bes a4 r8 c' a f c a 
bes8 bes d ees d bes16 c d8 g f\fp( g f ees d ees d c) bes\fp( bes' a g f g f e) f4 r4 r2 r8 f-.\f f-. f-. f-. f-. f-. f-. 
bes,8 c16 d ees f g a bes c d a bes c d a bes bes, c d ees f g a bes c d a bes c d a bes4 bes bes, r4 




\bar ".|."

}