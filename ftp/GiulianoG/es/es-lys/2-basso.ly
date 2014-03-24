\version "2.18.0"

IIBasso =  \relative c {
  \clef "bass"
  \key c\minor
  \time 4/4

  \repeat "volta" 2 {
  \partial 8 r8 |
  %1 page 5
  r c es c r g b g |
  r g b b c c' c,4 |
  es b c es8 c |
  f4. fis8 g4 as! |
  %5
  g fis g8 d g,4 |
  r8 es' es,4 r8 es' es,4 |
  g' g as as |
  bes bes, g' d |
  es g as as |
  %10
\octaveCheck as
  bes8 bes bes, bes g'4 es8 c |
  bes bes bes bes es g bes g |
  c, c c c r f as bes |
  d,[ bes] c[ c,] f[ f'] f,4 |
  bes8 bes bes bes es es g as |
  es a, bes bes es, es' es,4 |
  %16 page 6
  \octaveCheck es,
  f'8 f f fis g g g,4 |
  b b c es8 c |
  f f f fis g d g,4 |
  b4. g8 c es g c |
  %20
  c, c e4 f8 f d4 |
  es8 es c4 d8 d b4 |
  c8 c as'4 g8 g g,4 |
  es' es8 es b8[ c] f[ g] |
  es r es es b[ c] f[ g] |
  %25
  \octaveCheck g
  c,4_\fermata r8
  }
}
