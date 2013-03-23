\version "2.16.0"

IIIMand =  \relative c'' {
  \clef "treble"
  \key g\major
  \time 2/4

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
  a,8. b32 c b8 a |
  g'8. fis32 e d8 cis |
  c!4 a' |
  b, g' |
  a,8.( b32  c) b8 a |
  g g'16 a g8 a |
  b g16 a g8 a |
  b a16 g fis e d c |
  %30
  \slashedGrace c8 b a16 g \slashedGrace b8 a g16 fis |
  g8 g'16 a g8 a |
  b g16 a g8 a |
  b a16 g fis e d c |
  \slashedGrace c8 b a16 g \slashedGrace b8 a g16 fis |
  g4 <g' b, d,> |
  <a c, e,> <fis a, d,> |
  <g b, d,> r |
  d g |
  %39
  fis8 d d, d' |
  e c c, e' |
  d b g, d'' |
  c a a, c' |
  b g g,4 |
  %45
  e''8 g r e | d g r d | c a' b, g' | fis d d,4 |
  d'8 e f e | d c b a | gis a b a | gis f e d |
  %53
  <a' e c>4 b8 d | c a b gis | a4 a, |
  c'8 d e d | c b a g | fis g a g | fis e d c |
  %60
  b4 b'8 d c a d, fis | g4 b8 d |
  g,,4 b'8 d | g,,4 cis'8 e | a,,4 cis'8 e |
  <a, a,>4 d8 fis | d,4 d'8 fis | e4 cis8 e | a,4 e'8 g |
  %69
  fis4 a16-. a( g  fis) | b-. b( a  g) a-. a( g  fis) |
  g-. g( fis  e) fis-. fis( e  d) | e-. e( d  cis) d-. d( cis  b) |
  cis16 b a8 a,4 |
  %74
  g''8 e cis a | fis' d a c! | b e fis g | fis a a, cis | d4 d, |
  g'8 e cis a | fis' d a c! | b cis d dis | e fis g a |
  b4 a16 g fis e | fis8 d a, cis' |
  %85
  d4 \grace{b'16[ c]} d4 | cis32 b a8. r8 b |
  g e a, g' | fis32 g a8. r8 b | g e a, g' | fis16 e d8 r fis |
  %91
  e4 a | a fis | e a | a fis | e8 a, b cis | d4 e,8 d' |
  \grace d8 cis4 e,8 cis' | b a b gis | a4 r |
  %100
  d d' | cis8 a a, a' | b g g,, b'' | a fis d, a'' |
  g e a, g' | fis d d, a' | b d r b | a d r a |
  %108
  g e' fis, d' | fis,4 e | fis'8 g a a | a4 g8 fis |
  fis16 g fis g a8 a | g e fis dis | e4 r |
  %115
  e8 fis g g | g4 fis8 e | e16 fis e fis g8 g | g4 fis8 e |
  fis d e cis | d4 r8 fis |
  %121
  b16 a g fis e8 g | a16 g fis e d8 fis | g16 fis e d cis8 b |
  ais fis ais cis | e ais, cis e |
  %127
  \grace a8 g4 fis8 e | \grace a8 g4 fis8 e | ais, fis ais cis |
  e ais, cis e | \grace a8 g4 fis8 e | \grace a g4 fis8 e |
  %132
  d b cis ais | b4 d | e eis | fis g | fis8 e d cis |
  d4 \grace{cis16[ d]} e4 | d8 cis b ais | b4 g | e fis | b, r |
  %142
  d'4 \grace{e16[ fis]} g4 | fis16 e d8 r e | c a d, c' |
  b32 c d8. r8 e | c a d, c' |
  %147 page 14
  b16 a g8 r d' | es g r cis, | d f r b,! | c es r a, | bes d r bes |
  es16 d c bes? a8 g | <fis' a, d,>4 <g bes, d,> | <fis a, d,>8 d bes g |
  %155
  <fis' a, d,>4 <g bes, d,> | <fis a, d,>8 d bes g |
  <fis' a, d,>4 <g bes, d,> | <fis a, d,>4 r^\fermata |
  %159
  d \grace{e16[ fis]} g4 |  fis16[ e d8]  d,[ d'] | e c c, e' |
  d b g, d'' | c a d, c' | b g g, d'' | e g r e | d g r d |
  %167
  c a' b, g' | a,4 r | d16 c b a g8 f' | e f r d | e f r d |
  e16 d c b c8 r | e16 d cis b a8 g' |
  %174
  fis!8 g r e | fis g r e | fis16 e d8 r d | g16 d c b d8 f |
  e16 g fis! e e8 e | a c16 b c8 e, | d16 fis e d d8 d | g8 b16 a b8 d, |
  %182
  c16 e d c c8 c | fis8 a16 g a8 c, | b d g b, | b4 a | g'8 d b g |
  e'16 g fis e e g fis e | a b c b a g fis e |
  d fis e d d fis e d | g a b a g fis e d |
  %191
  c e d c c e d c | fis g a g fis e d c |
  b d e fis g8 b, | b a r d | es c fis! d | g g, r d' |
  es c fis! d | g g, r d' | es c r fis | g8. f32 es d8 cis |
  %201
  d4 c!8 a' | a4 b,!8 g' | a, e' d fis, |
  g bes a c | bes es d fis,! | g bes a c | bes g a fis! |
  g bes a c | bes es d fis,! | g4 g'16 fis e! d | e4 e16 d c b |
  %212
  c4 c16 b a g | fis8 d' g16 e d c | b8 g' d, fis' | <g b, d,>4 r8 e |
  c a d, c' | b16 c d8 r e | c a d, c' |
  %219
  b32(  c) d8. d32(  c) b8. | e32(  fis) g8. a,32(  b) c8. |
  d32 e fis8. g,32 a b8. | c32 d e8. fis,32 g a8. |
  b8 g'16 a g8 a | b g16 a g8 a | b a16 g fis e d c | b8 g' c,, fis' |
  %227
  g8 g16 a g8 a | b g16 a g8 a | b a16 g fis e d c | b8 g' d, fis' |
  g,4 <g' b, d,> | <a c, e,> <fis a, d,> | <g b, d,> d8 b | g4 d8 b |
  %235
  <g'' b, d, g,>2 \bar "|."
}
