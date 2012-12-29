\version "2.16.0"

IIIBasso =  \relative c {
  \clef "bass"
  \time 2/4
  \key d\major

  \partial 8 r8 |
  %1 page 8
  d d' cis a | d d, fis fis | g g a a, | d d' cis a | d d fis, fis |
  %6
  g g a a, |  d[ d d d] | d4 r |  d'16[ cis b a g fis e d] | d4 r |
  %11
   d'16[ cis b a g fis e d] |  d8[ fis e d] | cis e d cis |  d8[ fis e d] |
   cis[ e d cis] |  d[ d d d] | d2:8 | g4 a | d, fis | g a |
  %21
   d,16[ e fis g a b cis d] | g, fis g e a g fis e | d d' cis d a d fis, d' |
  cis8 a b gis | a a fis d | cis4 r | r8  e[ e e] | r  e[ e e] | r  e[ e e] |
  %30
  a, a' gis e | a, a' d d, |  e[ d cis b] | a4 r |  d8[ d d d] |
  cis2: | b8 b e e |  a,[ a a a] | a2: | a: |  d8[ d e e] | e e e e | 
  %42 page 9
  a8. b16 a g fis e |  d8[ d' cis a] | d, d fis fis | g g a a, | d d' cis a |
  %47
  d d fis, fis |  g[ g a a] |  d,16[ e fis g a b cis d] | g,4 fis | e a, |
  %52
   d8[ d d d] | g g a a | d, d' d, d' |  g,[ g a a] |  d,[ d d d] | g g a a |
  %58
  d, d' d, d' |  g,[ g a a] | d,4 r8 a' | d,4 r8 a' |  d,[ d fis fis] |
   g[ g a g] |  fis[ d a' a,] |  fis'[ d a' a,] | d d fis fis | g g a a |
  %68
  d,16 e fis d g b a g | fis e fis d g e a a, | d e fis d g b a g |
  fis e fis d g e a a, | d8 d' d, d' |  d,16[ e fis g a b cis d] |
  %74
  d,4 r^\fermata \bar "|."
}
