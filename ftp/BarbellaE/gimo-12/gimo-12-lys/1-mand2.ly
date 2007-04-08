\version "1.6.0"

Theme = \notes \relative c'' {
  c,8 c' c, c' |
  c, c' c, c' |
  g, g' g, g' |
  c, c' c, c' |
  c, c' c, c' |
  c, c' c, c' |
  g, g' g, g' |
  c,4
}

IMandII = \notes \relative c'' {
  \clef "treble"
  \key c\major
  \time 2/4
  
  \repeat "volta" 2 {
  \partial 8 c8 | \Theme
  %8
  r4 |
  }

  \repeat "volta" 2 {
  g16 a b c d b a g |
  c d e f g e d c |
  g a b c d b a g |
  %12  
  c d e f g a b c |
  g, a b c d b a g |
  c d e f g e d c |
  g a b c d b a g |
  %16
  c4 r8
  }
  \repeat "volta" 2 {
  c'8 |
  \Theme
  %24
  r4 |
  }
  \repeat "volta" 2 {
  c16 d es f g es d c |
  g a b c d b a g |
  c16 d es? f g es d c |
  %28
  b a b g g' f es d |
  c16 d es f g es d c |
  g a b c d b a g |
  c16 d es f g es d c |
  %32
  g2 |
  }
  \repeat "volta" 2 {
  b'16 g' b, g' b, g' d g |
  <g2 d \\ b> | <g2 es \\ c> | 
  %36
  <g2 d \\ b> | <g2 es \\ c> | <g2 es \\ c>
  c,16 g' es g c,4 
  %40
  <{b!2 | c4 c | c b!} \\ {f2 | es4 f | g g}> | c2 |
  %44
  <{b!2 | c | c4 b!} \\ {f2 | es4 f | g g}> |
  c r8  
  }
  \repeat "volta" 2 {
  c8 |
  %48
  \Theme r8
  }
  \repeat "volta" 2 {
  r8 |
  %56
  <{es8 es es es | g g g g | g g g g |
  es es es es | es es es es | g g g g} \\
  {c,2 | g | g | c | c | g}> |
  as,2 | g4 r4 |
  }
  \repeat "volta" 2 {
  %64
  e'16 c' g c e, c' g c |
  <c2 \\ f, \\ as> | <c \\ e, \\ g!> | <c \\ f, \\ as> |
  %68
  <b \\ d, \\ f> | <b \\ es, \\ g> | <bes \\ des, \\ f> | <bes \\ e, \\ g> |
  %72
  c,16 b c d es d es c |
  g a b c d b a g |
  c d es f g es d c |
  b g b g g' f es d |
  %76
  c b c d es d es c |
  g a b c d b a g |
  c d es f g es d c |
  g2 |
  }

  \repeat "volta" 2 {
  %80
  <{b'!2 | c4 c | c b!} \\ {f2 | es4 f f2}> | 
  c,2 |
  %84
  <{b'!2 | c2 | c4 b!} \\ {f2 | es4 f | g2}>
  c4 r8 c8 |
  %88
  \Theme 
  %page 5
  e'16 c e c |
  %96
  d8 b d16 b d b |
  c8 e, e16 c' e, c' |
  d, c' d, c' d, b' d, b' |
  c4 e,16 c e c |
  %100
  d8 b d16 b d b |
  c8 c e16 c' e, c' |
  d, c' d, c' d, b' d, b' |
  c c e c g'8 g, |
  %104
  [c16 c e c] g'8 g, |
  <{[c c] [c c]} \\ e,2 g,> |
  <c4 e, g,> r4^\fermata \bar "|."
  }
}
