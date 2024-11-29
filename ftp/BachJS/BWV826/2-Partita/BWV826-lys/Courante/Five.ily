\version "2.19.82"

\relative c {
  s8 | % 0
  r4 c2. ~ c2 | % 1
  c4 r4 s1 | % 2
  s1.*2 | % 4
  as'4 d,4 es4. f8 g4 g,4 | % 5
  c2. r4 r2 | % 6
  g'2. g4 a4 f4 | % 7
  b4 s4 s1 | % 8
  d,1~ d2 |%10
  d16 d'16 c16 b16 c8 a8 fis2 r4 g4 | % 10
  c,4 es8 d8 c8 b8 es8 c8 d4 d,4 | % 11
  s4 d'2 ~ d2 s4 | % 12
  \oneVoice r4 \voiceTwo g2. ~ g2 | % 13
  g4 ~ g16 g'16 f16 es16 d8 c8 h8 c16 d16 g,4. \mordent g8 | % 14
  as4 d,4 es4 f4 g4 g,4 | % 15
  c4 ~ c16 g16 a16 h16 \oneVoice c8 d8 es8 c8 b'4. as8 | % 16
  g4. f8 e8 f8 g8 as8 b8 des8 c8 b8 | % 17
  as8 c8 as8 f8 des4 b4 c4 c,4 | % 18
  f2 ~ f16 b'16 as16 g16 f8 es8 d4 b4 |%20
  es4 ~ es16 g,16 a16 h16 c8 d8 es8 c8 as'4. as8 | % 20
  \voiceTwo g2 ~ g2 ~ g2 ~ | % 21
  g16 g16 f16 es16 f8 d8 h2 c2 | % 22
  f4. d8 es4 as8 f8 g4 g,4 | % 23
  s4 \stemUp g2
}