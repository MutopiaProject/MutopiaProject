\version "2.16.0"

IIVlnII =  \relative c'' {
  \clef "treble"
  \time 2/2
  \key d \minor

  \set tupletSpannerDuration = #(ly:make-moment 1 2)

  %page 17
  \partial 4 a4 | d d,8. e16 f8. f16 e8. d16 |
  cis4 \times 2/3 { ces8[ cis' d]} \times 4/6 { e[-. e-. e-. \grace a8 g( f  e)]} |
  %3
  d4 d,8. e16 f8. f16 e8. d16 |
  cis4 \times 2/3 { ces8[ cis' d]} \times 4/6 { e[-. e-. e-. g( f  e)]} |
  \grace g8 f4 \times 2/3 { f8[ es d]} f4 d |
  %6 Note: 2nd half written as a8 g f e in the manuscript
  cis a8. bes16 a8. g16 f8. e16 |
  %7
  f8. c'16 f8. a16 f4 a, |
  \times 4/6 { bes8[-. d-. d-. d-. d-. d-.]  d[ bes-. bes-. bes-. bes-. bes-.] |
   a[-. a-. a-. a-. f'-. f-.]  f[( a,-. a-. a-. a-.  a)-.] |
   g[-. bes-. bes-. bes-. e-. e-.]  g[ f e d c bes]} |
  %11
  \times 2/3 { a8[ f' c]} \times 2/3 {r  a'[ f]} \times 4/6 {r  d[ c d c bes] |
   a[ d c bes a g]} a4 g | f r8. g16 f8. e16 d8. cis16 |
  %14
  d4 r d r | cis r a r | d d bes bes | a r8. bes'16 a8. g16 f8. e16 |
  %18
  f4 r f r | bes, bes bes bes | a a a a | g g c c | f r f r | f r f r |
  %24
  f r f r | c r c r | f r f e | f r f e | f bes c c, |
  %29
  f g8. e16 f4 e8.\trill d32 e | d4 r d r | g r g r | d g a a, | 
  %33
  d'8.\f c16 bes8. a16 gis4 a |
  c8. bes16 a8. g16 fis4 g |
  %35
  cis, a d g | a a, d d'16 cis d cis |
  d8 f, g a bes4 d16 cis d cis | d8 f, g a <<d,4 \\ d>> a8. a16 |
  %39
  <<d4 \\ d>> a8. a16 <<d4 \\ d>> r^\fermata \bar "|."
}
