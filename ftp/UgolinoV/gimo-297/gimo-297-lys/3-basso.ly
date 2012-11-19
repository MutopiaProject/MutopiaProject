\version "2.16.0"

IIIBasso =  \relative c' {
  \clef "bass"
  \key g\major
  \set Score.skipBars = ##t 

  g8 b a | g4 r8 | g c, d | g,4 r8 | g' c, d | g g, g | g4 g'8 | a a a |
  %9
  fis fis fis | g g g | d d d | g g g | d d d | g b, a |
  %15
  % NOTE: g8 r8 r8 according to one version
  g4 r8 | g d' d, |
  %17
  g4 r8^\fermata | g8 b a | g4 r8 | b c d | g,4 r8 | b8 c d | g,4 r8 | g4 r8 |
  %25
   g'16[ c,]  d8[ d,] | g g g | g' fis g | d d, d' | g fis g |
  %30 NOTE: d4. according to one version
  d4 r8 | a8 a a |
  %32
  d4 d,8 | a'8 a a | d d d | g4 g8 | a4 a,8 | a a a | d8 fis fis | g a a, |
  %40
  d e fis | g a a, | 
  %42 NOTE: a' a a, according to one version.
  g' a a, | d' cis16 b a g | fis8 g a | d, d16 d d d | d4. |

  %47
  d8 d d | d r r | fis g a | d,4 r8^\fermata |
  %51 NOTE: d d d | d4 r8 according to one version
  d d cis | b4 r8 | fis'8 g a |
  %54
  d,4 r8 | fis g a | d,4 cis8 | d4 r8 | R4.*12
  %70 Note: Written e4 g8 in both versions. Must be e4 fis8 for harmonic reasons.
  e4 fis8 | g4 g,8 | d'4 d8 | g,8 b a | g r fis' |  g16[ c,]  d8[ d,] | g8 r r | c r r |
  %78
  d r r | e r r | b r r | c r r | d r r | g r fis |  g[ d] d, | g'\f g g | d d d |
  %87
  g g g | d d d | g r r | b, c d | g,4.
}
