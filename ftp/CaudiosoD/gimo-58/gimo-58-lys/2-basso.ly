\version "2.16.0"

IIBasso =  \relative c {
  \clef "bass"
  \key c\major
  \time 2/2

  % end beams on quarters by default
  \set Staff.tupletSpannerDuration = #(ly:make-moment 1 4)

  %1 page 4
  \times 2/3 {c8 c c c c c c c' g e g e |
  c c c c c c c c' a f c f |
  c c c c c c c c' g e g e |
  g, g g g g g g b d g d b |
  c c c c c c c c c c c c |
  b b b b b b b b b b b b |
  a a a a a a d d d d d d |
  %8
  g, g g g g g g g g g g g |
  g g g g g g g g g g g g |
  g g g g g g g g g g g g |
  g fis' g f e f e e e e e e} |
  f4 f f, r |
  g g g g |
  %14
  \clef "tenor" c'4. es16 d  c8.[ bes16 as8. g16] |
  %15 Note: fis4. was eis4 in manuscript
  fis4. c'16 b  b!8[ a! g f!] |
  \clef "bass" e4 f g g, |
  \times 2/3 {c8 c c c c c c c c c c c |
  c c c c c c c c c c c c} |
  c,2 r^\fermata |
  %20
  c''4 c b b |
  a a e e |
  f f f g |
  e c c' c~ |
  c c c b~ |
  b b a d, |
  g g g g |
  c, c c cis |
  %28
  d \times 2/3 {d8 d d} d4 \times 2/3 {d8 d d} |
  d4 \times 2/3 {d8 d d} d4 \times 2/3 {d8 d d} |
  d4 d d d |
  g, g' c fis, |
  b e, a d, |
  g fis e d8 c |
  b4 r fis' fis |
  g g, c d |
  %36
  \times 2/3 {g,8 g g g g g g b d g d b |
  g g g g g g g b d g d b |
  g g g g g g g b d g d b |
  %39 page 5
  a a a a a a d d d d d d} |
  g,4 g' c fis, |
  b e, a d, |
  g r c, c |
  d \times 2/3 {d8 d d d d d d d d |
  d d d d d d d d d d d d |
  d d d d d d d d d d d d |
  d d d d d d d d d d d d |
  \clef "tenor" d' d cis d \clef "bass" d, d} d4 r^\fermata |
  %48
  g4 g \times 2/3 {g8 g g} g4 |
  \times 2/3 {g8 g g} g4 \times 2/3 {d8 d d} d4 |
  %50
  g, r c' c |
  b b a d, |
  g \times 2/3 {g8 g g} g4 \times 2/3 {g8 as g |
  f! es d} c4 c' b! |
  c r f,2 |
  bes es, |
  as d, |
  g,4 f'! es c |
  b! g c g' |
  as2 g4 \times 2/3 {f!8 e! f} |
  %60
  c4 b a \times 2/3 {g8 g' f} |
  c4 f g g, |
  a1 |
  g4 r g' g, |
  c e f g |
  \times 2/3 {c,8 c c c c c c c c c c c |
  c c c c c c c c c c c c |
  c c c c c c c c c c c c |
  g g g g g g g g g g g g} |
  c4 e f g |
  %70
  \clef "tenor" c4. es16 d  c8.[ bes16 as8. g16] |
  fis4. d'16 c  b!8[ a! g f] |
  e4 f g \clef "bass" g, |
  \times 2/3 {c8 c c c c c c c c c c c |
  c c c c c c c c c c c c} |
  %75
  c2 r_\fermata \bar "|."
}
