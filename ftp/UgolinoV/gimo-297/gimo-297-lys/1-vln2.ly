\version "2.16.0"

IViolinII =  \relative c'' {
  \clef "treble"
  \key g\major

  \set Score.skipBars = ##t
  b4 b | b r8 g16 a | b8 b b b | c b r g16 a | b8 b b b | c b r b |
  %7
  c b a g | g fis r4 | fis'8 e16 d e8 d16 cis | d4 r |
  %11
  fis8 e16 d e8 d16 cis | \grace cis?8 d4 r | e4 e | e r | e e | e r |
  %17
  fis8 e16 d e8 d16 cis | a'8 g16 fis g8 fis16 e |
  %19 
  \grace e8 fis4 r16 a, b cis | d e fis g a fis e d |
  %21
  a' g fis e d a' d, c! | \grace c8 b4 r8 d |
  %23
  e16 c b c fis a g fis | g8 fis16 e d8 c | b32 c d8. \grace a8 g4 |
  %26
  a32 b c8. \grace g8 fis4 |  g8[ b, c d] | g,4 r^\fermata | 
  %29
  R2*7 |
  %36
  r8 d'16 d fis fis a a | d4 r | R2 | d,4 a | d r | a'8 b cis b | a4 r |
  %43
  a,8 b cis b | a4 r | d a | d g,8 a | d'4\f d |
  %48
  d8 cis16 b a g fis e | fis8 e16 d e8 d16 cis | d8 e16 fis g a b cis |
  %51
  d16 e fis g a fis e d | b8 b' a16 g fis e |
  %53
  d cis d a \grace fis'8 e4 | d r |

  %55
  R2*6 | r8  fis,[ fis fis] | r  e[ e e] |  d[ d d d] |  a[ a a a] |  a[ a a a] |  a[ a a a] |
  %67
   d[ d d d] |  cis[ a' a a] |  d,[ d cis cis] | d fis16 a d4 | d, e |  fis8[ fis fis fis] |
  %73
   fis[ fis fis fis] |  b[ b b b] |  d,[ e fis fis] | b, b''\f g fis16 e | fis8 b fis e16 d |
  %78
  e8 cis'? e, d16 cis! | d b cis d e fis gis ais | b8 a4 g16 fis | g8 fis4 e8 |
  %82
  d cis16 d e8 cis! | d b' ais16 g! fis e |
  %84 
  d8 cis16 b cis4 | b4 d,16 c! b a | g4 r | R2*8 |
  %95
  r8  b'[\p g b] | r  b[ g b] | r  d[ b g] | r  e'[ c e] | r  e[ c e] | r  d[ b d] | r  d[ b d] |
  %102
  r  fis,[ d fis] | r  fis[ d fis] | g4 r | R2*6 |
  %111
  r8  g[ fis d] | g e fis4 | g8 e fis4 |  g8[ c, d d] | g,4 r | R2*2 |
  %118
  r4 d''\f | g16 b a g a8 c, | b16 b' a g a8 c, |  b8[ g b d] |
  %122
  g fis16 e d c b a | g'8 fis16 e d c b a | b8 a16 g a8 g16 fis |
  %125
   g8[ b c d] | <g b, d,>4 r^\fermata
}
