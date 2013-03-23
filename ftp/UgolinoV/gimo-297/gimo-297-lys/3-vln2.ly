\version "2.16.0"

IIIViolinII =  \relative c''' {
  \clef "treble"
  \key g\major

  \set Score.skipBars = ##t 
  g8 g g | g g,16 a b c | d8 e fis | g g,16 a b c |
  %5
  d8 e fis | g g, r | b'16 a g fis e d |
  %8
  c8 a' c, | a'16 g fis e d c | b8 d g | fis a, c |
  %12
  b d g | fis a, c | 
  %14 Note: Written clearly as b8 d g in the manuscript, but must be b8 d fis.
  b8 d fis | g fis16 e d c |
  %16
  \times 2/3 { b16[ a g]}  b8[ a] |
  %17
  g4 r8^\fermata | R4.*8
  %26
  r8 b\f d | g a b | a16 g fis e d8 | R4.*8 |
  %37
  a,8 a a | d fis fis | g a a, | d r r | R4.*2 |
  %43
  d'8\f cis16 b a g | fis8 g a |
  %45
  d, d16 d d d | d4 r8^\fermata |

  %47
  d'8\f d16 d d d |
  %48
  d8 d16 e fis g | a8 b cis | d d, r | R4.*7
  %58
  g,,8 b a | g r r | g r r | g r r | b c d | g g g | g g g | c, c c |
  %66
  cis a a | a a a | a a a | d d d | e4 fis8 | g4 g,8 | d'4 d8 | g b a |
  %74
  g r fis |  g16[ c,]  d8[ d] | g,8 r r | c r r | d r r | e r r | b r r |
  %81
  c r r | d r r | g r r | R4. | r8 g'\f b | a a, c | b g' b | a a, c |
  %89
  b16 g' fis e d c | b8 c d | <g b, d,>4 r8^\fermata |
}
