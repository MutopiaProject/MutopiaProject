\version "2.19.82"

\relative c'' {
  \override Beam.auto-knee-gap = #5
  R4. | % 1
  \clef "treble" c8 c,8 d8 | % 2
  es8 r8 f8 | % 3
  d8 r8 es8 | % 4
  c8 r8 d8 | % 5
  h8 r8 \clef "bass" c8 | % 6
  as8 f8 d8 | % 7
  g8 r16 f'16 es16 d16 | % 8
  c8 r4 |%10
  \clef "treble" c'8 c,8 d8 | % 10
  es8 r8 f8 | % 11
  d8 r8 es8 | % 12
  c8 r8 d8 | % 13
  h8 r8 \clef "bass" c8 | % 14
  as8 f8 g8 | % 15
  c,8 g8 es8 | % 16
  c4 r8 | % 17
  g''8 f8 es8 | % 18
  d8 c8 b8 |%20
  es8 g8 f8 | % 20
  e8 g8 c,8 | % 21
  f8 as8 des,8 | % 22
  b'8 c,8 c'8 | % 23
  b16 as16 b16 as16 g16 f16 | % 24
  b8 f8 as8 | % 25
  d,8 f8 b,8 | % 26
  es,8 g'8 b8 | % 27
  e,8 g8 c,8 | % 28
  f,8 as'8 c8 |%30
  f,8 as8 d,8 | % 30
  es8 as,8 f'8 | % 31
  g,8 g'8 \clef "treble" r16 f'16 | % 32
  es16 f16 g16 a16 h16 g16 | % 33
  c8 c,8 d8 | % 34
  es8 r8 f8 | % 35
  d8 r8 es8 | % 36
  c8 r8 d8 | % 37
  h8 r8 \clef "bass" c8 | % 38
  as8 f8 d8 |%40
  g8 r16 f'16 es16 d16 | % 40
  c8 r4 | % 41
  \clef "treble" c'8 c,8 d8 | % 42
  es8 r8 f8 | % 43
  d8 r8 es8 | % 44
  c8 r8 d8 | % 45
  h8 r8 \clef "bass" c8 | % 46
  as8 f8 g8 | % 47
  c,16 es16 g16 c,16 es16 g16 | % 48
  c8 c,8 c'8 ~ |%50
  c8 c,16 c'16 b16 as16 | % 50
  b8 b,8 b'8 ~ | % 51
  b8 b,16 b'16 as16 g16 | % 52
  as8 as,8 as'8 ~ | % 53
  as8 as,16 as'16 g16 f16 | % 54
  g8 f8 es8 | % 55
  b'8 b,8 b'8 ~ | % 56
  b8 es,8 f8 | % 57
  g8 b8 r8 | % 58
  as8 g8 es8 |%60
  b8 b'8 as8 | % 60
  g8 g,8 g'8 ~ | % 61
  g8 as,8 \once \tieDown g'8 ~ | % 62
  g8 b,8 f'8 | % 63
  es4 r16 d16 | % 64
  es16 f16 es16 d16 c16 h16 | % 65
  c16 g'16 a16 h16 c16 d16 | % 66
  es8 f,8 r16 es'16 | % 67
  d8 es,8 r16 d'16 | % 68
  c8 d,8 r16 c'16 |%70
  h8 c,8 r16 es16 | % 70
  as8 g8 f8 | % 71
  g16 f16 g16 as16 f16 g16 | % 72
  es16 d16 es16 f16 d16 es16 | % 73
  c8 c'8 d8 | % 74
  es8 r8 f8 | % 75
  d8 r8 es8 | % 76
  c8 r8 d8 | % 77
  h8 r8 c8 | % 78
  as8 f8 g8 |%80
  c,8 g16 f16 es16 d16 | % 80
  c8 c''8 b8 | % 81
  a8 g8 f8 | % 82
  b,8 b'8 a8 | % 83
  g8 f8 es8 | % 84
  a,8 a'8 g8 | % 85
  fis8 e8 d8 | % 86
  g8 es8 c8 | % 87
  d16 es16 d16 c16 b16 a16 | % 88
  g8 g'8 a8 |%90
  b4 c8 | % 90
  d8 es,8 r8 | % 91
  c'8 d,8 r8 | % 92
  b'8 c,8 r8 | % 93
  a'8 b,8 r8 | % 94
  r8 c8 d8 | % 95
  g,16 as'16 g16 f16 es16 d16 | % 96
  es8 f8 g8 | % 97
  c,16 \clef "treble" c''16^2 h16^1 a16 g16 f16 | % 98
  es8. g16 f16 es16 |%100
  d8. f16 es16 d16 | % 100
  c8. es16 d16 c16 | % 101
  h8. d16 c16 b16 | % 102
  as8 as'8 f8 | % 103
  g16 as16 g16 f16 es16 d16 | % 104
  \clef "bass" c16 es16 d16 c16 b16 as16 | % 105
  g16 c16 b16 as16 g16 f16 | % 106
  \voiceTwo es8. g16 f16 es16 | % 107
  d8. f16 es16 d16 | % 108
  c8. es16 d16 c16 |%110
  h8. d16 c16 b16 | % 110
  as16 c16 f,8 g8 | % 111
  c,4. _\fermata
}