\version "2.16.0"

IIIVlnI =  \relative c'' {
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
  b'32( a  g8.) g32( fis  e8.) |
  a32( g  fis8.) fis32( e  d8.) |
  g32( fis  e8.) fis32( e  d8.) |
  cis32 b a8. a,4 |
  %11 Note: the sharp before cis32 is a flat in the manuscript
  g''32 fis e8. cis32 b a8. |
  fis'32 g a8. r8 a, |
  b g' \slashedGrace d cis8. b32 cis |
  d4 r8 b' |
  <c, d,> a' <b, d,> g' |
  %16
  <fis a, d,>4 r8 b
  <c, d,> a' <b, d,> g' |
  <fis a, d,>4 r8 d |
  g8. fis32 e d8 cis |
  c!4 a' |
  b, g' |
  %22
  a,!8. b32 c b8 a |
  %23 Note: The sharp before the cis looks exactly like a natural sign, but can't be.
  g'8. fis32 e d8 cis |
  c!4 a' |
  b, g' |
  a,8. b32 c b8 a |
  g g'16 a g8 a |
  b g16 a g8 a |
  b a16 g fis e d c |
  %30
  \slashedGrace c8 b a16 g \slashedGrace b8 a g16 fis |
  g8 g'16 a g8 a |
  b g16 a g8 a |
  b a16 g fis e d c |
  \slashedGrace c8 b a16 g \slashedGrace b8 a g16 fis |
  %35 Note: The g4 looks like a very clear a4 in the manuscript
  g4 <g' b, d,> |
  %36 Note: <a c, e,> looks just like <a c, d,> in the manuscript
  <a c, e,> <fis a, d,> |
  <g b, d,> r |
  %38
  r8 g,, b cis | d4 g~ | g fis | g g~ | g fis | g r8 g | g2:8 | g: |
  g8 fis g b | a fis fis4 | b r | a r | b8 c d c | b2 |
  %52
  c8 a4 gis8 | a e fis d | c4 fis16 g a g | a4 r | g r | a8 b c b |
  a2 | g4 g | e fis | b,2: | <d b>8 q q q | <e: cis:>2 | <e: cis:> |
  %65
  <fis: d:> | <fis: d:> | g: | <e: cis:> | d4 fis | g fis | e d |
  a' gis | a r8 a | <<cis2 \\ e,>> | <<d' \\ fis,>> | <<b \\ g>> |
  %77
  a4 g | fis4. a8 | a2 ~ | a | b2 ~ | b4 r | e, e | d8 fis g a |
  %85
  b4 \grace{b'16[ c]}
 d4 | cis32 b a8. r8 b |
  g d b g' | fis32 g a8. r8 b | g e a, g' | fis16 e d8 r fis |
  %91
  e4 a | a fis | e a | a fis | e8 a, b cis | d4 e,8 d' |
  \grace d8 cis4 e,8 cis' | b a b gis | a4 r |
  %100
  R2*10
  %110
  c!4 c | c b8 a | a16 b a b c8 c | b g a fis | g4 r |
  g8 a b b | b4 a8 g g16 a g a b8 b | b4 a8 g | a fis g e |
  %120
  fis4 r8 a | b2 | a | g4 gis | fis r | cis' r | e e | e r |
  e r | cis r | e e | e e | d r | r fis, | b gis | cis e |
  %136
  d8 cis b ais | b4 fis~ | fis8 e d cis |
  d4 e'_\f | \grace d8 cis2 | b4 r |
  %142
  d4 \grace{e16[ fis]} g4 | fis16 e d8 r e | c a d, c' |
  b32 c d8. r8 e | c a d, c' |
  %147
  b16 a g8 r d' | es g r cis, | d f r b,! | c es r a, | bes d r bes |
  es16 d c bes? a8 g | <fis' a, d,>4 <g bes, d,> | <fis a, d,>8 d bes g |
  %155
  <fis' a, d,>4 <g bes, d,> | <fis a, d,>8 d bes g |
  <fis' a, d,>4 <g bes, d,> |
  %158 page 21
  <fis a, d,>4 r^\fermata | r8 g,, b! cis | d4 g | g fis | g g ~ | g fis |
  g r8 g | g, g' g, g' | g, g' g, g'~ | g fis g b | fis4 r | g r8 g |
  %170
  g16 g g g g4:16 | g: g: | g r8 gis | a4 r8 a | a16 a a a a4: | a: a: |
  a r | d2 | e4 r8 e | e2 | d4 r8 d | d2 | c4 r8 c | c2 | b4 d8 g, |
  %185
  g4 fis8 g16 fis | g4 r8 g' | g2 | fis~ | fis | e~ | e | d~ | d4 r8 g, |
  g fis g4 | R2 | r8 d' bes g | c, a d d | bes4 r | R2 | r4 g' |
  %201
  fis! a8 c | b!4 d,8 b' | e,4 fis8 a | g4 fis | g8 c,( bes  a) |
  bes4 es | d c | bes d~ | d8 c bes a | g4 b! | c g | a c |
  %213
  d8 fis g a | g b fis a | g4 r8 e' | c a d, c' | b16 c d8 r e |
  c a d, c' |
  %219
  b32 c d8. d32 c b8. | e32 fis g8. a,32 b c8. |
  d32 e fis8. g,32 a b8. | c32 d e8. fis,32 g a8. |
  b8 g'16 a g8 a | b g16 a g8 a | b a16 g fis e d c | b8 g' c,, fis' |
  %227
  g8 g16 a g8 a | b g16 a g8 a | b a16 g fis e d c | b8 g' d, fis' |
  g,4 <g' b, d,> | <a c, e,> <fis a, d,> | <g b, d,> d8 b | g4 d8 b |
  %235
  <g'' b, d,>2 \bar "|."
}

