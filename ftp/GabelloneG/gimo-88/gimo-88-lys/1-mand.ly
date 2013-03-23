\version "2.16.0"
\include "1-shared.ly"

IMand =  \relative c'' {
  \clef "treble"
  \key f\major
  \ISharedA \ISharedB \ISharedC \ISharedD \ISharedE \ISharedF

  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  % end beams on quarters by default

  %23 page 5
  <f c f,>4 r8 c_"solo" \times 4/6 {f16 a g f e d c f e d c bes} |
  a8 \times 2/3 {f16 c f} \times 4/6 {a16 f a c a c} f8 f, r c' |
  \times 4/6 {d16 e f g a bes bes a g f e d} d8 c r c |
  \times 4/6 {bes16 c d e f g g f e d c bes} bes8 a r a' |
  %27
  \slashedGrace a g f16 e \slashedGrace g8 f e16 d \times 2/3 {e f g} g8
    r \times 2/3 { f16[ g a]}
  \slashedGrace a8 g f16 e \slashedGrace g8 f e16 d e d c8 r g' |
  \times 4/6 {a16 g f f e d d e f f g a g f e e d c c d e e f g} |
  %30 page 6
  \times 4/6 {f e d d c b? b? c d d e f} e8 \times 2/3 {e16 f g}
    \times 4/6 {f g e d e c} |
  g'8 g, r g \times 4/6 {c16 d e e f g g f e e d c |
  c d e e f g g f e e d c d e f f g a a g f f e d |
  %33
  d e f f g a a g f f e d} e c c32 b c 16 e c c32 b c16 |
  f c c32^\trill b c16 f c c32^\trill b c16 g' c, c32^\trill b c16 g' c, c32^\trill b c16 |
  a' g f e d c b a \slashedGrace c8 b a16 g c8 f |
  %36 page 7
  \times 4/6 {e16 g f e d c d f e d c b} c4 \times 4/6 {r16 c d e f g} |
  \times 2/3 {f e d} d8 \times 4/6 {r16 f g a g f} \times 2/3 {e d c} c8
    \times 4/6 {r16 c d e f g} |
  \times 2/3 {f e d} d8 \times 4/6 {r16 f g a g f e c e g e g} c8 c, |
  g c16. d32 d4^\trill \times 4/6 {e16 c e g e g} c8 c,
  %40
  g c16. d32 d4^\trill <c e, g,> <c e, g,> |
  \ISharedG r8 g8_"solo" |
  %51 page 9
  \times 4/6 {c16 g c e c e g f e d c b c g c e c e g f e d c b} |
  c8 \times 2/3 {c16 g c} \times 4/6 {e c e g e g} c8 c, r g' |
  bes16 g g e e cis cis a \times 4/6 {bes' a g g f e e d cis cis b a |
  f' a g f e d g bes a g f e  f[ a g f e d] e g f e d cis |
  %55 page 10
  d a g f g a} d,8 f' a16 f f d d b b g | 
  \times 4/6 {a' g f f e d d c b b a g e' g f e d c f a g f e d |
  e g f e d c d f e d c b c g f e f g} c,8 c' |
  \times 4/6 {bes16 g bes e bes e} g8 g \times 4/6 {g16 f e d c bes
    g' f e d c bes |
  a f a c a c} a'8 a \times 4/6 {a16 g f e d c a' g f e d c |
  %60 page 11
  bes g bes e bes e} g8 g \times 4/6 {g16 f e d c bes g' f e d c bes |
  a f a c a c} f8 a, a g r c |
  \times 4/6 {f16 a g f e d c f e d c bes} a8 \times 2/3 {f16 c f}
    \times 4/6 {a f a c a c} |
  f8 f, r c' \times 4/6 {d16 e f g a bes bes a g f e d} |
  d8 c r c \times 4/6 {bes16 c d e f g g f e d c bes} |
  %65 page 12
  a16 g f8 r c' f,16 c' es es f, c' es! es |
  %66 Note: Bar 66 was originally written: f,4 f16 bes d d f, bes d d f, c' es? es |
  f,16 bes d d f,16 bes d d f, c' es? es f, c' es? es |
  \times 4/6 {d bes d f d f} bes8 d, g,16 d' f f g, d' f f |
  g, c e! e g, c e e g, d' f f g, d' f f |
  \times 4/6 {e c e g e g} c8 c, \times 4/6 {bes16 e f g f e bes e f g f e} |
  %70 page 13
  bes e g f e d c bes \times 4/6 {a f' g a g f a, f' g a g f} |
  a, f' a g f e d c \times 4/6 {bes e f g f e bes e f g f e} |
  bes e g f e d c bes a f f a a c c f |
  f a, a c c f f a a c, c f f a a c |
  c8 bes16 a g f e d c8 f32( e f  g) g4^\trill |
  %75 page 14 Note: The {bes a g g} are written as {bes16 a g g} in the manuscript
  f4 \times 4/6 {r16 f, g a bes c} \times 2/3 { bes[ a g} g8]
    \times 4/6 {r16 bes c d c bes} |
  \times 2/3 {a g f} f8 \times 4/6 {r16 f g a bes c} \times 2/3 {bes a g} g8
    \times 4/6 {r16 bes c d c bes |
  a f a c a c} f8 f, c f16. g32 g4_\trill |
  \times 4/6 {a16 f a c a c} f8 f, c f'16. g32 g4^\trill |
  %79
  f32 g a8. f8 c
  \ISharedJ \ISharedK \ISharedL \ISharedM
}





