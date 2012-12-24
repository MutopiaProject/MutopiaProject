\version "2.16.0"

IIMand =  \relative c'' {
  \clef "treble"
  \time 4/4
  \key g\major

  \partial 8 c8 |
  d16 b a g d' b a g <<e'8 \\ { c[ d]}>> r g |
  g16 a, a b b c c e  d[ c d32( c b  c)] b8 g' |
  %3
  g16 a, a b b c c e  d[ c c32 b a g] g8 d' |
  d16 b a g d' b a g  d'32[ c b a g f e d]  d'[ c b a g f e f] |
  % one edition:...e16 c!  b a e' c   b a 
  g f? e f e8 r e' e16 cis b a e' cis b a |
  %6
   e'32[ d cis b a g fis e]  e'[ d cis b a g fis g]  a[ g fis g fis8] r a |
   d,32[ e fis g a b c a]  b[ g a b c d e fis] g16 g g g  d,32[ e fis g a b c a] |
   b16[ g' fis32 e d c] <<{b8 a} \\ {g fis}>> <<{ b16.[ g'32 fis e d c]} \\ g16>>
    <<{b8 a} \\ {g fis}>> |
  %9
   g8[ d'16 d,]  c'[ d, a'32 b c a] <<{ b8[ b16 d,]} \\ g8>>
     a16[ d, d'32 c b a] |
  <g b,>8[ d'16 d,]  c'[ d, a'32 b c a] <<{ b8[ b16 d,]} \\ g16>>
     a16[ d, d'32 c b a] |
   g[ a b c d e fis g]  g,[ a b c d e fis g] g16 f f e e dis dis e |
  %12
  e fis fis g g d! b g  g'32[ fis e d c b a g]  g'[ fis e d c b a g] |
   e'[ d c b c b a g]  a[ g fis e a g fis e] d8 d'16 d e c fis d |
  g8 a,16 c bes g fis a g8 d'16 b e c fis d |
  %15
  g8 a,16 c bes g fis a g8 b16 g a d, c' a |
  b d, d' b e c a fis g8 b16 g a d, c' a |
  b d, d' b e c a fis g8 b,16 d c e d fis |
  %18
  <<{g8 d16 d} \\ {s8 b16 b}>> <e c> <e c> <fis a,> <fis a,> <g b,>8
    <d b>16 <d b> <e c> <e c> <fis a,> <fis a,> |
  g a b c d e fis g g, a b c d e fis g | 
  <d d,>8 b <d d,>16 c b a g fis e d c b a g |
  %21
  c8 e d fis' <g b, d, g,>4 r4^\fermata \bar "|."
}
