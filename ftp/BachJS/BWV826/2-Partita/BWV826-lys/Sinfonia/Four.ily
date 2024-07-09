\version "2.19.82"

\relative es {
  <es g c>4
  r4 <d f as h>4 r4 | % 1
  r4 <d f h>4 <es g c>4 r4 | % 2
  <e g c>4 r4 r4 <g c>4 | % 3
  <f as c>4 r4 r16 <d as'>16 <d as'>16. <d g>32 <d g>4 | % 4
  r16 <g c,>16 <g c,>16. f32 f4 ~ <f d>4 r16 f16 f16. g32 | % 5
  as8. as16 ~ as16 g32 f32 g16 d16 <es c>4 r4 | % 6
  r4 <c es a>4 <d g>2 | % 7
  \oneVoice c8 c'8 f,8 g8 es8 c8 es8 g8 | % 8
  c8 as8 es8 f8 g8 g,8 \UP r16 f''16 es16 d16 |
  %10
  es8 g8 e8 c8 f8 as8 f8 c8 | % 10
  d8 f8 d8 b8 es8 g8 es8 c8 | % 11
  \down \oneVoice as8 c8 f8 as,8 g8 c8 es8 g,8 | % 12
  f8 as8 g8 f8 es8 g8 f8 es8 | % 13
  d8 f8 as8 c,8 h8 d8 g8 d8 | % 14
  es8 as,8 f8 g8 c,4 ~ c16 d32 es32 f32 g32 a32 h32 | % 15
  c8 c'8 b8 as8 g8 b8 g8 es8 | % 16
  as8 c8 as8 f8 b8 as8 g8 f8 | % 17
  e8 g8 c8 e,8 f8 as8 f8 des8 | % 18
  b8 g8 c8 c,8 f16 g32 as32 b32 c32 d32 e32 f8 es8 |
  %20
  d8 f8 d8 b8 g'8 b8 es,8 g8 | % 20
  a,8 fis'8 g8 g,8 d'8 a'8 c8 d,8 | % 21
  g8 a8 b8 h8 c8 d8 es8 c8 | % 22
  a8 g8 d'8 d,8 g8 a8 h8 g8 | % 23
  c8 es8 c8 a8 b8 d8 b8 g8 | % 24
  a8 c8 a8 fis8 g8 b8 g8 es8 | % 25
  c16 d32 es32 f32 g32 as32 b32 c16 c,16 c'8 ~ c32 c,32 d32
  es32 f32 g32 as32 b32 c16 c,16 c'8 ~ | % 26
  c8 c,8 b8 b'8 fis8 d8 g8 es8 | % 27
  \voiceOne <e g>4 ^\fermata r4 <g b d>2 | % 28
  cis4 ~ cis8. cis16 d8 c16 b16 a16 b16 a8 |
  %30
  <g h>8 r8 r2 | % 30
  \oneVoice
  R2.*2 | % 32
  \clef "treble" r8 c16 d16 es8 f8 g8 as8 | % 33
  b16 as16 g16 as16 b8 c8 des8 g,8 | % 34
  b8 e,8 g8 c,8 c'16 b16 as16 g16 | % 35
  as8 f8 g8 as8 b8 as8 | % 36
  g8 es8 f8 g8 as8 g8 | % 37
  f8 es8 f8 d8 es8 f8 | % 38
  g8 g,16 a16 h8 c8 d8 es8 |%40
  f16 es16 d16 es16 f8 g8 as8 d,8 | % 40
  f8 h,8 d8 g,8 g'16 f16 es16 d16 | % 41
  \clef "bass" es16 d16 c8 ~ c16 es16 d16 c16 b16 a16 g16 f16
  | % 42
  d'16 c16 b8 ~ b16 d16 c16 b16 a16 g16 fis16 g16 | % 43
  c16 b16 a8 ~ a16 c16 b16 a16 g16 fis16 e16 d16 | % 44
  b'8 d8 g,8 b8 e,8 cis'8 | % 45
  d8 d,8 ~ d8 c16 b16 a16 g16 fis16 e16 | % 46
  d4 ~ d16 e16 fis16 g16 a16 b16 c16 a16 | % 47
  fis8 es'8 ~ es16 a,16 b16 c16 b16 a16 g16 fis16 | % 48
  g4 r16 g'16 as16 b16 as16 g16 f16 es16 |%50
  d8 f8 d8 b8 c8 d8 | % 50
  es8 es,8 r16 es'16 f16 g16 f16 es16 d16 c16 | % 51
  h8 d8 h8 g8 a8 h8 | % 52
  c8 c,8 \UP r16 d''16 es16 f16 es8 d8 | % 53
  \down \oneVoice c8 c,8 r16 as'16 b16 c16 b8 as8 | % 54
  g8 c,8 \UP r16 d'16 e16 f16 e8 d8 | % 55
  \down \oneVoice c8 c,8 r16 d16 e16 f16 e8 c8 | % 56
  f8 f,8 \clef "treble" r16 g''16 as16 b16 as8 g8 | % 57
  f8 f,8 r16 des'16 es16 f16 es8 des8
  | % 58
  c8 f,8 r16 g'16 a16 b16 a8 g8
  |%60
  f8 f,8 \clef "bass" r16 g16 a16 b16 a8 f8 | % 60
  b16 c16 des8 ~ des16 c16 b16 as16 g16 f16 g16 b16 | % 61
  as16 b16 c8 ~ c16 b16 as16 g16 f16 e16 f16 as16 | % 62
  g16 des'16 g,16 f16 g16 as16 b16 c16 b16 as16 g16 f16 | % 63
  c'8 b16 as16 g16 c16 b16 as16 g16 f16 e16 d16 | % 64
  c4 ~ c16 d16 e16 f16 g16 as16 b16 g16 | % 65
  e8 des'8 ~ des16 g,16 as16 b16 as16 g16 f16 e16 | % 66
  f16 g16 as16 f16 d8 f8 b,8 as'8 | % 67
  es16 f16 g16 es16 c8 es8 as,8 g'8 | % 68
  d16 es16 f16 d16 h8 d8 g,8 f'8 |%70
  c16 d16 es16 c16 as16 c16 g16 c16 fis,16 es'16 d16 c16 | % 70
  h16 a16 g16 a16 h8 c8 d8 es8 | % 71
  f16 es16 d16 es16 f8 g8 as8 d,8 | % 72
  f8 h,8 d8 g,8 g'16 f16 es16 d16 | % 73
  es16 d16 c16 d16 es8 f8 g8 as8 | % 74
  b16 as16 g16 f16 es16 b'16 f16 es16 des16 b'16 es,16 des16
  | % 75
  c16 b16 as16 b16 c8 d8 e8 f8 | % 76
  g16 f16 e16 d16 c16 g'16 des16 c16 b16 g'16 c,16 b16 | % 77
  as16 f'16 as,16 g16 f16 c'16 des16 g,16 a16 es'16 f16 h,16
  | % 78
  c16 f16 es16 d16 c16 g'16 as16 d,16 es16 h'16 c16 f,16 |
  %80
  g8 g,8 \clef "treble" r16 a''16 h16 c16 h8 a8 | % 80
  g8 g,8 r16 es'16 f16 g16
  f8 es8 | % 81
  d8 g,8 \clef "bass" r16 a16 h16 c16 h8 a8 | % 82
  g8 g,8 r8 g''16 f16 es16 d16 c16 h16
  | % 83
  c8 c,16 d16 es8 f8 g8 as8 | % 84
  b16 as16 g16 as16 b8 c8 des8 g,8 | % 85
  b8 e,8 g8 c,8 c'16 b16 as16 g16 | % 86
  as4 ~ as16 b16 as16 g16 f16 g16 as16 f16 | % 87
  g16 f16 es16 d16 c16 b16 as16 g16 f16 f'16 e16 f16 | % 88
  as16 f16 e16 f16 h,16 f'16 es16 d16 es16 g16 c,16 es16 |
  %90
  fis,8. fis'16 g4 g,4 | % 90
  c,2.
}