\version "2.16.0"
\include "1-shared.ly"

IVlnII =  \relative c'' {
  \clef "treble"
  \key f\major

  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  % end beams on quarters by default

  \ISharedA
  %10 page 3
  e16 d c8 r c g16 f g a g4 |
  g'16 f g a g f g a g f e d c bes a g |
  f e f g f4 f'16 e f g f e f g | f e d c bes a g f g f g a g4 |
  g'16 f g a g f g a g f e d c bes a g |
  \ISharedC
  %17 page 4
  c8 f32 e f g g4 f f ~ | f8 e16. d32 e8 e f4 f, ~ |
  f8 e16 d e8 e
  \ISharedE
  %22 page 4
  f'8 \times 2/3 {f16 g a} f8 \times 2/3 {f16 g a}
    f8 <f c f,> <f c f,> <f c f,> |
  %23 page 5
  <f c f,>4 r4 r8 a,8 a4 |  a8[ a a a] a2:8 |
   bes8[ bes bes bes]  bes[ a a a] | g2: g8 f f f |
  \ISharedFF
  %29
  r8  a[ a a] r  g[ g g] |
  %30 page 6
   f[ f f f] e4 r | r8  g[ g g] g2: | g: g: | g: c8 r c r | c r c r c r c r |
  c4 r r r8 c |
  %36 page 7
  c c b b c c,16. d32 e8 c |  d[ d g, g] c c16 d e8 c |
  d d g, g c'4 r8 f, |
  %39 Note: Seems that the copyer mistyped, 39 and 40 look like 40 and 41, respectively, should look, plus some partial corrections. Interpretation: Bars copied from violin 1.
  g g g, g c4 r8 f | g g g, g <c' e, g,>4 <c e, g,> |
  \ISharedG r4 |
  %51 page 9
  c4 r8 b c4 r8 b |  c[ c c c] c4 r |
  \ISharedH 
  %58 page 10
  r8  g[ g g] g r g r | r  f[ f f] f r f r |
  %60 page 11
  r  g[ g g] g r g r | f f f f f e r4 | a8 r a r a a a a | a2: bes: |
   bes8[ a a a] g2: |
  %65 page 12
  f8 f f4 f8 r f r | f r f r f r f r | f4 r f8 r f r | g r g r g r g r |
  g4 r8 g g4 g |
  %70 page 13
  g r f f | f r g g | g r f2: | f: f: | 
  %74 Note: Bar 74 marked //, copied from Violin 1
   f8[ g, a bes]  c[ c c c] |
  %75 page 14
  f8 f16. g32 a8 f g g c, c | f8 f16. g32 a8 f g, g c c | f4 r8 bes, c2 |
  f4 r8 bes, c2 |
  %79
  f'32\f g a8. f8 c
  \ISharedJ
  %82 page 15
  e16 d c8 r e, g16 f g a g4 | g'16 f g a g f g a g f e d c bes a g |
  f e f g f4 f'16 e f g f e f g | f e d c bes a g f g f g a g4 |
  g'16 f g a g f g a g f e d c bes a g |
  \ISharedL
  f'8 \times 2/3 {f16 g a} f8 \times 2/3 {f16 g a} |
  %90 page 16
  f8 <f c f,> <f c f,> <f c f,> <f c f,>4 r^\fermata \bar "|."
} 


