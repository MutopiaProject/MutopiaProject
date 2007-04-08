\version "2.7.29"
\include "global.ly" 
\header {
title = "Concerto for Bassoon and Orchestra in B-flat major"
opus ="K. 191"
instrument = "Viola"
composer = \markup \center-align { "Wolfgang Amadeus Mozart" \small "(1756-1791)" }  }  
tutti = \mark \markup{ \small TUTTI } 
solo = \mark \markup{ \small SOLO }
tri = \override Script #'padding = #1 
violaa =  \relative {
\set Staff.instrument =\markup {
       \center-align { "Viola"
              } }
\key bes \major 
\clef alto
\time 4/4 \set Staff.midiInstrument = "viola"
\globala 
bes8_\markup { \bracket { \dynamic f } }  bes8 bes bes bes bes bes bes 
bes bes bes bes bes bes bes bes a f' f f f f f f f f f f f,4\p f g2( f) bes8\f d f bes d4 r8 bes, c f a c ees4 r8 c, 
bes d f bes d bes f d ees ees ees ees ees ees bes g' c,4 r4 r2 
r2 r4 d4\p c( a bes d) c( a bes d) ees r4 d2\f( ees4\p) r4 d2\f( ees4\f) r4 r2 r4 g, f2 r8 bes d ees d bes16 c d8 g 
f8\fp( g f ees d ees d c) bes\fp( bes' a g f g f g) d4 r4 r2 r8 f-.\f f-. f-. f-. f-. f-. f-. bes,4 r4 r2 bes'2( f) bes,4 r4 r2 
bes'2\p( f)~f1~f~f g8\f g g g ees ees ees ees f f f f f f f f bes, c16 d ees f g a bes c d a bes c d a bes bes, c d ees f g a bes c d a bes c d a bes4 bes bes, r 
\solo r8 bes\p bes bes bes bes bes bes r bes bes bes bes bes bes bes r ees( f) f-. f f f f r f f f r bes,( d bes) g2( f) f4 r4 r2 
g2( f) bes8\f  c16 d ees f g a bes c d a bes c d a bes bes, c d ees f g a bes c d a bes c d a bes4 bes bes, r 
f8\p f f f f f f f f( f') f-. f-. f f f f d4 d4.( cis16 d e8) d-. c( e) e-. e-. e e e e e e e e e4 r8 e e4( f) r8 a, a a bes4 r bes8 r bes r 
bes4 r bes8 r bes r g'4 r g8 r g r c,4 r c8 r c r  c4 a2 a4 bes r4 r8 bes( c d) a4( d c bes) a r4 r2 r2 r4 a\p 
g( e f a) g( e f) r r8 d'( c4) r8 bes( a4) r8 g( f4) r8 c'( bes) g'-. c, a a a bes bes d d c c c c c c c c c4 r r f,~f r bes r bes8 r g' r g r g r c, c c c c c c c 
\setTextCresc c\< c\! c c c c c c \tutti f,\f a c f a4 r8 f, g bes e g bes4 r8 g, f4 r4 r2 f'2\p c f,4 r4 r2 f'2\p c~c1~c~c \solo 
f4 r4 f r r2 r8 d( g) g-. g1 c,8\f d16 ees f g aes b c d ees b c8 r c,4\p r c r r2 r8 c( f) f-. f1 bes,8\f c16 d ees f g a bes c d a bes8 r 
c,\p c c c c c cis cis d8-. d16-.\f e-. fis( g) a-. fis-. d8 r fis\p r g8-. g,16-.\f a-. bes( c) d-. bes-. g8 r b\p r c8-. c16-.\f d-. ees( f) g-. ees-. c8 r e\p r f8-. f16-.\f g-. a( bes) c-. a-. f8 r a\p r 
bes8-. bes,16-.\f c-. d( ees)  f-. d-. bes8 r d\p r ees8 ees ees ees ees ees ees( c) f f f f f f f f f, f f f f f f f f4 f f r\fermata 
\tutti bes8\f bes8 bes bes bes bes bes bes 
bes bes bes bes bes bes bes bes a a a a a' a a a bes4 r8 \grace c32 bes16 a bes8 f d f \solo r8 bes,\p bes bes bes bes bes bes 
r bes bes bes bes bes bes bes r ees( f) f-. f f f f r f f f r bes,( d bes) g2( f) f4 r4 r2 g2( f) \tutti
bes8\f c16 d ees f g a bes c d a bes c d a bes bes, c d ees f g a bes c d a bes c d a bes4 bes bes, r \tutti
ees,8\p ees ees ees ees ees ees ees ees( ees') ees-. ees-. ees ees ees ees c4 c4.( b16 c d8) c-. bes!( d) d-. d-. d d d d d d d d d4 r8 d 
d4( ees) r8 ees, ees ees ees ees'4 ees c8 c c c f16-.\f g-. a( bes) c-. a-. f8 f\p f f f4 r bes,8 r bes r bes4 r bes8 r bes r 
c4 r c8 r c r c4 r f8 r f r f4 r f8 r f r bes,16\f bes' bes bes bes4\trill f16 bes bes bes d, bes' bes bes ees,8\p r ees r ees r ees r 
ees4 r r2 bes8 r bes r bes r bes r bes4 r r2 f'8 r f r f r f r f4 r r2 bes,4( d c f) bes,( d c f) bes,8 bes bes bes d d d d ees4 r4 r2 
r4 g, f2 f4 r4 r2 r2 r4 d' c( f, bes d) c( f, bes) r r8 g'( f4) r8 ees( d4) r8 c( bes4) r8 a( g a) bes4 d,( g g') f8 f f f f f f f f4 r r bes,~bes r ees r 
ees8 r ees r ees r g r f4 r4 r2 R1 f8 f f f f f f f \setTextCresc f, f f\< f\! f f f f \tutti bes4\f r r2 bes'2\p( f) bes,4 r4 r2 bes'2( f)~f1~f~f g4 bes\f d, e f2 r\fermata 
\tutti bes,8 d f bes d4 r8 bes, c f a c ees4 r8 c, bes bes d ees d bes16 c d8 g f8\fp( g f ees d ees d c) bes\fp( bes' a g f g f g) d4 r4 r2 r8 f-.\f f-. f-. f-. f-. f-. f-. 
bes, c16 d ees f g a bes c d a bes c d a bes bes, c d ees f g a bes c d a bes c d a bes4 bes bes, r \bar ".|." }