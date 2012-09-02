\version "2.16.0"

IMandII =  \relative c'' {
  \clef "treble"
  \time 2/4
  \key g\major

  %page 2
  \repeat "volta" 2 {
  \partial 8 b8 | b4 d16 c b a |  b8[ g b d] | b4 d16 c b a |  b8[ g b d] |
  %5
  b a16 b c8 a | g16 a b8 r b | g g a4 | r8  d[ g, d'] | b4 a8 g | g fis r fis |
  %11
   g[ g g fis] | d4 r8 fis |  g[ g g fis] | d4 r8 d' |
  %15 page 3
  e16 d c b e d c b | a8 fis' e d | cis e d cis | d fis e d | cis e d cis |
  %20
  d16 cis d e fis8 e | d16 cis? d e fis8 e | d a4 e8 | fis8 d16 d fis fis a a |
  %24
  fis8 fis16 fis a a d, d | fis4 r8
  }

  \repeat "volta" 2 {
  fis8
  %26
  fis4 a16 g fis e |  fis8[ d fis a] |
  %28 page 4
  fis4 a16 g fis e |  fis8[ d fis a] | fis e16 fis g8 e | d16 e fis8 r fis |
  %32
  fis4 a8 a | d, b'4 b8 | fis4 a8 a | d,8 b'4 b8 | d c16 b a8 g | g fis r g |
  %38
   g[ es' c es] | r  fis[ d fis] | r  b,[ g b] | a16 g fis g a g fis e |
  %42 page 5
  d8 b' a g | fis a g fis | g b a g | fis a g fis | g16 fis g a b8 a |
  %47
  g16 fis g a b8 a | g8 d4 d8 | g8 g16 g b b d d | b8 b16 b d d a a |
  %51
  b4 r8^\fermata \bar "|."
  }
}
