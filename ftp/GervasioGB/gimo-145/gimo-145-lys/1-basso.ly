\version "2.16.0"

IBasso =  \relative c {
  \clef "bass"
  \time 4/4
  \key g\major

  \repeat "volta" 2 {
  \partial 8 r8
  g g' d b g4 r | g8 g' d b g4 r |
  %3
  r8 g'16 a b8 g d d d d | r8 g16 a b8 g d d d d |
  g, g' g, g' g, g' g, g' | g, g' g, g' g, g' g, g' |
  %7
  g, g' g, g' a, a' a, a' | a, a' a, a' a, a' a, a' |
  a, a' a, a' a, a' a, a' | a, a' a, a' b,4 g' |
  %11
  a,8 fis' e d cis e d cis | \time 2/4 d fis e d |
  \time 4/4 cis e d cis r d g a | r d, g a d, g a a, |
  %15
  r b g a b fis' g a | d, d' d,4 r8 d f bes |
  r a \grace g c a r bes a g | r f e d r d f! bes | r a cis a d,4 g |
  %20
  r8 a, a' a, a a a a | 
    % NOTE: c! c c c according to one edition
    d4 r cis8 cis cis cis |
  d8.(  fis16) g8.(  a16) d, fis a d d, fis a d |
  %23
  a, cis e a a, cis e a d, fis a d d, fis a d |
  r4  g,8[ a]  d,[ e]  fis[ g] |  a[ b]  g[ a]  d,[ fis g a] | d,4 r8 s2
  }

  \repeat "volta" 2 {
  r8
  %27
  d d' a fis d4 r | d8 d' a fis d4 r | r8 d16 e fis8 d a a a a | 
  %30
  r8 d16 e fis8 d a a a a | d4 d16 c b a g8 g' g, g' |
  g,4 r g8 g' g, g' | g,4 r r8 g'16 a b8 g | c, c d d r g16 a b8 g |
  %35
  c, c d d g g g g | b,2 c4 r | c8 g' e c b2 |
  r8 c c c cis2 | d4 r d'8 a fis d | cis2 d8 d' d,4 |
  %41
  r8 bes' c a r a bes g | r c, d d, g g' g,4 | 
  r8 bes' c a r a bes g | r c, d d, g g' fis d |
  %45
  r b' a g r a g fis | g8.(  b,16) c8 d g, b c d |
  g, a b c d e c d | e b c d g,4 r |
  %49
  d'16 fis a d d, fis a d g,, b d g g, b d g | c,8 c c d g,16 b d g g, b d g |
  d16 fis a d d, fis a d g,, b d g g, b d g | c,8 c c d g fis16 e d c b a |
  %53
  g8 b c d g b, c d | g,4 r r2 \bar "|."
  }
}
