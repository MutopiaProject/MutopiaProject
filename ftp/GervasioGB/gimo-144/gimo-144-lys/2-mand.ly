\version "2.16.0"

IIMand =  \relative c' {
  \clef "treble"
  \time 4/4
  \key g\minor
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \partial 8 d8 |
  %1 page 6  
  g16 bes a c bes d c es \times 4/6 { d[ g fis g fis es]}  d8[ c] |
  \times 4/6 { bes16[ d c bes a g]  a[ c bes a g fis]  g[ d c bes c d]}  g,8[ d''] |
  \times 4/6 { bes16[ d c bes a g]  a[ c bes a g fis]  g[ d c bes c d]} g,8 r |
  %4
  f''8 f ~ \times 4/6 { f16[ g f es d c]}  d8[ d] ~ \times 4/6 { d16[ es d c bes a]} |
   f8[ f] ~ \times 4/6 { f16[ g f es d c]}  d8[ d] ~ \times 4/6 { d16[ es d c bes a]} |
   bes8[ \times 2/3 {f''16 bes, f']} \times 4/6 { g[ bes, g' a bes, a']
     bes[ bes, bes' f bes, f']  g[ bes, g' a bes, a'] |
   bes[ a g f es d]  g[ f es d c bes]}
    \times 2/3 { a[ g f} f8] r \times 2/3 { f16[ a c]} |
  %8
   f8[ \times 2/3 {c16 d es!]}  d8[ \times 2/3 {c16 d es]}
     d8[ \times 2/3 {bes16 d f]}  bes8[ \times 2/3 {f16 g as]} |
  g es bes g es8 g' f16 d bes f d8 f' |
  es16 c a es c8-. es' \times 4/6 { d16[ bes c d c bes]  es![ c d es d c] |
  %11 page 7
   f[ d es f es d]  g[ es f g f es]  a[ f g a g f]  bes[ bes, c d c bes]} |
   bes'16.[ a32 g16. f32]  g16.[ f32 es16. d32]  es16.[ d32 c16. bes32]  c16.[ bes32 a16. g32] |
  \times 4/6 { f16[ c' d es d c]  d[ f f f d bes]  c[ es es es c a]  d,[ f f f d bes] |
  %14
   c[ es es es c bes]  d'[ es f g a bes]  a[ g f es d c]  d[ es f g a bes] |
   d,[ c bes a bes c]  bes[ f es d es f]}  bes,8[ \times 2/3 {f''16 d bes]}
    \times 4/6 { c[ a f f' c a] |
   es'[ c a bes f d]}  bes8[ \times 2/3 {f''16 d bes]}
    \times 4/6 { c[ a f f c' f]  es[ c es d bes' a] |
   bes[ a g f g f]  g[ f es d es d]  bes'[ a g f g f]  g[ f es d es d] |
  %18
   g[ f es d es d]  es[ d c bes c bes]  g'[ f es g f es]  d[ c bes a bes c] |
   bes[ f es d es f]  bes[ f es d es f]} bes,4 r8 f''8 |
  as8. g32 f  es8[ d]  es[ g] r c, | d8. es32(  f)  es8[ d]  c[ c,] r es' |
  %22 page 8
  g8. f32 es  d8[ c]  d[ f] r bes, |
  c8. d32 es  d8[ c]  bes[ bes,] r \times 2/3 { f''16[ f f]} |
  \times 4/6 { g[ f es d c bes]} \times 2/3 { a[ g f} f8]
    <c' f,>8.[ d32( es)] <<{d8 f} \\ {f, d'}>> |
  %25
  <c f,>8.[ d32( es)] <<{d8 f} \\ {f, d'}>> g16 es g es bes' g f es |
  f d f d bes' f es d es c es c c'8. es,16 |
  d bes c d es f g a bes a g f es d c bes |
  bes' a g f es d c bes g' f es d es d c bes |
  %29
  c bes a g f4 es'8 es ~ es32( f g  f) g( es d  cis) |
  d8 d ~ d32( es f es f d c  bes)  c8[ \times 2/3 {c16 d es]}
    \times 4/6 { d[ es f a, bes c] |
   bes[ f es d es f]}  bes,8.[ es16] d es d c bes c bes a |
  %32
   g'32[ bes16. a32 c16.]  bes32[ d16. c32 es16.]
    \times 4/6 { d16[ g fis g fis es]}  d8[ c] |
  \times 4/6 { bes16[ d c bes a g]  a[ c bes a g fis]
     g[ d g bes g bes]  d[ bes d g d g]} |
  bes8 a16 g fis es d c \times 4/6 { bes16[ d c bes a g]  a[ c bes a g fis] |
  %35
   g[ d c bes c d]  g[ d c bes c d]} g,4 r^\fermata \bar "|."
}
