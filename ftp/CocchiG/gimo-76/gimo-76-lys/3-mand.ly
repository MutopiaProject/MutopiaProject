\version "1.6.0"

% Note: This movement has identical parts for mandolin 1 & 2.

noStroke =  \property Voice.Stem \set #'stroke-style = #'()

IIIMand = \notes \relative c''' {
  \clef "treble"
  \key d\major
  \time 3/8

  %1 page 11
  <a4 a, d,> g8 | fis16 d cis e d a | <a'4 a, d,> g8 | fis16 d cis e d a |
  <b'4 d, d,> a8 | g4 fis8 | <{[e16 a] [g e] [fis d]} \\ {a4 r8}> |
  %8
  <a'8 \\ cis,> a,4 | <a'4 a, d,> g8 | fis16 d cis e d a | <a'4 a, d,> g8 |
  fis16 d cis e d a | <b'4 d, d,> a8 | g4 fis8 |
  <{\times 2/3 {[e16 a b]} [g e fis d]} \\ {a4 r8}> |
  %16 page 12
  <a'8 \\ cis,> a,4 | <e' cis \\ a> a16 fis | e8 \grace {\noStroke d} cis4 |
  <e cis \\ a> a16 fis | e8 cis4 | fis16 a gis b a fis |
  e8 gis, a | fis'16 a gis b a fis | e a gis b a e | d8 cis b | a a,4 |
  %27
  [a''8 r16 bes a16. g32] | f16. e32 d16. e32 f16. g32 |
  a16. bes32 a16. g32 f16. e32 | d8 d,4 | [a'8 r16 bes a g] |
  f16. e32 d16. e32 f16. g32 | a16. bes32 a16. g32 f16. e32 |
  %34 Note: The a is a very clear b in the manuscript, which does not make sense.
  d8 a4 |
  %35 page 13 Note: The f''16 is dotted in the manuscript
  [f''16 e32 f] [bes8 g] | e4 a8 |
  %37 Note: The d,16 is a d,8 in the manuscript
  [d,16 e32 f] [e16 d cis! d] | e8 a, a | g'4 fis!8 | b4 a8 | g4 fis8 |
  b4 a8 | d4 cis8 | d8 <a, d,> g' | <{[fis16 a]} \\ a,8> [fis16 d e a,] |
  %46
  <{[fis'16 a]} \\ a,8> [fis16 d e a,] |
  <{[fis'16 a]} \\ a,8> [fis16 d e a,] | d8 <a4 d,> |
  [a'8 r16 bes? a16. g32] | f16. e32 d16. e32 f16. g32 |
  a16. bes32 a16. g32 f16. e32 | d8 d,4 | [a'8 r16 bes? a16. g32] |
  %54 page 14
  f16. e32 d16. e32 f16. g32 | a16. bes32 a16. g32 f?16. e32 | d8 a4 | 
  \grace g''8 fis16 e32 fis bes8 g | \grace {\noStroke fis8} e4 a8 |
  d,16 e32 f e16 d cis! d | e8 a, a | g'4 fis!8 | b4 a8 | g4 fis8 | b4 a8 |
  %65 page 15
  d4 cis8 | d <a, d,> g' | <{[fis16 a]} \\ a,8> [fis16 d e a,] |
  <{[fis'16 a]} \\ a,8> [fis16 d e a,] |
  <{[fis'16 a]} \\ a,8> [fis16 d e cis] |
  %70
  d8 <a d,> g' | <{[fis16 a]} \\ a,8> [fis16 d e a,] |
  <{[fis'16 a]} \\ a,8> [fis16 d e a,] | <{[fis'16 a]} \\ a,8> [fis16 d e a,] |
  d8 a'16 a, g' a, | <fis'8 a, d,> a16 a, g' a, | <fis'4 a, d,> r8 \bar "|." 
}
