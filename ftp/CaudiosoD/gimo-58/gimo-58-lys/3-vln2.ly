\version "2.16.0"


IIIVlnII =  \relative c'' {
  \clef "treble"
  \key g\major
  \time 2/4

  \set Score.skipBars = ##t

  % end beams on quarters by default, but beam four eights together

  %1 page 13
  d4 \grace{e16[ fis]} g4 |
  \slashedGrace g8 fis16 e d8 r e |
  c a d, c' |
  b16 c d8 r e |
  c a d, c' |
  b16 a g8 r d' |
  %7
  b'8 b, b'4 | r8 a, a'4 | r8 b, d32 cis b8. | a32 b cis8. a,4 |
  e''32 d cis8. e32 d cis8. | d32 e fis8. r8 a, |
  %13
  b b \grace fis e4 | d r8 g' | <fis, d> fis' <g, g,> b |
  <fis' a, d,>4 r8 g | <a, fis> fis' <g, g,> b | <fis' a, d,>4 r8 d |
  %19
  d g,4 g8 | a4 fis' | g, b8 g~ | g g g fis | g2 | a4 fis' |
  g, b8 g~ | g g g fis | g b16 c b8 c | d b16 c b8 c | d e a, a |
  %30
  \slashedGrace c b a16 g \slashedGrace b8 a g16 fis | g8 b16 c b8 c | d b16 c b8 c |
  d e a, a | \slashedGrace c b a16 g \slashedGrace b8 a g16 fis | g4 <b d, g,> |
  <e c e,> <fis a, d,> | <g b, d,> r |
  %38
  r8 g,, b cis | d d b b | c c a a | b b g g | a2:8 | g4 r8 b | c2: | b: |
  a4 g | d' d'16 c b a | gis4 r | f r | e r | e gis, | a8 a'4 gis8 |
  %53
  a c, d e | a,4 a'16 g fis g | fis4 r | e r | d r | d fis | g g, | c d |
  g,2: | g: | a: | a: | a: | a: | a: | a: | d4 fis | g fis | e d | cis b |
  %73
  a r8 a' | a,2 | d | g | a4 a, | d4. fis8 |
  cis2 | d | g,~ | g4 r | cis cis | d8 fis g a |
  %85 Note: The grace notes were not in the manuscript. Added them to make vln2 and the others unison (and we conclude from bar 1 that unisonity includes grace notes)
  d4 \grace{b'16[ c]} d4 | cis32 b a8. r8 b | g d b g' |
  fis32 g a8. r8 b | g e a, g' | fis16 e d8 r fis | e a, fis' a, | e' a, a' a, |
  %93
  a' a, fis' a, | e' a, a' a, | a' a, b cis | d fis, gis a |
  a4 e8 a | fis e fis gis | a4 r |
  %100
  R2*10 |
  %110
  a4 fis' | fis r | a, fis' | e r8 a, | g4 g16 a b a | b4 e, | e r |
  g e' | e e | a, r8 g | fis g a d | d4 e~ | e d | d cis | cis? r |
  %125
  ais r | cis cis | cis r | cis r | ais r | cis cis | cis cis | b r |
  R2*6 |
  %139
  b4 b~ | b ais | b r | d \grace{e16[ fis]}
 g4 | fis16 e d8 r e | c a d, c' |
  %145 Note: The e has a dot over it, but I assume it's just a drop of ink that got there by mistake.  
  b16 c d8 r e | c a d, c' | b16 a g8 a a | bes2 | a4 as | g2 | f | g4 es |
   d8[ d']  bes[ g] | <fis' a, d,>4 <g bes, d,> |
  %155 page 28
  <fis a, d,>8 d bes g | <fis' a, d,>4 <g bes, d,> | <fis a, d,>8 d bes g |
  %158
  <fis' a, d,>4 r^\fermata | r8 g,, b cis | d4 b | c a | b b | a fis' | g b, |
  %165
  c2:8 | b: | a4 g | d' d16 c b a | b2: | c8 d b g | c d b g | c4 r8 bes |
  %173
  a4 r8 cis | d e cis a | d e cis a | d4 r | b'2 | c4 r8 g | a2~ | a4 r8 g |
  g2~ | g4 r8 fis | fis2 | g4 r8 e |
  %185
  d4 d~ | d r8 d' | e2~ | e | d~ | d | c~ | c | b4 r8 e, | d2 | R2*3
  %198
  r8 d' bes g | c a d c | bes4 es, | d fis | g g, | c d | g, fis' |
  g8 c, bes a | g4 c | d d | g, fis'! | g8 c, bes a | g4 b! | c g |
  %213 Note: The original bar 213, "c4 g", has been omitted
  a a | d8 c b c | d4 d | g r8 b! | a c fis, a | g16 a b8 r d |
  c a d, c' | b4 d | e2 | d | c | b8 b16 c b8 c | d b16 c b8 c |
  %226
  d e a, a | g b fis a | b b16 c b8 c | d b16 c b8 c | d e a, a | g b fis a |
  g4 <g' b, d,> | <e c e,> <fis a, d,> | <g b, d,> b,8 g | g,4 b8 d |
  %235 Note: One bar somewhere should be removed.
  <g' b, d,>2 \bar "|."
}

