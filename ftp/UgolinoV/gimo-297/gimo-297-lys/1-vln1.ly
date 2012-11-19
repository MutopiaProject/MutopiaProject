\version "2.16.0"

IViolinI =  \relative c'' {
  \clef "treble"
  \key g\major
  \set Score.skipBars = ##t

  d4 d | d r8 b16 c |
  d8 d d g | e d r b16 c | d8 d d g |
  %6
  e d r d | e d c b | b a r4 |
  %9
  a'8 g16 fis g8 fis16 e | fis8 d cis d | a' g16 fis g8 fis16 e |
  %12
  fis8 d cis d | g4 g |  g8[ fis16 e]  d[ cis b a] |
  %15
  g'4 g |  g8[ fis16 e]  d[ cis b a] |
  %17
  a'8 g16 fis g8 fis16 e | fis8 e16 d e8 d16 cis | d4 r16 a b cis |
  %20
  d e fis g a fis e d | a' g fis e d a' d, c! | \grace c8 b4 r8 d |
  %23
  e16 c b c fis a g fis | g8. fis32 e d8 c | b32 c d8. \grace a8 g4 |
  %26
  a32 b c8. \grace g8 fis4 | g8 b, c d | g,4 r^\fermata | 
  %29
  R2*7 |
  %36
  r8 d'16 d fis fis a a | d4 r | R2 | d,4 a | d r | cis8 d e d | cis4 r |
  %43
  cis8 d e d | cis4 r | d a | d g,8 a | d'4\f d |
  %48
  d8 cis16 b a g fis e | fis8 e16 d e8 d16 cis | d8 e16 fis g a b cis |
  %51
  d16 e fis g a fis e d | b8 b' a16 g fis e | d cis d a e'4\trill | d r |

  %55
  R2*6 | r8  fis,[ fis fis] |  e[ e e e] |  d[ d d d] |  a[ a a a] |  a[ a a a] |  a[ a a a] |
  %67
   d[ d d d] |  cis[ a a a] |  d[ d cis cis] | d fis16 a d4 | d, e |  fis8[ ais ais ais] |
  %73
   b[ b b b] |  b[ b b b] |  d,[ e fis fis] | b, b''\f g fis16 e | fis8 b fis e16 d |
  %78
  e8 cis'? e, d16 cis! | d b cis d e fis gis ais | b8 a!4 g16 fis | g8 fis4 e8 |
  %82
  d cis16 d e8 cis! | d b' ais16 g! fis e |
  %84 
  d8 cis16 b \grace d8 cis4 | b4 d,16 c! b a | g4 r | R2*8 |
  %95
  r8  d''[\p b d] | r  d[ b d] | r  b[ d b] | r  g'[ e g] | r  g[ e g] | r  g[ d g] | r  g[ d g] |
  %102
  r  a,[ fis a] | r  a[ fis a] | b4 r | R2*6 |
  %111
  r8  g[ fis d] | g e fis4 | g8 e fis4 |  g8[ c, d d] | g,4 r | R2*2 |
  %118
  r4 d''\f | g16 b a g a8 c, | b16 b' a g a8 c, |  b8[ g b d] |
  %122
  g fis16 e d c b a | g'8 fis16 e d c b a | b8 a16 g a8 g16 fis |
  %125
   g8[ b c d] | <g b, d,>4 r
}
