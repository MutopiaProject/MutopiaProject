\version "2.16.0"

IIIMandI =  \relative c'' {
  \clef "treble"
  \key g\major
  \time 2/4

  % end beams on quarters by default
  \set Timing.baseMoment = #(ly:make-moment 1 4)

  \repeat "volta" 2 {
  \partial 8 d8 |
  %1 page 8
   g,[ b a c] |  b[ d c e] | d e16 fis g8 b, | b^\trill a r d |
  e, c' d, b' |  c,[ a' b, g'] | e e' d16 c b a | g8 d g,4 | r r8 d' |
  %10
   g[ b a c] | b c16 a b8 g |  g[ fis d b] | c a b g | a fis' g, b |
  c c' b16 a g fis | g8 b, g4 | b'8 g' r cis, | d d, r d' |
  %19
  a' g16 fis e8 d | cis a r a | gis a e g | fis d' r a | gis a e g |
  fis d' r d | b d r b | a d r a' |
  %27 page 9
  b, g' fis16 e d cis | d a fis a fis a fis a | g b g b g b g b |
  fis a fis a fis a fis a | g8 b a16 g fis e |
  %32
  d8 a''16 fis g e a, g' | fis8 a16 fis g e d cis |
  d8 a'16 fis g e a, g' | fis8 a16 fis g e d cis | d8 d, r
  }

  \repeat "volta" 2 {
  %Note: Upbeat in mand 1 is written above mand 2's first beat, probably they are out of sync.
  \set Timing.measurePosition = #(ly:make-moment -1 2)
  s s s a''8 |
  %37
   d,[ fis e g] |  fis[ a g b] | a g16 fis e8 d | cis a r a' |
   b,[ g' a, fis'] | g, e' fis, d' | b g' fis16 e d cis | d8 d, r fis |
  %45
   g[ e fis d] |  e[ cis d fis] | g b a16 g fis e | fis8 d r d' |
   g,[ b a c] | b d r d | g, b a c | b d r d |
  %53 page 10
  d8 e16 d c8 b |  c[ b a g] | d' d, r d' |  g,[ b a c] |  b[ d c e] |
  d e16 fis g8 b, | b a r d | e, c' d, b' | c, a' b, g'' |
  %62
  a, e' d16 c b a | g8 g, r fis''! | fis d r f | e c r e |
  d b r f'? | e16 d c8 r e |  d[ fis! g d] |  c[ fis g c,] |  b[ fis' g b,] |
  %71
  a d, r d' | d es r fis! | fis g r a | a bes r cis, | d d, r d' |
  e! g r e | d g r d | e g r e | d g r g | a,16 e' d c b a g fis |
  g8 g, g'16 b g b | g8 g, g'16 b g b |
  %83 page 11
  g c g c g c g c | g b g b g b g b | g c g c g c g c |
  g b g b g b g b | a e' d c b a g fis | g a b c d d, fis d |
  e fis g a b b, d b | c d e c d e fis d | g fis e d c b a g |
  %92
  c4 e | d <fis' a, d,> | <g b, d, g,> r\fermata \bar "|."
  }
}
