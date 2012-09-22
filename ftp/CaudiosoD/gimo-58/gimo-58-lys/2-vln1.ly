\version "2.16.0"

% toggles tuplet spanner duration
six = \set Staff.tupletSpannerDuration = #(ly:make-moment 1 2)
three = \set Staff.tupletSpannerDuration = #(ly:make-moment 1 4)

IIVlnI =  \relative c''' {
  \clef "treble"
  \key c\major
  \time 2/2

  % end beams on quarters by default

  %1 page 18
  \three \times 2/3 {c8 g e c g e c c c c c c |
  %2 Note: The second f looks like an e
  c'' a f c a f c c c c c c |
  c'' g e c g e c c c c c c |
  f' d b f d b g g g g g g |
  %5
  c c c c' c c e e e g g g |
  d d d g g g b b b d, d d |
  c c c fis fis fis a a a c, c c |
  b g g g,( g'  g) g,( f'!  f) g,( f'  f) |
  g,( e'  e) g, e' e g, d' d g, d' d |
  g, c c g c c g b b g b b} |
  %11
  g4 r \times 2/3 {g''8 f e d c bes |
  a gis a a gis a a b! c d e f |
  e g f} \slashedGrace f \times 2/3 {e d c} \six \times 4/6 { d[ f e d c b]} |
  \three c4. es16 d  c8.[ bes16 as8. g16] |
  fis4. d'16 c  b!8.[ a!16 g8. f16] |
  %16 Note: Weird: b! ... b in violin , bes! ... b! in mandolin
  \times 2/3 {e8 g b! a c f e g c, d f b, |
  c e g g e e e c c c g g |
  %18
  g e e e c c c c c c c c} |
  <e' c g>2 r2^\fermata |
  e4 e e e | 
  e e e g |
  f c \times 2/3 {b8 c d} \slashedGrace e \times 2/3 {d c b} |
  c4 e, c' e |
  d2. e4 |
  %25
  c1 |
  b4 r \times 2/3 {b8 c d} \slashedGrace e \times 2/3 {d c b} |
  c4 e e e |
  a, \times 2/3 {a8 a a} b4 \times 2/3 {b8 b b} |
  c4 \times 2/3 {c8 c c} b4 \times 2/3 {b8 b b} |
  a4 r <d d,>2 ~ |
  %31
  <d d,>4 r e2 | 
  d c |
  b1~ |
  b4 r a2 |
  b4 r r2 |
  %36
  \times 2/3 {g'8 d b g d b g g g g g g |
  g'' e c g e c g g g g g g |
  g'' d b g d b g g g g g g |
  c'' a fis c a fis c c c c c c} |
  %40 page 19
  b4 \times 2/3 {b'8 c d e fis g a, b c |
  d e fis g, a b c d e fis, g a |
  b c d d e fis g fis e d c b |
  b g b} a4 r2 |
  \times 2/3 {bes8 bes bes bes bes bes cis cis cis cis cis cis |
  d d d d d d a a a a a a |
  a a a a a a g g g e e e |
  <a fis> d cis d a fis} d4 r^\fermata |
  %48
  d4 d \times 2/3 {e8 e e} e4 |
  \times 2/3 {d8 d d} d4 \times 2/3 {fis8 fis fis} fis4 |
  g r g2 ~ |
  g4 g2 fis4 |
  g \times 2/3 {d8 d d} g2 ~ |
  g4 es as c |
  %54
  es1 | d | c | b!2 c | f, es4 as |
  %59
  f fis g \times 2/3 {b!8 c b} |
  c2 d |
  g,4 a e d |
  c2 c' |
  b4 r b2 |
  c4 r r2 |
  %65
  \three \times 2/3 {c'8 g e c g e c c c c c c |
  %66 Note: The second f looks like an e
  c'' a f c a f c c c c c c |
  c'' g e c g e c c c c c c |
  f' d b f d b d d d d d d} |
  <e c>4 \times 2/3 {g'8 e bes a f' e d c b} |
  %70
  c4. es16 d  c8.[ bes16 as8. g16] |
  fis4. d'16 c  b!8.[ a!16 g8. f16] |
  \times 2/3 {e8 g bes a c f e g c, d f b, |
  c e g g e e e c c c g g |
  g e e} <<\times 2/3 {e e e e e e e e e} \\ {g,4 g g}>> |
  %75
  <e'' c g>2 r2^\fermata \bar "|."
}
