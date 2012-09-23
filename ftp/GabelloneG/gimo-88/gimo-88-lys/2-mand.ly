\version "2.16.0"
\include "2-shared.ly"

IIMand =  \relative c'' {
  \clef "treble"
  \key bes\major

  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  % end beams on quarters by default

  \IISharedA \IISharedB
  r8 f |
  %11 page 19
  \times 4/6 {f16 bes f f bes f f bes, c d es f
    g bes g g bes g g g a bes a g} |
  %12 page 20
  g16 f32 g f8 \times 4/6 {r16 f es d c bes} a8 \times 2/3 {a16 bes c}
    \times 4/6 {f, a bes c d es} |
  d32 c d es f8 \times 4/6 {r16 f es d c bes} a8 \times 2/3 {a16 bes c}
    \times 4/6 {f, a bes c d es} |
  \times 2/3 {d c bes} bes8 r4 \times 4/6 {d16 f f f f f d f es d c bes |
  %15 page 21
  c f f f f f c c bes a g f}  bes'32[ a g a g f e? f]  e[ d c d]  c[ bes a bes] |
  bes!8 a r c16. f32 f8 c16. f32 \times 4/6 {f16 e? d c bes a} |
  %17 page 22
  a8 g r f bes16 e g e bes' g e bes |
  a c f c a' f c a bes e g e bes' g e bes |
  \times 4/6 {a f' e d c bes a d c bes a g} c,8 f'16 g g4^\trill |
  \times 4/6 {a16 f e f e d c d c bes a g} c,8 f'16 g g4^\trill |
  %21 page 23
  f16 f f f
  \IISharedC \IISharedD
  %29 page 25
  f,4 r8 c'_"solo" \times 4/6 {c16 f c c f c c f, g a bes c |
  d f d d f d d d e f e d} d8 c \times 4/6 {r16 f g a g f |
  e e f g g a bes bes, c d c bes} \times 2/3 {a bes c} c8
    \times 4/6 {r16 f g a g f |
  %32 page 26
  e e f g g a bes bes, c d c bes} \times 2/3 {a g f} f8 r f' |
  \times 4/6 {f16 bes f f bes f f bes, c d es f g bes g g bes g g g a bes a g} |
  g16 f32 g f8 \times 4/6 {r16 f es d c bes} a8 \times 2/3 {a16 bes c}
    \times 4/6 {f, a bes c d es} |
  %35 page 27
  d32 c d es f8 \times 4/6 {r16 f es d c bes} a8 \times 2/3 {a16 bes c}
    \times 4/6 {f, a bes c d es} |
  \times 2/3 {d c bes} bes8 r f' as16 f d bes as f d bes |
  as'' f d bes as f d bes \times 4/6 {g' es g bes g bes es bes es g es g}
  %38 page 28
  as16 f d bes as f d bes as'' f d bes as f d bes |
  \times 4/6 {g' es g bes g bes es bes es g es g} bes16 g e c bes g e c |
  %40 page 28.5 Note: The "a' f a c a c" is "a' f a bes a c" in the manuscript, does not make sense.
  bes'' g e c bes g e c \times 4/6 {a' f a c a c f c f a f a} |
  bes g e c bes g e c bes'' g e c bes g e c |
  \times 2/3 {a' g f} f8 r f \times 4/6 {es'!16 g es es g es}
     es32[ f g f]  g[ es d c] |
  %43 page 29
  \times 4/6 {d16 f d d f d}  d32[ es f es]  f[ d c bes]
    \times 4/6 {es16 g es es g es}  es32[ f g f]  g[ es d c] |
  \times 4/6 {d16 f d d f d}  d32[ es f es]  f[ d c bes c8]
    \times 2/3 { c16[ d es]} \times 4/6 {d es f a, bes c |
  bes bes' a g f es d g f es d c} f,8 bes32 a bes c c4^\trill |
  %46 page 30
  bes16 bes' bes bes r d, f bes
  \IISharedF \IISharedG
}










