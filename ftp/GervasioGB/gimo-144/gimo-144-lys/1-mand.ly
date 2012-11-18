\version "2.16.0"

IMand =  \relative c''' {
  \clef "treble"
  \time 4/4
  \key d\major

  \repeat "volta" 2 {
  \partial 8 a8 |
  %1 page 1
  fis16 e fis g fis e fis g fis8 d a' g | 
  <fis a, d,>4 r8 d16 c b8 g' fis cis | d d, r d'16 c b8 b' a cis, |
  d,32 e fis g a b cis d d,8 r <<fis'4 \\ d>> fis16 d fis d |
  <<e4 \\ cis>> e16 cis e cis <d fis,>4 b'16 d, b' d, |
  %6
  <cis e,>4 a'16 cis, a' cis, b8 cis16 d cis8 b |
  a4 a,8 r <<fis''4 \\ d>> d16 fis a fis |
  <<e4 \\ cis>> cis16 e a e <d fis,>4 d16 gis b d, |
  <cis e,>4 cis16 e a e b8 cis16 d cis8 b |
  %10
  a16 cis e a a e cis e a, cis e a a e cis e |
  a, d fis a a fis d fis a, d fis a a fis d fis |
  %12 page 2
  d, fis a d d a fis a d, fis a d d a fis a |
  d, g b d d b g b d, g b d d b g b |
  e, gis b d d b gis b e, gis b d d b gis b |
  e cis a4 e'16 cis fis d a4 fis'16 d |
  %16
  e cis a4 e'16 cis d b cis d e cis d e |
  fis d e fis gis e fis gis a gis fis e d cis b a |
  a' gis fis e d cis b a fis' e d cis d cis b a |
  %19 Note: the stems were omitted in the chords of the following bars.
  % I assumed that :16 is the correct interpretation.
  b a gis fis e4 <<{d'16 d d d} {e, e e e_ \markup{\italic "Simi:"}}>>
    <<{b''4:16 | b: s: s: a: | a: s: s: b: | b: s: s: a: | a: a:}
    {d, | d d cis cis | cis cis d d | d d cis cis | cis cis}
    {e, | e e e e | e e e e | e e e e | e e}>> a'16 gis fis e d cis b a |
  %24
  a'16 gis fis e d cis b a fis'8 d4 cis16 b |
  e8 cis4 b16 a \slashedGrace g'!8 fis e16 d cis8 b |
  a a, r a'' f_ \markup{\italic "d."} d4 c16 b |
  %27 page 3
  e8 c4 b16 a \slashedGrace g'8 f e16 d c8 b | 
  a e'16 cis! fis!8_\f fis16 d gis8_\f gis16 e a8_\f e16 cis |
  fis8-| fis16 d gis8 gis16 e a gis fis e d cis b a |
  a' gis fis e d cis b a e e e e b' b b b |
  %31
  a4 cis,16 cis cis cis d d d d e e e e | 
  fis fis fis fis cis cis cis cis d d d d e e e e | a,2 r4 r8
  }

  \repeat "volta" 2 {
  e''8 |
  %34
  cis16 b cis d cis b cis d cis8 a e' d |
  cis4 r8 a16 g! fis8 d' cis gis | a a, r a'16 g! fis8 fis' e gis, |
  a4 r8 a d16 cis d e f e f g |
  %38
  a g a bes a g f e d cis d e f e f g |
  a g a bes a g f e d cis! d e f! e f gis |
  a8 a, r a' g16 e cis a g' e cis a |
  %41 page 4
  a' fis d a a' fis d a b' g d b b' g d b |
  a' fis d a a' fis d a g' e cis a g' e cis a |
  fis' a g fis e g fis e fis a g fis e g fis e |
  fis d e fis g e fis g a fis g a b g a b |
  %45
  a fis g a g e fis g fis d e fis e cis d e |
  d b cis d e d cis b a4 r8 <<{g' | g4_ \markup{\italic "d."} e8 g fis4 s8 fis} \\
    {e8 | e4 cis8 e d4 d8 d}>>
  %48
  e8 fis16 g b,8 cis d d, r <<{g' | g4 s f s8 f! | e f16 g} \\
    {e8 e4 e8 g d4 d8 d | cis4}>> f8 e d4 a'16 fis? a fis |
  %51
  g, b' b b e,, g' g g fis, a' a a d,, fis' fis fis |
  e, g' g g cis,, e' e e d4 a'16 f a f |
  g, bes' bes bes e,, g' g g f, a' a a d,, f' f f |
  e, g' g g cis,, e' e e d, e fis g d e fis g |
  %55 page 5
  a b cis d d,8. b'16 a b a g fis g fis e |
  fis' e fis g fis e fis g fis8 d a' g | 
  <fis a, d,>4 r8 d16 c b8 g' fis cis |
  d8 d, r d'16 c b8 b' a cis, | d d, r a' d4 f8 d |
  %60
  e16 d cis b a8 a' a4 f8 d | e16 d cis b a4 fis'16_\f a fis d a8 fis |
  fis'16_ \markup{\italic "d."} a fis d a8 fis g'16_\f b g d b8 g |
  g'16 b g d b8 g fis'16_\f a fis d a8 fis |
  %64
  fis'16 a fis d a8 fis e'16 g e cis g8 e | 
  e'16 g e cis g8 e fis16 d e fis g a b cis |
  d a b cis d e fis g a d, e fis g a b cis |
  d cis b a g fis e d a a a a e' e e e |
  %68
  d4 fis,16 fis fis fis g g g g a a a a |
  b b b b fis fis fis fis g g g g a a a a |
  d,2 r4^\fermata \bar "|."  
  }
}
