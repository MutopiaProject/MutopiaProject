\version "2.19.82"

\relative c {
  \override Beam.auto-knee-gap = #2
  c4 r8 c8 | % 1
  d4 r4 | % 2
  r8 es8 f8 g8 | % 3
  c,8 c'8 b8 a8 | % 4
  \oneVoice g4 r8 g8 | % 5
  a4 r4 | % 6
  r8 b,8 \voiceTwo c8 d8 | % 7
  \oneVoice g,8 d'8 g4-\markup { \finger "1 - 5" } ~ | % 8
  g8 a16 g16 fis16 e16 d16 c16 |%10
  b8 d'8 a,8 c'8 | % 10
  g,8 b'8 f,8 as'8 | % 11
  e,8 g'8 c,,8 e'8 | % 12
  f,8 as'8 es,8 g'8 | % 13
  d,8 f'8 b,,8 d'8 | % 14
  es,8 es'8 f8 g8 | % 15
  as8 r8 r4 | % 16
  r8 d,8 es8 f8 | % 17
  g8 r8 r4 | % 18
  r8 g8 c4 ~ |%20
  c8 d16 c16 h16 a16 g16 f16 | % 20
  es8 g'8 d,8 f'8 | % 21
  c,8 es'16 d16 c8 es8 | % 22
  a,8 c8 f,8 a8 | % 23
  b,8 d'16 c16 b8 d8 | % 24
  g,8 b8 es,8 g8 | % 25
  a,8 c'16 b16 a8 c8 | % 26
  fis,8 a8 d,8 fis8 | % 27
  \voiceTwo g,8 r8 b8 r8 | % 28
  a8 r8 c8_2_5 r8 |%30
  r8 b8 c8 d8 | % 30
  g,8 r8 b8 r8 | % 31
  r4 c8 r8 | % 32
  f8 r8 as,8 r8 | % 33
  r4 b8 r8 | % 34
  r16 f'16 es16 d16 c16 b16 as16 g16 | % 35
  f16 es'16 d16 c16 b16 as16 g16 f16 | % 36
  es16 d'16 c16 b16 as16 g16 f16 es16 | % 37
  d16 c'16 h16 a16 g16 f16 es16 d16 | % 38
  c8 c'4 h8 |%40
  c4 r16 c16 d16 es16 | % 40
  f8 r8 r4 | % 41
  b,4 r16 b16 c16 d16 | % 42
  es8 r8 \oneVoice r4 | % 43
  r8 \voiceTwo as,8 b8 c8 | % 44
  f,8 c'8 f4 ~ | % 45
  f16 es16 d16 f16 es16 d16 c16 b16 | % 46
  as8 g8 as4\prall | % 47
  g2 | % 48
  g'4 r8 f8 |%50
  es4 d4 | % 50
  c8 r8 d8 r8 | % 51
  es4 r8 e8 | % 52
  f4 b8 c8 | % 53
  \UP f8 r8 g8 r8 | % 54
  as8 \down f,8 \oneVoice g8 as8 | % 55
  b8 r8 r4 | % 56
  r8 es,8 f8 g8 | % 57
  as4 r4 | % 58
  r8 d,8 es8 f8 |%60
  g8 d8 g,4 ~ | % 60
  g8 f16 g16 a16 h16 c16 d16 | % 61
  es8 c,8 f'8 d,8 | % 62
  g'8 es,8 as'8 f,8 | % 63
  g'16 g,16 g'16 as16 g16 f16 es16 d16 | % 64
  c16 g'16 c16 d16 c16 b16 a16 g16 | % 65
  f16 f,16 f'16 g16 f16 es16 d16 c16 | % 66
  b16 f'16 b16 c16 b16 as16 g16 f16 | % 67
  es16 es,16 es'16 f16 es16 d16 c16 b16 | % 68
  a16 g16 a16 b16 c16 d16 es16 c16 |%70
  d16 c16 d16 e16 fis16 g16 a16 fis16 | % 70
  g8 es8 c8 d8 | % 71
  g,8 r8 es'8 r8 | % 72
  b16 g'16 fis16 g16 c,16 a'16 fis16 g16 | % 73
  d16 b'16 fis16 g16 es16 c'16 fis,16 g16 | % 74
  fis,16 es'16 d16 c16 b16 a16 g16 fis16 | % 75
  g16 f16 es16 d16 c8 d8 | % 76
  g16 fis16 g16 a16 h16 c16 d16 es16 | % 77
  f16 es16 d16 es16 f16 g16 a16 h16 | % 78
  c4 r8 c8 |%80
  e,4 r8 c'8 | % 80
  f,8 as'8 es,8 g'8 | % 81
  d,8 f'8 b,,8 d'8 | % 82
  es,8 g'8 d,8 f'8 | % 83
  c,8 es'8 as,,8 c'8 | % 84
  d,8 f'8 c,8 es'8 | % 85
  h,8 d'8 g,,8 h'8 | % 86
  c,8 g'8 c4 ~ | % 87
  c8 d16 c16 h16 a16 g16 f16 | % 88
  es16 d16 c16 d16 es16 f16 g16 es16 |%90
  as16 g16 f16 g16 as4 ~ | % 90
  as16 as16 g16 f16 es16 d16 c16 b16 | % 91
  as16 g'16 f16 es16 d16 c16 h16 a16 | % 92
  g16 es'16 d16 c16 h16 a16 g16 f16 | % 93
  es16 as16 g16 f16 es16 d16 es16 f16 | % 94
  g16 c16 es16 fis16 g8 g,8 | % 95
  <c, c'>2
}