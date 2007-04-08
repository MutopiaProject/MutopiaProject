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
bassc = \relative {
\set Staff.instrument = \markup {
       \center-align { "Violoncello e"
                 \line { "Contrabasso"  } } }  
\key bes \major
\clef bass 
\time 3/4 \set Staff.midiInstrument = "cello"
\globalc \override TupletBracket #'transparent = ##t
bes4\f d bes c g( a) bes g ees f f ees d d' bes c g( a) bes f f, bes f' bes \bar":|" 
f f f f f f bes bes bes bes bes bes 
bes d bes c g( a) bes g ees f f ees d d' bes c g( a) bes f f, bes f' bes \solo 
bes\p d bes c f, a bes ees, e f r \times 2/3 { ees8 d c } bes4 d' bes c f, a bes ees, f \times 2/3 { bes8[ f ees] } \times 2/3 { d[ ees f] } bes,4 
bes' r bes a r a g r e f c'8 bes( a) g( f4) a f g e c f a f g e c 
f8 r a r a, r bes2. a8.( bes16) c4( bes) a8 r a' r a, r bes2. r4 r r8 r16 bes a8.( bes16) c4 c f~f8. g16 g8.(\trill f32 g) 
aes4\p r aes( g) r b( c) r ges( f) r a( bes2 ees,4) f f, f' \tutti 
bes4\f d bes c g( a) bes g ees f f ees d d' bes c g( a) bes f f, bes f' bes \solo 
g8\p g g g g g a\fp a a a a a bes bes bes bes bes bes c\fp c c c c c bes4( a g) fis( ees d) c d d g, g' g, 
aes'( f d) ees r r bes'( g e) f r r c'( a fis) g r r 
g8 g g g g g a\fp a a a a a bes bes bes bes bes bes c\fp c c c c c bes4( a g) fis( ees d) c d d g, g' g, \tutti
bes'4\f d bes c g( a) bes g ees f f ees d d' bes c g( a) bes f f, bes f' bes \solo 
bes\p d bes c a f bes ees, ees f f, f'16( ees d c) bes4 d' bes c a f bes ees, f bes8 a16 g f ees d c bes4 
bes bes' d, ees r r e c' e, f r r f r r f, r r f' r r f, r r f' r r f, r r^\fermata 
bes' d bes c a f bes g ees f f ees d d' bes c a f bes d, f bes bes, r 
f' f f f f f bes bes bes bes bes bes 
bes d bes c a f bes g ees f f ees d d' bes c a f bes f f, bes d' bes c a f bes d bes c a f 
bes8 r d, r d r ees2. f8 f f f ees ees d r d r d r ees2. R2. f8 f f f f f f, \setTextCresc f\< f\! f f f \tutti 
bes'4\f d bes c g( a) bes g ees f f ees d d' bes c g( a) bes f f, 
d'8 d d d d d ees ees f f ees ees d d d d d d ees ees f f f, f bes bes d bes d f bes4 bes, r  \bar ".|." }