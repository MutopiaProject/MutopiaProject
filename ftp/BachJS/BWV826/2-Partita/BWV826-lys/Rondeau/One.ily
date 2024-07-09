\version "2.19.82"

\relative c''' {
  c8 c,8 d8 \prall es4 f8
  | % 2
  g8 as,8 r8 | % 3
  f'8 g,8 r8 | % 4
  es'8 f,8 r8 | % 5
  d'8 es,8 r8 | % 6
  r8 c'16 h16 c16 d16 | % 7
  h16 a16 g8 r8 | % 8
  c'8 c,8 d8 es4 f8 | % 10
  g8 as,8 r8 | % 11
  f'8 g,8 r8 | % 12
  es'8 f,8 r8 | % 13
  d'8 es,8 r8 | % 14
  r16 c'16 d,16 f16 c'16 h16 | % 15
  c4. | % 16
  es,16 d16 es16 f16 g16 as16 | % 17
  b16 es16 b16 as16 b8 ~ | % 18
  b16 f'16 b,16 as16 b8 ~ |%20
  b16 g'16 b,16 as16 b8 ~ | % 20
  b16 des16 c16 b16 as16 g16 | % 21
  as16 c16 f16 c16 as'8 ~ | % 22
  as16 f16 as16 g16 f16 e16 | % 23
  f4. ~ | % 24
  f16 as16 d,16 es16 f16 d16 | % 25
  c16 b16 c16 d16 es16 f16 | % 26
  g16 b16 es,16 f16 g16 es16 | % 27
  des16 c16 d16 e16 f16 g16 | % 28
  as16 c16 f,16 g16 as16 f16 |%30
  es16 des16 c16 h16 g'8 ~ | % 30
  g16 c,16 f16 es16 d16 c16 | % 31
  h16 c16 d16 h16 g8 | % 32
  c'8 c,8 d8 | % 33
  es4 f8 | % 34
  g8 as,8 r8 | % 35
  f'8 g,8 r8 | % 36
  es'8 f,8 r8 | % 37
  d'8 es,8 r8 | % 38
  r8 c'16 h16 c16 d16 |%40
  h16 a16 g8 r8 | % 40
  c'8 c,8 d8 es4 f8 | % 42
  g8 as,8 r8 | % 43
  f'8 g,8 r8 | % 44
  es'8 f,8 r8 | % 45
  d'8 es,8 r8 | % 46
  r16 c'16 d,16 f16 c'16 h16 | % 47
  c4 r8 | % 48
  r16 es16 c16 g16 as16 es16 |%50
  f16 as16 d8 r8 | % 50
  r16 d16 b16 fis16 g16 d16 | % 51
  e16 g16 c8 r8 | % 52
  r16 c16 as16 e16 f16 c16 | % 53
  d16 f16 b8 r8 | % 54
  r16 b16 c16 d16 es16 f16 | % 55
  g16 es16 f16 d16 b16 d16 | % 56
  f16 as16 g16 es16 b16 d16 | % 57
  es16 g16 f16 d16 as16 c16 | % 58
  d16 f16 es16 c16 ges16 a16 |%60
  c16 es16 d16 b16 f16 as16 | % 60
  b16 es16 b16 g16 es16 d16 | % 61
  es16 b'16 g16 es16 \down b16 as16 | % 62
  b16 \up g'16 es16 \down b16 as16 \up d16 | % 63
  \down \stemUp g,16 es'16 b16 g16 es8 | % 64
  \up \stemNeutral r16 g'16 a16 h16 c16 d16 | % 65
  es16 d16 c16 d16 es16 f16 | % 66
  g16 g,16 as16 c16 f8 ~ | % 67
  f16 f,16 g16 b16 es8 ~ | % 68
  es16 es,16 f16 h16 d8 ~ |%70
  d16 d,16 es16 g16 c8 ~ | % 70
  c16 h16 c16 es16 as16 c,16 | % 71
  h16 a16 g8 r8 | % 72
  c'8 c,8 d8 | % 73
  es4 f8 | % 74
  g8 as,8 r8 | % 75
  f'8 g,8 r8 | % 76
  es'8 f,8 r8 | % 77
  d'8 es,8 r8 | % 78
  r16 c'16 d,16 f16 c'16 h16 |%80
  c4. | % 80
  \voiceOne es4. ~ | % 81
  es4 d16 es32 f32 | % 82
  \grace { es8 } d4. ~ | % 83
  d8 es16 f16 g16 es16 | % 84
  c4. ~ | % 85
  c8 \override TupletBracket #'stencil = ##f
  \override TupletNumber #'stencil = ##f
  \times 2/3 {
    d16[ c16 b16]
  }
  \times 2/3 {
    c16[ b16 a16]
  }
  | % 86
  \times 2/3 {
    \oneVoice b16[ a16 g16]
  }
  \times 2/3 {
    c16[ b16 a16]
  }
  \times 2/3 {
    b16[ a16 g16]
  }
  | % 87
  fis8. a16 d16 c16 | % 88
  b16 a16 b16 d16 c16 es16 |%90
  d16 b16 g16 g'16 a,16 g'16 | % 90
  b,16 g'16 c,16 d16 es16 c16 | % 91
  a16 f'16 b,16 c16 d16 b16 | % 92
  g16 es'16 a,16 b16 c16 a16 | % 93
  fis16 d'16 g,16 a16 b16 g16 | % 94
  d16 c'16 b16 a16 g16 fis16 | % 95
  g4. ~ | % 96
  g16 c'16 h16 a16 g16 f16 | % 97
  es4 f8 | % 98
  g16 b,16 as8 r8 |%100
  f'16 as,16 g8 r8 | % 100
  es'16 g,16 f8 r8 | % 101
  d'16 f,16 es8 r8 | % 102
  r16 g'16 f16 es16 d16 c16 | % 103
  h16 c16 d16 h16 g8 ~ | % 104
  g16 c16 b16 as16 g16 f16 | % 105
  es4 f8 | % 106
  \stemUp g16 \down b,16 as8 \up r8 | % 107
  f'16 \down as,16 g8 \up r8 | % 108
  es'16 \down g,16 f8 r8 |
  %110
  \up d'16 \down f,16 es8 r8 | % 110
  r8 <es as c>8 <d g h>8 | % 111
  <es g c>4. ^\fermata
}