\version "2.19.82"

\relative g' {
  <g c>4
  r16 c16 h16. c32 d4 r16 d16 d16. es32 | % 1
  f8. f16 f8 r8 <g, c>4 r16 es'16 es16. f32 | % 2
  c4 r16 g16 g16. as32 b8. b16 \stemUp \shiftR des16 c32 b32 c16. g32 | % 3
  \stemDown <as c>4 r4 r16 f16 f16. g32 g4 | % 4
  r16 es16 es16. f32 f4 g16. a32 g16. a32 h4 ~ | % 5
  h8. d,16 f8. as16 g16. f32 es16. d32 es16. d32 es16. f32
  | % 6
  s4 \stemUp \shiftR es'16 d32 c32 d16. a32 \stemDown <d h>2 | % 7
  s1*21 | % 28
  s4 s8 g,8 ~ g4 d4 |%30
  d8 s8 s2 | % 30
  s2.*59 |%90
  r8 r16 <es a>16 <d g>2 | % 90
  <es g>2.
}