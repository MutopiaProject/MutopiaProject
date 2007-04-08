\version "1.6.0"

% Note: This movement has identical parts for mandolin 1 & 2.

noStroke =  \property Voice.Stem \set #'stroke-style = #'()

IIMand = \notes \relative c''' {
  \clef "treble"
  \key g\minor
  \time 2/4
  \property Voice.tupletSpannerDuration = #(make-moment 1 8)
  % end beams on eighths by default
  \property Voice.autoBeamSettings \override
    #'(end * * * *) = #(make-moment 1 8)

  %1 page 9
  g8 <g4 \\ bes,> \times 2/3 {bes16 a g} |
  d8 <d4 fis,> \times 2/3 {es16( d )c} |
  bes8 <bes4 \\ g> \times 2/3 {c16 bes a} | [g8 d] g,4 |
  g''8 <g4 \\ bes,> \times 2/3 {bes16 a g} |
  d8 <d4 \\ fis,> \times 2/3 {es16 d c} |
  bes8 <bes4 \\ g> \times 2/3 {c16 bes a} |
  [g8 d] [g, \times 2/3 {bes''16 a g]} |
  %9
  f8 <f4 \\ a,> \times 2/3 {g16 f es} |
  d8 <d4 \\ f,> \times 2/3 {f16 es d} |
  c8 \times 2/3 {es16 d c g' f es d c bes |
  a g f} f4 \times 2/3 {a'16 g f |
  bes a g} \grace {\noStroke f8} es4 \times 2/3 {g16 f es |
  %14 page 10
  a g f} d4 \times 2/3 {f16 es d | g f es d es c} [bes8 a] |
  bes4. \times 2/3 {d16 c bes} |
  f'8 <f4 \\ b,> \times 2/3 {as16 g f |
  es d c} c4 \times 2/3 {es16 d c} |
  g'8 <g4 cis,> \times 2/3 {bes16 a g |
  fis e d} d4 \times 2/3 {es16 d c} |
  %21
  <bes8 d,> \times 2/3 {d16 c bes} <a8 d,> \times 2/3 {es'16 d c} |
  \grace {\noStroke c8} bes8. a32 bes [a8 \times 2/3 {es'16 d c]} |
  <bes8 d,> \times 2/3 {d16 c bes} <a8 d,> \times 2/3 {es'16 d c} |
  <g'8. bes, d,> fis32( )g \times 2/3 {a16 g fis es d c} |
  <bes8. d, g,> c32( )d \times 2/3 {es16 d c bes a g} |
  d8. g32( )a a4 |
  %27 page 11
  <g'8. bes, d,> fis32 g \times 2/3 {a16 g fis es d c} |
  %28 Note: Dotted eighths in 28,29 are not dotted in the manuscript
  <bes8. d, g,> c32 d \times 2/3 {es16 d c bes a g} |
  d8. g32 a a4 | [g8 d] g,4 \bar "|."
}

