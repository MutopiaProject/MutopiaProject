\version "2.16.0"

IIVlnI =  \relative c'' {
  \clef "treble"
  \time 2/2
  \key d \minor

  \set tupletSpannerDuration = #(ly:make-moment 1 2)

  %page 13
  \partial 4 a4 | d f,8. g16 a8. a16 g8. f16 |
  e4 \times 2/3 { es8[( e'-.  f)-.]} \times 4/6 { g[-.( g-. g-. bes-. a-.  g)-.]} |
  %3
  f4 f,8. g16 a8. a16 g8. f16 |
  e4 \times 2/3 { es8[( e'-.  f)-.]} \times 4/6 { g[-.( g-. g-. bes-. a-.  g)-.]} |
  \grace g8 f4 \times 2/3 { f8[ es d]} f4 gis |
  a\f a,8. d16 c8. bes16 a8. g16 |
  %7
  f'8. c16 f8. a16 f4 c |
  \times 4/6 { d8[ f-. f-. f-. bes-. bes-.]  bes[( d,-. d-. d-. d-.  d)-.] |
   c[-. f-. f-. f-. a-. a-.]  a[ c,-. c-. c-. c-. c-.] |
   bes[ e!-. e-. e-. g-. g-.]  g[ f e d c bes]} |
  %11
  \times 2/3 { a8[ f' c]} \times 2/3 {r  a'[ f]} \times 4/6 {r  d[ c d c bes] |
   a[ d c bes a g]} a4 g | f r8. g16 f8. e16 d8. cis16 |
  %14
  d4 r f r | e r cis r | d d g gis | a r8. d16 c8. bes16 a8. g16 |
  %18
  a4 r a r | bes d, d bes | c c c a | bes bes e e | <<a \\ f>> r <<a \\ f>> r |
  %23
  bes r bes r | a r a r | g r g r | f r f e | f r f e | f bes c c, |
  %29
  f4 g8. e16 f4 e8. d32 e | d4 r f r | bes r bes r |
  %32
  a8 f' \times 2/3 { g[ f e]} d4 cis | d8. c16 bes8. a16 gis4 a |
  c8. bes16 a8. g16 fis4 g |
  a a a8 f' \grace a8 \times 2/3 { g[ f e]} |
  %36
  d4 cis d4 d16 cis d cis |
  d8 f, g a bes4 d16 cis d cis | d8 f, g a <<d,4 \\ d>> a8. a16 |
  %39
  <<d4 \\ d>> a8. a16 <<d4 \\ d>> r^\fermata \bar "|."
}
