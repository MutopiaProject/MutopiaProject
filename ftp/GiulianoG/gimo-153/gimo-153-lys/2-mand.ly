\version "2.16.0"

IIMand =  \relative c'' {
  \clef "treble"
  \time 2/2
  \key d \minor

   { \set tupletSpannerDuration = #(ly:make-moment 1 2) }

  %page 7
  \partial 4 a4 | d f,8. g16 a8. a16 g8. f16 |
  e4 \times 2/3 { es8[ e' f]} \times 4/6 { g[ g g bes a g]} |
  %3
  f4 f,8. g16 a8. a16 g8. f16 |
  e4 \times 2/3 { es8[ e' f]} \times 4/6 { g[ g g bes a g]} |
  f4 \times 2/3 { f8[ es d]} f4 gis | a a,8. d16 c8. bes16 a8. g16 |
  %7
  f'8. c16 f8. a16 f4 c | \times 4/6 { d8[ f f f bes bes]  bes[ d, d d d d] |
   c[ f f f a a]  a[ c, c c c c] |  bes[ e! e e g g]  g[ f e d c bes]} |
  %11
  \times 2/3 { a8[ f' c]} \times 2/3 {r  a'[ f]} \times 4/6 {r  d[ c d c bes] |
   a[ d c bes a g]} a4 g | f r r2 |
  %14
  \times 4/6 { d'8[^"Solo" f e d cis d]  d,[ f' e d cis! d] |
   e,[ g' f e d e]  e,[ g' f e d e]} |
  f4 \times 2/3 { f8[ es f]} \times 4/6 {\grace a8 g[ f es \grace g f es d]} |
  %17
  a'4 a, r2 | \times 4/6 { f'8[ a g f e f] r  a[ g f e f] |
   d[ f f f bes bes]  bes[ a g f e d] |  c[ f f f a a]  a[ g f e d c] |
  %21
   bes[ e e e g g]  g[ f e d c bes] |  a[ c f f c a]  a[ c f f c a] |
   d[ f bes bes f d]  d[ f bes bes f d] |  c[ f a a f c]  c[ f a a f c] |
  %25
   bes[ e g g e bes]  bes[ e g g e bes] |  a[ a' g f e f]  f[ d c d c bes] |
  %27 page 8
   a[ a' g f e f]  f[ d c d c bes] |  a[ g f d' c bes]} a4 g |
  f g8 e f4 e8. d32 e | \times 4/6 { d8[ f' e d cis d] r  f[ e d cis d] |
  %31
  r  bes'[ a g f e] r  bes'[ a g f e]} |
  \times 2/3 { f[ e d]} \times 2/3 { bes'[ a g]} f4 \times 2/3 {\grace f8 e8[ d e]} |
  d8. c16 bes8. a16 gis4 a | c8. bes16 a8. g16 fis4 g |
  %35
  \times 4/6 { e'8[ f g g f e]  f[ e d bes' a g]} |
  f4 \times 2/3 {\grace f8 e8[ d e]} d4 d16 cis d cis |
  d8 f, g a bes4 d16 cis d cis | d8 f, g a d,4 a8. a16 |
  %39
  d4 a8. a16 d4 r^\fermata \bar "|."
}
