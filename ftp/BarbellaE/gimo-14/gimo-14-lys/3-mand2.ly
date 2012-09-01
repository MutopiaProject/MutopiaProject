\version "2.16.0"

IIIMandII =  \relative c'' {
  \clef "treble"
  \key g\major
  \time 2/4

  % end beams on quarters by default
  \set Timing.baseMoment = #(ly:make-moment 1 4)

  \repeat "volta" 2 {
  \partial 8 r8 |
  %1 page 8
  r4 r8 d |  g,[ b a b]| b c16 a b8 g | g fis e b |  c[ a' b, g'] |
  a, fis' g, b | c c' b16 a g fis |  g8[ b, b d'] |  g,[ b a c] |
  %10
   b[ d c e] | d e16 fis g8 b, | b a r d | e, c' d, b' | c, a' b, g' |
  e e' d16 c b a | g8 d g,4 |
  %17
  g'16 b g b g a g a | fis a fis a fis a fis a | g b g b g b g b |
  a e cis a cis a cis a | b d b d cis e cis e |
  %22
  d fis d fis d fis d fis | b, d b d cis e cis e |
  d fis d fis d fis d fis | g b g b g b g b | fis a fis a fis a fis a |
  %27 page 9
  g8 b a16 g fis e | d8 d' r d | b d r b | a d r d | b g' fis16 e d cis |
   d8[ fis e cis] | d fis g, a | d, fis'16 d e cis a e' |
  d8 fis16 d g,8 a | d,4 r8
  }

  \repeat "volta" 2 {
  %36 Note: Mand 1's upbeat is written together with this bar
  \set Timing.measurePosition = #(ly:make-moment -1 2)
  r4 r8 a'8 |
  %37
  d fis e g | fis e16 d cis8 b | a16 e a cis a8 fis | g e fis d |
  e c d fis | g b a16 g fis e | fis8 d r a'' | b, g' a, fis' |
  %45
  g, e' fis, d' | b g' fis16 e d cis | d8 d, d16 c! b a | g4 r8 d'' |
  g, b a c | b d r d, | g b a c | b c16 b a8 g |
  %53 page 10
  e d c cis | d d' d16 c! b a | g4 r8 d | g b a c | b c16 b b8 g |
  g fis r b, | c a' b, g' | a, fis' g, b | c c' b16 a g fis |
  %62
  g b g b g b g b | g b g b g b g b | g c g c g c g c | g b g b g b g b |
  g c g c g c g c |  b8[ b b b] |  a[ a a a] |  g[ g g g] | fis d d' d, |
  %71
  d d c c | c bes fis'! fis | fis g es es | d d'16 c! b8 g |
  g16 c g c g c g c | b g b g b g b g | c g c g c g c g |
  b g b g b g b g | a c b a d c b a | g8 g, r d'' | g, g, r d'' | e g r e |
  %83 page 11
  d8 g r d | e g r e | d g r g | a,16 c b a d c b a |
  a c b a d c b a | g a b c d d, fis d | e fis g a b b, d b |
  c d e c d e fis d | g fis e d c b a g | c4 e | d <fis' a, d,> |
  %94
  <g b, d, g,> r\fermata \bar "|."
  }
}
