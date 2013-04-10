\version "2.16.0"

IBasso =  \relative c {
  \clef "bass"
  \key c\major
  \time 4/4
  
  %1 page 2
  c4 r r8 c e g | c,4 r r8 c e g |  e[ c]  b[ g] c4 r | r8 c b g  c[ c]  f[ f] |
  f4 r8 f e4 r8 e |  d[ d]  g,[ g]  c[ c]  c[ c] | c4 r8 cis  d[ d]  d[ d] |
  %8 page 3
   g[ g]  b,[ cis]  d[ d]  d[ d] |  g[ g]  b[ g] r c, e c | r g b g r c e c |
  r a cis a r d fis d | r a cis a d4 r | r8 a a fis' g g g g |
  %14 page 4
  d4 r r8 a' g fis | g b, c a b c d d, | g4 r8 bes  a[ a]  cis[ a] |
  d4 r8 a8 g g b g |  c[ f]  g[ g,] c8. a'16 g f e d | c4 r r8 c e g |
  c,4 r r8 c e g |
  %21 page 5
   e[ c]  b[ g] c4 r | e r  e8[ e]  e[ e] | f4 r  fis8[ fis]  fis[ fis] |
  g4 r8 fis g g, c4 | c c  f8[ f]  f[ f] | 
  %26 page 6
  e4 e e r8 fis | g g, g4 b r8 b | c4 r r8 b r b | c4 r  f8[ f]  g[ g,] |
  c4 r c r8 e | c4 r c r8 e |  f[ f]  g[ g,] c4 r |
  %33 page 7
  g'4 g, c r^\fermata \bar "|."
}
