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
bassoonc = \relative {
\set Staff.instrument = \markup { \center-align {
       "Fagotto" "Principale" }  } 
\key bes \major
\clef bass 
\time 3/4 \set Staff.midiInstrument = "bassoon"
#(override-auto-beam-setting '(end * * 3 4) 1 4 'Score)
#(override-auto-beam-setting '(end * * 3 4) 2 4 'Score)
\globalc 
R2.*20 \bar ":|"  \solo \set tupletSpannerDuration = #(ly:make-moment 1 4) 
\times 2/3 { bes8 f d bes d f bes d f \override TupletNumber #'transparent = ##t  ees c bes a c g f c' ees, d bes' a g ees' d c d bes a bes c bes a g } f4 
\times 2/3 { bes8 f d bes d f bes d f ees c bes a c g f c' ees, d bes' f } << c'2 { s16\startTrillSpan s4. s16\stopTrillSpan } >> bes4 r r 
bes16 f g a bes c d e f8 f f c c2 bes16 c bes a g a g f e8 bes' \grace bes8 \once \override Script #'padding = #1.5 a4\trill g r c2.~c~c~c~
c8 d16 e f e d c bes a g f g fis g a bes a bes c d8 r16 d c8.( d16) f,4( e) c'8 d16 e f e d c bes a g f g fis g a bes a bes c d8 r g,16 fis g a bes a bes c d8 r16 d 
c8.( d16) f,4( e) e( f) r \times 2/3 { \revert TupletNumber #'transparent f8 f' f f g f ees d c \override TupletNumber #'transparent = ##t b g g g aes g f ees d 
c ees' ees ees f ees d c bes a f f f g f ees d c bes d f bes d f g ees c } bes2( a4) \tutti 
R2.*8 \solo 
d4 \grace c16 bes4 \grace a16 g4 fis16( a c ees) ees2 d4 \grace c16 bes4 \grace a16 g4 fis16( a c ees) ees2 
d8([ g) g( fis]) r ees ees[( d) d( c]) r bes bes[( a) a( g) g( fis]) fis2( g4) 
bes2.~bes8[ a( bes a bes b]) c2.~c8[ b( c b c cis]) d2.~d8[ cis( d cis d cis]) 
d4 \grace c16 bes4 \grace a16 g4 fis16( a c ees) ees2 d4 \grace c16 bes4 \grace a16 g4 fis16( a c ees) ees2 
d8([ g) g( fis]) r ees ees[( d) d( c]) r bes bes[( a) a( g) g( fis]) fis2( g4) \tutti 
R2.*8 \solo
bes16 a bes c d c d ees f4 ees16 f ees d c d c bes a4 bes16 c bes a g8 c16 d ees d c bes a bes c bes a bes a g f4 
bes16 a bes c d c d ees f4 ees16 f ees d c d c bes a8 a bes8.( c16) << c2 { s16\startTrillSpan s4. s16\stopTrillSpan } >> bes4 r r 
\times 2/3 { \revert TupletNumber #'transparent bes,8 bes' bes bes c bes aes g aes \override TupletNumber #'transparent = ##t g bes g ees bes g } ees4 
\times 2/3 { c' 8 c' c c d c bes a bes a c a f c a } f4 \revert TupletBracket #'transparent 
c''( des bes) \times 2/3 { a8( c f) } f2 c4( des bes) \times 2/3 { a8( c f) } f2 c4( des bes) g'4.\trill e16 f f,4\fermata 
bes2 c8( d) f( ees) ees2 d8( f) bes,( d) g,( c) bes[( a g f g a]) bes2 c8( d) f( ees) ees2 d8.( ees32 f) bes,4 a bes r r 
c2 d8( bes) d( ees) ees2 d ees8( c) e( f) f2 bes,,8[ bes' bes, d' bes, f''] ees c16 d ees8[ c a f] bes,[ d' g,, bes' ees,, c''] f,, c''16 bes a8[ c f, a] 
bes,[ bes' bes, d' bes, f''] ees c16 d ees8[ c a f] d'8.( ees32 f) bes,4( a) 
f'2.~f~f~f f16 ees d ees f ees d c bes a g f g8 a16 b c b c d ees8 r f,4 << c'2 { s16\startTrillSpan s4. s16\stopTrillSpan } >> 
f16 ees d ees f ees d c bes a g f g8 a16 b c b c d ees8 r g,8 a16 b c b c d ees8 r f,2. << c'2. { s16\startTrillSpan s2 s8 s16\stopTrillSpan } >> \tutti 
<< { \small bes2 c8( d) f( ees) ees2 d8([ f) \once \override Slur #'extra-offset = #'(0 . 1.2) 
bes,( d]) g,( c) bes[( a g f g a]) bes2 c8( d) f( ees) ees2 d8.( ees32 f) bes,4 a bes2. } \\ 
{ \normalsize bes4 r d,\rest R2.*7 } >> R2.*5 \bar ".|." }