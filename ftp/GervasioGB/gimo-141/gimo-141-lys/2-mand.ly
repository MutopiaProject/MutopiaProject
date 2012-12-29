\version "2.16.0"

IIMand =  \relative c' {
  \clef "treble"
  \time 6/8
  \key c\major

  \repeat "volta" 2 {
  %1 page 6
  c8 e g c e g | f d b r c bes | a a' g f e d | g e c r c bes |
  %5
  a a' g f e d | c g e c4 r8 | e'8 c e g e c | d b d g d b |
  %9
  c a c a' c, a | b a g b c d | e d c b a g | fis cis' d d,4. |
  %13
  r4 d'8 d e d | cis a b c d c | b4 g'8 g a g | fis d fis f g f |
  %17
  e a g fis e d | g b a g b a | g fis e d c b | e a, b c d e |
  %21
  d b g c a fis | g4. g'8 bes g | g4 fis8 f as f | f4 e!8 es g es |
  %25
  d c bes a g fis | g4. g'8 bes g |
  %27 page 7
  g4 fis8 f as f | f4 e!8 es g es | d c bes a g fis | g4. b!8 c d |
  %31
  c b a e' d c | b c d e fis g | fis e d c b a | g d d' c b a |
  %35
  b c d e d c | b c d c b a | g4. g8 b d | g b g d g d |
  %39
  b d b g b g | d g d b d b | g2. |
  }

  \repeat "volta" 2 {
  %42
  g8 b d g b d | c a fis r g f | e e' d c b a | d b g r g f |
  %46
  e e' d c b a | g d b g4. | d''8 e f f e d | d c b b a gis |
  %50
  gis f e f' e d | c e a, b d gis, | a e c a4. | c'8 d e e d c |
  %54
  c b a a g fis | fis e d e' d c | b d g, a c fis, |
  %57
  g4. r4 d'8 | f e d d e c |
  %59 page 8
  c b a e' d c | f e d c b a | gis4 e8 e' e e | fis, e' e gis, e' e |
  %63
  a, e' e b e e | c e e e, e' e | e f f f e e | e d d d c c |
  %67
  b c d c d b | a4. e'8 e e | e f f f e e | e d d d c c | b c d c d b |
  %72
  a4. r4 r8 | c, e g c e g | f d b r c bes | a a' g f e d | g e c r c bes |
  %77
  a a' g f e d | c g e c4. | bes'8 a bes d c bes | a bes c f e d |
  %81
  c bes a g f e | f4 c8 a4 r8 | c'8 b! c e d c | b c d g fis e |
  %85
  d c b a g fis | g d b g4 r8 | f'' e f a g f | e d c g' f e |
  %89
  a a, g f e d | c4. c'8 es c | c4 bes8 a des a | bes4 a8 as c as |
  %93
  g f es d c b | c4. c'8 es c | c4 b8 b! des b | b4 a8 as c as |
  %97
  g f es d c b | c4. e'!8 f g | f e d a' g f | e f g a g f |
  %101
  e d c d c b | c4. c,8 e g | e' g e c e c | g c g e g e |
  %105
  c2. \bar "|."
  }
}
