\version "2.7.29"
\include "global.ly"
\header {
title = "Concerto for Bassoon and Orchestra in B-flat major"
opus ="K. 191"
instrument = "Solo Bassoon"
composer = \markup \center-align { "Wolfgang Amadeus Mozart" \small "(1756-1791)" }  }  
tutti = \mark \markup{ \small TUTTI } 
solo = \mark \markup{ \small SOLO } 
bassoona = \relative {
\set Staff.instrument = \markup { \center-align {
       "Fagotto" "Principale" }  } 
\key bes \major
\clef bass 
\time 4/4 \set Staff.midiInstrument = "bassoon"
\globala
R1*34 \solo bes4 bes2 d8.( bes16) f4 f2 d8.( bes16) f4 ees''2 ees4 ees\trill d r4 \grace g16 f8 ees16 d 
\grace d8 c4 bes2( a4) bes16 f g a bes c d ees f f( e f) \grace g16 f8 ees16 d d(c ees c) bes2 a4 bes r4 r2 R1 R1 | 
f4 f~f16 f, a c f a, c f a c, f a c f, a c f8( e d c) c( b) b2. bes4 c,,2 g'''4~g8 e4 c g8( a bes) bes4\trill a r8 c c8.[\trill bes32 c] 
d16 bes bes bes bes4\trill f16 bes bes bes d, bes' bes bes bes, bes' bes bes bes4\trill d16 bes bes bes f' d d d 
e16 c c c c4\trill g16 c c c e, c' c c c, c' c c c4\trill e16 c c c g' e e e f4 c2( cis4) d4.( e16 f e8 d c b) 
c4.\( \grace { d32[ c b c] } d8\) f,4( e) f r4 r2 r2 c'4 \grace bes16 a8 g16 f bes4 \grace a16 g8 f16 e f8 a c4 
bes \grace a16 g8 f16 e f8 a c ees d bes, a c' bes g, f a' g e, d f' e4 d' c \grace g'16 f4 \grace e16 d4 \grace c16 bes4 
a16 bes c bes c a g f << g2 { s8\startTrillSpan s4 s16 s\stopTrillSpan } >> f8 g16 a bes c d e f c a f ees8.\trill d32 ees 
d16 e f e f fis g fis g a bes a bes cis d cis d e f e f e f e f e d c bes a g f c1 
<< { << g''1 { s8\startTrillSpan s2. s16 s\stopTrillSpan } >> \tutti f4  } \\ 
{ \override Voice.NoteHead #'font-size = #-2 <<  g,1{ \once \override Voice.TrillSpanner #'extra-offset = #'(0 . -4)  
\normalsize s8_\markup { \italic ossia }_\startTrillSpan s2. s16 s\stopTrillSpan } >>  f4 } >>   r4 r2  
R1*8 \solo f4 f'4~f8 ees( d c) c( b) b2 b4 c16 g aes g c( d ees) c-. d g, aes g d'( ees f) d-. ees4 r4 r2 
ees,4 ees'~ees8 d( c bes) bes( a) a2 a4 bes16 f g f bes( c d) bes-. c( f, g f) c'( d ees) c-. d4 r4 r d8.\trill c32 d 
ees4 c \grace bes16 a4 g\trill fis r4 r16 d-. fis-. a-. d( c) a( c) bes4 r4 r16 g-. bes-. d-. g( f) d( f) 
ees4 r4 r16 c,-. ees-. g-. c( bes) g( bes) a4 r4 r16 f-. a-. c-. f( ees) c( ees) d4 r4 r16 bes,-. d-. f-. bes( aes) f( aes) g8 g'4 ees c bes8 
\grace a16 \once \override Score.Script #'padding = #1 f'1~f~f4.\trill e16 f f,4 r4\fermata | \tutti
R1*4 \solo bes4 bes2 d8.( bes16) f4 f2 d8.( bes16) f4 ees''2 ees4 ees\trill d r4 \grace g16 f8 ees16 d 
\grace d8 c4 bes2( a4) bes16 f g a bes c d ees f f( e f) \grace g16 f8 ees16 d d( c ees c) bes2( a4) \tutti bes4 r4 r2 R1 R1 \solo 
ees,4 ees4~ees16 ees, g bes ees g, bes ees g bes, ees g bes ees, g bes ees8( d c bes) bes( a) a2.( aes4) bes,,2 f'''4~f8 d4 bes f8( g aes) 
aes4\trill g~g8 a( bes b) c16( d ees d) c2 bes8.\trill a32 bes a4 r4 r8 c c8.[\trill bes32 c] 
d16 bes bes bes bes4\trill f16 bes bes bes d, bes' bes bes bes, bes' bes bes bes4\trill d16 bes bes bes f' d d d 
ees16 c c c c4\trill a16 c c c f, c' c c c, c' c c c4\trill a16 c c c f, ees' ees ees d bes bes bes bes4\trill f16 bes bes bes d, f f f bes,4 r4 r2 
r8 ees ees ees ees f16 g aes bes c d ees f g aes bes4 r2 r8 bes,, bes bes bes c16 d ees f g a bes c d ees f4 r2 
r8 f,, f f f g16 a bes c d ees f g a bes c4 r2 d16 f e f ees d c bes a ees' d ees d c bes a 
bes16 f' e f ees d c bes a ees' d ees d c bes a bes4 f2( fis4) g( c ees g) g,4. ees'16( c) bes4( \once \override Score.Script #'padding = #1.5 a\trill) bes4 r r2 
r2 d,8-. f-. bes4 a8-. c-. ees4 \grace ees16 d8 c16 bes a8 bes a-. c-. ees4 \grace ees16 d8 c16 bes a8 bes 
g' ees, d f' ees c, bes d' c a, g bes' a f, ees g' f16 g a bes c d ees f \grace f16 ees4 \grace d16 c4 bes16 a bes c bes a bes c << c2 { s8\startTrillSpan s4 s16 s\stopTrillSpan } >> 
bes16 bes, d f bes f d' bes f'8 r aes,8.\trill g32 aes g16 a bes a bes b c bes \clef tenor c d ees d ees fis g fis 
g f ees d ees d c b c d ees d c bes a g f8 g16 a bes c d ees f g e g f g e g f8 bes f d \clef bass bes f d bes f1 
<< c'' { s8\startTrillSpan s2. s16 s16\stopTrillSpan } >> \tutti bes4 r4 r2 R1*6 r2 r4 bes 
bes2_\markup { \italic cadenza } \once \override Score.Script #'padding = #1.5 c4.(\trill bes8) \tutti bes4 r4 r2 R1*9 
\bar ".|." }