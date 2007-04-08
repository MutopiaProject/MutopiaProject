\version "1.6.0"

% toggles tuplet spanner duration
six = \property Staff.tupletSpannerDuration = #(make-moment 1 2)
three = \property Staff.tupletSpannerDuration = #(make-moment 1 4)

noStroke = {\property Voice.Stem \set #'stroke-style = #'()}

IIMand = \notes \relative c''' {
  \clef "treble"
  \key c\major
  \time 2/2

  % end beams on quarters by default
  \property  Staff.autoBeamSettings \override
    #'(end * * * *) = #(make-moment 1 4)

  %1 page 11
  \six \times 4/6 {[c8 g e c g e]} \three \times 2/3 {c c c c c c} |
  \six \times 4/6 {[c'' a f c a f]} \three \times 2/3 {c c c c c c} |
  \six \times 4/6 {[c'' g e c g e]} \three \times 2/3 {c c c c c c} |
  \six \times 4/6 {[f' d b f d b]} \three \times 2/3 {g g g g g g} |
  %5
  \times 2/3 {c c c c' c c e e e g g g |
  d d d g g g b b b d, d d |
  c c c fis fis fis a a a c, c c |
  b g g g, g' g g, f'! f g, f' f |
  g, e' e g, e' e g, d' d g, d' d |
  g, c c g c c g b b g b b} |
  %11
  g4 r \times 2/3 {g''8 f e d c bes |
  a gis a a gis a a b! c d e f} |
  \six \times 4/6 {[e g f e d c] [d f e d c b]} |
  \three c4. es16 d [c8. bes16 as8. g16] |
  fis4. d'16 c [b!8. a!16 g8. f16] |
  \times 2/3 {e8 g bes a c f e g c, d f b, |
  c e g g e e e c c c g g |
  %18 Note: One group of three c:s are missing in the original.
  g e e e c c c c c c c c} |
  <e'2 c e, a,> r2^\fermata |
  \six \times 4/6 {[c8_"Solo" d e e fis g] [g fis e d c b]} |
  \three \grace d \times 2/3 {c b c} \grace d \times 2/3 {c b c}
    \grace a' \times 2/3 {g f e d c bes |
  a gis a a b! c d e f} \grace g \times 2/3 {f e d} |
  \grace d \times 2/3 {c b c} \grace d \times 2/3 {c b c c d e e d c |
  d fis d d fis a g b a g fis! e |
  c e c c e g fis a g fis c a} |
  %26
  <b4 d, g,> \times 2/3 {b8 c d d e f!} \grace g \times 2/3 {f e dis |
  e dis e e fis g a b a g fis g} |
  \grace g \times 2/3 {fis e d} d,4 \times 2/3 {g'8 d b} <d,4 g,> |
  \times 2/3 {a''8 fis c} d,4 \times 2/3 {b''8 g d} g,,4 |
  \times 2/3 {c''8 a fis c a fis d e d c b c} |
  b4 \times 2/3 {b'8 c d e fis g a, b c |
  d e fis g, a b c e d c b a} |
  <\times 2/3 {g' g g g g g g g g g g g} \\ \times 2/3 {b, b b b b b b b b b b b}> |
  \times 2/3 {<g b,> b a g fis e d e d c b c} |
  %35
  \six \times 4/6 {[b d c \grace {\noStroke c} b a g] [a c b \grace {\noStroke b} a g fis]} |
  \three \times 2/3 {<g' d b> d b g d b} <g''4 b, d, g,> <g b, d, g,> |
  \times 2/3 {g8 e c g e c} <e'4 c e, g,> <e c e, g,> |
  \times 2/3 {g8 d b g d b} <g''4 b, d, g,> <g b, d, g,> |
  \times 2/3 {c8 a fis c a fis} <fis'4 a, d,> <fis a, d,> |
  %40
  <g b, d,> \times 2/3 {b,8 c d e fis g a, b c |
  d e fis g, a b c d e fis, g a |
  b c d d e fis g fis e d c b |
  b g b} a4 r2 |
  \times 2/3 {bes8 bes bes bes bes bes cis cis cis cis cis cis |
  d d d d d d a a a a a a |
  a a a a a a g g g e e e |
  a d cis d a fis} d4 r^\fermata |
  %48 page 12
  \times 2/3 {g'8 d c b a g} <e'4 c e, g,> \times 2/3 {g8 fis e} |
  <g4 b, d,> \times 2/3 {g8 d b} <a'4 c, d,> \times 2/3 {c,8 b a |
  b d c b a g e' g fis g fis e} |
  \six \times 4/6 {[d e fis? g a b] [c, a' g fis! d c]} |
  \three \times 2/3 {b g d} g,4 r2 |
  c'4 \times 2/3 {es8 d c} d4 \times 2/3 {f8 es! d} |
  es4 \times 2/3 {es8 f g as g f es d c} |
  d4 \times 2/3 {d8 es f g f es d c b!} |
  c4 \times 2/3 {c8 d es f es d d c b!} |
  %57
  b4 \times 2/3 {d8 c b!} \grace b c4 \times 2/3 {es8 d c} |
  \grace {\noStroke cis} d4 \times 2/3 {f8 es d es f g as g f |
  f es d d c b! b a g} g,4 |
  \times 2/3 {<e''8 c e,> e e <e c e,> e e <e c e,> e e <e c e,> e e |
  %61 Note: The last f looks quite much like a g in the manuscript
  e, g c a c f e g c, d f b, |
  c b a a g fis c' b a a g fis |
  d' c b d e f! f e d d c b} |
  %64
  \six \times 4/6 {[e g f e d c] [d f e d c b]} |
  \three \times 2/3 {c e c c g e c c c c c c |
  c'' a f c a f c c c c c c |
  c'' g e c g e c c c c c c |
  f' d b f d b d d d d d d} |
  <e4 c> \times 2/3 {g'8 e bes a f' e d c b} |
  %70
  c4. es16 d [c8. bes16 as8. g16] |
  fis4. d'16 c [b!8. a!16 g8. f16] |
  \times 2/3 {e8 g bes a c f e g c, d f b,? |
  c( e )g g( e )e e( c )c c( g )g |
  g e e} \times 2/3 <{e e e e e e e e e} {g, g g g g g g g g}> |
  %75
  <e'2 c e, g,> r2^\fermata \bar "|."
}
