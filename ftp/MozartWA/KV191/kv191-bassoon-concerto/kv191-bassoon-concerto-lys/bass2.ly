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
bassb =  \relative {
\set Staff.instrument = \markup {
       \center-align { "Violoncello e"
                 \line { "Contrabasso"  } } }  
\key f \major
\clef bass 
\time 2/2 \set Staff.midiInstrument = "cello"
\globalb
f,8\p r f r g r c, r f r a, r bes r c r f2~f8 r f, r f' r f, r d' r d r 
c r c r c r c r c'4(\p cis d e,) \solo f8 r f r g r c, r f r a, r bes r c( cis) 
d r e r f r r4 a,8.[( bes16]) c8 c f fis(\f g e) f\p r f r f r e r b r b( c) g4 r 
g'8 r g, r c r c' r g r g, r c r c' r f, r f r c r c r g' r g, r c r f r 
g r f r e r f r g r f r e r e r f r fis r g r g r g, r g r  c\f r g' r 
a r f r g r g, r c4 gis'(\p a bes)  ees,8  r ees r d r d r d r d r g, r g' r 
c, r c r c r c r c4 r c'8[( cis d e,])  f r f r g r c, r  f r f r g r c, r 
f r a, r bes r c r f2~f8 r f r f r f r c r c( cis) d r e r f r r4 
a,8.[( bes16]) c8 c f fis(\f g e) f\p r f r f r e r d r d r d r c r bes r bes r bes r a r 
e' r e f c4 r c'8 r c, r f, r f' r c' r c, r f, r f' r bes r bes r f r f r 
c r c r f r f, r c' r c r f r bes, r c r bes r a r bes r c r bes r a r a r 
bes r b r c r bes r a r a' r bes r r4 c8 r c r c, r c r f4\f bes, a d 
c r r2^\fermata f4\f c' f, c f cis'(\p d e,) f8 r f, r f r r4 \bar ".|."

}