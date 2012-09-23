\version "2.16.0"

% Note: This movement has identical parts for mandolin 1 & 2.

IIMand =  \relative c''' {
  \clef "treble"
  \key g\minor
  \time 2/4
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  % end beams on eighths by default
  \set Timing.baseMoment = #(ly:make-moment 1 8)
%  \set Timing.beamExceptions = #'((end . (
%    ((1 . 32) . (2 2 2 2 2 2 2 2))
%  )))

  %1 page 9
  g8 <<g4 \\ bes,>> \times 2/3 {bes'16 a g} |
  d8 <d fis,>4 \times 2/3 {es16( d  c)} |
  bes8 <<bes4 \\ g>> \times 2/3 {c16 bes a} |  g8[ d] g,4 |
  g''8 <<g4 \\ bes,>> \times 2/3 {bes'16 a g} |
  d8 <<d4 \\ fis,>> \times 2/3 {es'16 d c} |
  bes8 <<bes4 \\ g>> \times 2/3 {c16 bes a} |
   g8[ d]  g,[ \times 2/3 {bes''16 a g]} |
  %9
  f8 <<f4 \\ a,>> \times 2/3 {g'16 f es} |
  d8 <<d4 \\ f,>> \times 2/3 {f'16 es d} |
  c8 \times 2/3 {es16[ d c] g'[ f es] d[ c bes] |
  a g f} f4 \times 2/3 {a'16 g f |
  bes a g} \grace f8 es4 \times 2/3 {g16 f es |
  %14 page 10
  a g f} d4 \times 2/3 {f16 es d | g f es d es c}  bes8[ a] |
  bes4. \times 2/3 {d16 c bes} |
  f'8 <<f4 \\ b,>> \times 2/3 {as'16 g f |
  es d c} c4 \times 2/3 {es16 d c} |
  g'8 <g cis,>4 \times 2/3 {bes16 a g |
  fis e d} d4 \times 2/3 {es16 d c} |
  %21
  <bes d,>8 \times 2/3 {d16 c bes} <a d,>8 \times 2/3 {es'16 d c} |
  \grace c8 bes8. a32 bes  a8[ \times 2/3 {es'16 d c]} |
  <bes d,>8 \times 2/3 {d16 c bes} <a d,>8 \times 2/3 {es'16 d c} |
  <g' bes, d,>8. fis32(  g) \times 2/3 {a16[ g fis] es[ d c]} |
  <bes d, g,>8. c32(  d) \times 2/3 {es16[ d c] bes[ a g]} |
  d8. g32(  a) a4 |
  %27 page 11
  <g' bes, d,>8. fis32 g \times 2/3 {a16[ g fis] es[ d c]} |
  %28 Note: Dotted eighths in 28,29 are not dotted in the manuscript
  <bes d, g,>8. c32 d \times 2/3 {es16[ d c] bes[ a g]} |
  d8. g32 a a4 |  g8[ d] g,4 \bar "|."
}

