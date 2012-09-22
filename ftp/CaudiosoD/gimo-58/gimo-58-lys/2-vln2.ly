\version "2.16.0"

% toggles tuplet spanner duration
six = \set Staff.tupletSpannerDuration = #(ly:make-moment 1 2)
three = \set Staff.tupletSpannerDuration = #(ly:make-moment 1 4)

IIVlnII =  \relative c'' {
  \clef "treble"
  \key c\major
  \time 2/2

  % end beams on quarters by default

  %1 page 24
  \three \times 2/3 {e8 c g e c g c c c c c c |
  a'' f c a f c a a a a a a |
  e'' c g e c g c e e e e e |
  b' f d b d f d d d d d d |
  %5
  c c c e e e g g g e' e e |
  g, g g d d d g g g g g g |
  g fis a c c c fis fis fis fis,! fis fis} |
  g4 r r2 |
  \times 2/3 {g,8 g' g g, g' g g, f'! f g, f' f |
  g, e' e g, e' e g, d' d g, d' d} |
  %11
  <d b>4 r c' c, ~ |
  c c c r |
  \six \times 4/6 { e'8[ g f e d c]  d[ f e d c b]} |
  \three c4. es16 d  c8.[ bes16 as8. g16] |
  fis4. d'16 c  bes8.[ a16 g8. fis16] |
  \times 2/3 {e8 g b! a c f e g c, d f b, |
  c c e e c c c g g g e e |
  e c c c e e} <<\times 2/3 {e e e e e e} \\ {g,4 g}>> |
  <e'' c e,>2 r2^\fermata |
  %20
  g,4 g g g | c c c c | c b  d, f | e g g g |
  fis2 g | e fis | g4 r r g~ | g g g a |
  %28
  <a fis>4 \times 2/3 {fis8 fis fis} g4 \times 2/3 {g8 g g} |
  <a fis>4 \times 2/3 {fis8 fis fis} g4 \times 2/3 {g8 g g} |
  fis4 r <<a2 \\ fis>> |
  <<b4 \\ g>> b2 a4 ~ |
  a g2 fis4 |
  g1 ~ |
  %34
  g4 r d'2 |
  d,4 r r2 |
  \times 2/3 {b'8 g d b d g d d d d d d |
  e' c g e c g e' e e e e e |
  d' b g b, d g d d d d d d} |
  %39 page 25
  \times 2/3 {fis' c a a fis d fis fis fis fis fis fis} |
  g4 \times 2/3 {g8 a b c d e fis, g a |
  b c d e, fis g a b c d, e fis |
  g a b b c d e d c b a g |
  g e g} fis4 \times 2/3 {a8 a a a a a |
  a a a a a a g g g e e e |
  fis fis fis fis fis fis} fis4 r |
  \times 2/3 {bes8 bes bes bes bes bes cis cis cis cis cis cis |
  fis, fis e fis fis a} fis4 r^\fermata |
  %48
  b,4 b \times 2/3 {c8 c c} c4 |
  \times 2/3 {b8 b b} b4 \times 2/3 {a8 a a} a4 |
  d4 r e2 |
  d2 c |
  b4 \times 2/3 {b8 b b d d d d es es} |
  es4 es f f |
  %54
  es c2 as'4 |
  as2 g~ |
  g f~ |
  f4 as g2~ |
  g2. f4 |
  d2. \times 2/3 {d8 es d} |
  %60
  e1 |
  e4 c2 f4 |
  e fis fis2 |
  g4 r d2 |
  R1 |
  %65
  \times 2/3 {e'8 c g e c g} \times 2/3 {<e' g,> q q q q q} |
  \times 2/3 {a' f c a f d} \times 2/3 {<f a,> q q q q q} |
  \times 2/3 {e'8 c g e c g} \times 2/3 {<e' g,> q q q q q} |
  \times 2/3 {d' b f d b g d' d d d d d} |
  e4 \times 2/3 {g'8 e bes} \six \times 4/6 { a[ f' e f e d]} |
  %70
  \three c4. es16 d c8. bes16 as8. g16 |
  fis4. d'16 c b!8. a16 g8. f!16 |
  \times 2/3 {e8 g bes a c f e g c, d f b,? |
  c c e e c c c g g g e e |
  e c c c c c c c c c c c} |
  %75
  <e' c g>2 r2^\fermata \bar "|."
}
