\version "2.16.0"
\include "3-shared.ly"

IIIMand =  \relative c'' {
  \clef "treble"
  \key f\major
  \time 3/8

  % Triplets are in groups of 3.
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  \set Timing.beamExceptions = #'((end . (
    ((1 . 8) . (3))
    ((1 . 16) . (6))
    ((1 . 24) . (3 3 3))
    ((1 . 32) . (12))
  )))

  %1 page 32
  c16. f32 c8 c | f16. a32 f8 f |
  \IIISharedB \IIISharedC \IIISharedD \IIISharedE \IIISharedF
  %53 page 37
  \times 2/3 {f16_"solo" a g} f c a f |
  %54 page 38
  \times 2/3 {f'16 a g} f c a f |
  \times 2/3 {d' bes d f d f bes f d | c a c f c f a f c |
  bes g bes e bes e g e bes |  a[ g f} f8] r |
  \grace {f'16[ g]} a8 g16 f e d | \grace {e16[ f]} g8 f16 e d c |
  %61 page 39
  d16 e f g a c, | b a g8 r | g16 b d f e d | e g fis g fis g |
  g, b d f e d | e g f! g f g | g, b d f e d | <e c g>4 g8 |
  \times 2/3 {a16 g f g f e f e d | g f e f e d e d c |
  %71 page 40 Note: Originally   "[a g f} f8] r"
   b[ a g} g8] r |
  \grace {f'16[ g]} a8 g16 f e d | \grace {e[ f]} g8 f16 e d c |
  d e f g a c, | b a g8 r | g16 b d f e d |
  %77
  e g fis g fis g |
  g, b d f e d | e g f! g f g | g, b d f e d | <e c g>4 g8 |
  %82 page 41
  \times 2/3 {a16 g f g f e f e d | g f e f e d e d c} |
  g b d f e d | e g f e d c | g'8 g, r |
  \times 2/3 {f'16 e f a g f f e dis | e dis e e dis e e dis e |
  %89 page 42
  d! c d f e d d c b | c b c c b c c b c | f g a g f e d c b} |
  c8 c, r | \times 2/3 {f'16 e f a g f f e dis | e dis e e dis e e dis e |
  %95 page 43
  d! c d f e d d c b | c b c c b c c b c | f g a g f e d c b?} |
  \IIISharedI
  %107 page 44
  f'8 a16. f32 d16. f32 | e8 g16. e32 c16. e32 | d16 f e d c b |
  g c32 d d4^\trill |  c16[ g'32 f]  e16[ g e g] |
  %112 page 45 Note:  e16[ g32 f] is written as  e8[ g16 f] in the manuscript
   e16[ g32 f]  e16[ g e g] | <e c g>8 <e c g> <e c g> | <e c g>4 r8 |
  <e c g> <e c g> <e c g> | \times 2/3 {c16 e f g f e d c b |
  c e f g f e d c b | c g c e c e g e g} | c8 c, r |
  %120 page 46
  \times 2/3 {g'16 a bes bes a g g f e | a, b cis cis d e e f g} |
  f a gis a gis a | \times 2/3 {a, b cis cis d e e fis g |
   fis?[ e d} d,8] r | \times 2/3 {f'16 g a a g f f e d |
  %126 page 47
  g, a b b c d d e f} | e g fis g fis g | \times 2/3 {g, a b b c d d e f |
   e[ d c} c,8] r | c'16 g e' c g' e | bes g' g e e bes | bes g' g e e bes |
  %133 page 48
   a16[ f]  c'[ a]  f'[ c] | \times 2/3 {d e f} bes,8 a | a g r |
  \times 2/3 {f'16 a g} f c a f | \times 2/3 {f'16 a g} f c a f |
  \times 2/3 {d' bes d f d f bes f d | c a c f c f a f d |
  %140 page 49 Note: Bar 139, the f8 is f4 in the manuscript
  bes g bes e bes e g e bes |  a[ g f} f8] r8 |  a16[ f']  c[ f]  a,[ f'] |
   bes,[ f']  d[ f]  bes,[ f'] |  a,[ f']  c[ f]  a,[ c] |
   d32[( bes a  g)]  f[( es d  c) bes8] | b'16  g' d g b, g' | c, g' e g c, g' |
  %148 page 50
  b, g' d g b, g' | e32( c b a g f e  d) c8 |
  \times 2/3 {bes'16 a bes d c bes bes a gis | a gis a a gis a a gis a |
  g! f g bes a g g f e | f e f f e f f e f |
  %154 page 51
  bes c d c bes a g f e} | f8_"tutti" c'16 a f' c |
  a'8 c,16 a f' c | \times 2/3 {d c bes} a8 g | a c16 a f' c |
  a'8 c,16 a f' c | \times 2/3 {d e f e d c bes a g} |
  \IIISharedM \IIISharedN \IIISharedO \IIISharedP \IIISharedQ
}

