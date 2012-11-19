\version "2.16.0"

IBasso =  \relative c' {
  \clef "bass"
  \key g\major
  \set Score.skipBars = ##t 

   g8[ a b a] |  g[ g g g] |  g[ g g g] | c, g r4 |  g8[ g g g] |  c[ g g g'] |  c,[ c c cis] |
  %8
   d[ d d d] | d4 a' | d, r | d a | d r |  e8[ d cis b] | a4 r |  e'8[ d cis b] |
  %16
  a4 r | d a' | d, a'8 a, |  d[ d d d] |  d[ d d d] |  d[ d d d] |  g[ g g g] | c,4 d |
  %24
   e8[ e fis fis] |  g[ b, b b] | c4 d |  e8[ b c d] | g,4 r |  g'8[ a b a] |  g[ g, g' g,] |
  %31
   g'[ g g g] | c, g r4 |  g'8[ g g g] |  c,[ g]  g'[ g,] | c4. cis8 |  d[ d d d] | d4 a |
  %38
  d r | d a | d r |  a8[ b cis b] | a4 r |  a8[ b cis b] | a4 r | d a | d g8 a |
  %47
   d,[\f e fis e] |  d[ d]  cis[ cis] |  d[ fis g a] |  d,[ d d d] |  d[ d d d] |  g[ g fis d] |
  %53
  r  fis[ g a] | d,4 r |

  %55
   d8[\f e fis e] |  d[ e fis e] |  d[ d d d] |  g[ d]  d[ d] | r g  a[ a,] | d d, d4 |
  %61
  R2*9
  %70
  r8 d' d,4 | d' e |  fis8[ fis e e] |  d[ d d d] |  g[ g g g] |  d[ e fis fis,] |
  %76
  b4 e8 e |  d[ d d d] |  cis[ cis cis cis] | b4 r | r8  dis[ dis dis] |
  %81
   e[ ais, ais ais] | b4 ais | b r | r8  d[ e fis] | b,4  d16[ c! b a] |
  %86
   g8[ a b a] | g g' g,4 |  g'8[ g g g] | c, g r4 | g'8 g g b, | c4 d |
  %92
   g,8[ g g b] | c4 d |  g8[ g fis fis] |  g[ g g g] |  g,[ g g g] |  g[ g b b] |  c[ c c c] |
  %99
   c[ c c c] |  b[ b b b] |  b[ b b g] |  d'[ d d d] |  d[ d d d] | g4 g | fis e | d c |
  %107
  b a |  g8[ a b a] |  g[ a b c] | d4 d, |  g8[ g' fis d] | g e fis4 | g8 e fis4 |
  %114
  g8 c, d d, | g4 fis |  g8[ a b c] | d4 d, |  g'8[ a b a] |  g[ g fis fis] |
  %120
   g[ g fis fis] |  g[ g g g ] |  g[ g fis fis] |  g[ g fis fis] |  g[ b, c d] |
  %125
   e[ b c d] | g,4 r^\fermata
}
