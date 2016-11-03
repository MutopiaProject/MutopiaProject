pieceName = "7. ARIE."
instInfo = #(format "~A, ~A, ~A, ~A"
  #'sopranoName #'fluteName #'violinName #'continuoName )

global = {
  \key a \major
  \time 6/8
}

globalMarksBreaks = {
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  s2.*102\mark\markup{ \fontsize #-2 { \italic "Da Capo." } }
  \bar "|."
}

fluteMusic = \relative cis'' {
  \clef "treble" \global \tempo 4=64
  r8 r8 cis8 b8( a8) gis8 | % 2
  a8( e8) e8 b'16( d16 cis16 a16 b16 gis16) | % 3
  a8( e8) e8 d'16( fis16 e16 cis16) d16( b16) | % 4
  cis16( e16 d16 b16) cis16( a16) a'16( gis16 fis16 e16 d16 cis16) | % 5
  b16( cis16 d16 b16 gis'16 d16) b'16( d,16 gis16 d16 e16 d16) | % 6
  b16( cis16 d16 b16 gis'16 d16) b'16( d,16 gis16 d16 e16 d16) | % 7
  cis16( d16 e16 cis16 a'16 e16) cis'16( e,16 a16 e16 d16 e16) | % 8
  cis16( d16 e16 cis16 a'16 e16) cis'16( e,16 a16 e16 cis16 e16) | % 9
  a,16( b16 cis16 a16 e'16 a,16) g'16( a,16 e'16 a,16 cis16 a16) | % 10
  a16( b16 cis16 a16 e'16 a,16) g'16( a,16 e'16 a,16 cis16 a16) | % 11
  fis'8 d8 b8~ b16 gis16( a16 b16 cis16 d16) | % 12
  e8 cis8 a8~ a16 fis16( gis16 a16 b16 cis16) | % 13
  d16( cis16 b16 cis16 d16 e16) fis16( gis16 a16 fis16 gis16 a16) | % 14
  gis16( a16 b16 gis16 e16 d16) cis16( d16 e16 cis16 a16 gis16) | % 15
  fis16( gis16 a16 fis16 d'16 b16) gis16( a16 b16 gis16 e'16 cis16) | % 16
  a16( b16 cis16 a16) fis'8-.
  \appoggiatura fis8 e8( d16 cis16 b16 cis16) | % 17
  a4 r8 r4. | % 18
  R2.*3 | % 21
  b16( cis16 d16 b16 gis'16 d16) b'16( d,16 gis16 d16 e16 d16) | % 22
  b16( cis16 d16 b16 gis'16 d16) b'16( d,16 gis16 d16 e16 d16) | % 23
  cis16( d16 e16 cis16 a'16 e16) cis'16( e,16 a16 e16 d16 e16) | % 24
  cis16( d16 e16 cis16 a'16 e16) cis'16( e,16 a16 e16 cis16 e16) | % 25
  a,4 r8 r4. | % 26
  R2.*3 | % 29
  r4. e16_\pianoDynamicText fis16 gis16 e16 b'16 e,16 | % 30
  d'16 e,16 b'16 e,16 gis16 fis16 e16 fis16 gis16 e16 b'16 e,16 | % 31
  e'16 e,16 cis'16 e,16 b'16 e,16 a16( b16 cis16 a16 e'16 a,16) | % 32
  g'16( a,16 e'16 a,16 cis16 b16) a16( b16 cis16 a16 e'16 a,16) | % 33
  fis'4 r8 r4. | % 34
  R2.*9 | % 43
  b,16( cis16 d16 b16 gis'16 d16) b'16( d,16 gis16 d16 e16 d16) | % 44
  b16( cis16 d16 b16 gis'16 d16) b'16( d,16 gis16 d16 e16 d16) | % 45
  cis16( d16 e16 cis16 a'16 e16) cis'16( e,16 a16 e16 d16 e16) | % 46
  cis16( d16 e16 cis16 a'16 e16) cis'16( e,16 a16 e16 cis16 e16) | % 47
  fis8 r8 r8 r4. | % 48
  R2.*5 | % 53
  r8 r8 cis8_\forteDynamicText b8( a8 gis8) | % 54
  a8( e8) e8 b'16( d16 cis16 a16 b16 gis16) | % 55
  a8( e8) e8 d'16( fis16 e16 cis16 d16 b16) | % 56
  cis16( e16 d16 b16 cis16 a16) a'16( gis16 fis16 e16 d16 cis16) | % 57
  b16( cis16 d16 b16 gis'16 d16) b'16( d,16 gis16 d16 e16 d16) | % 58
  b16( cis16 d16 b16 gis'16 d16) b'16( d,16 gis16 d16 e16 d16) | % 59
  cis16( d16 e16 cis16 a'16 e16) cis'16( e,16 a16 e16 d16 e16) | % 60
  cis16( d16 e16 cis16 a'16 e16) cis'16( e,16 a16 e16 cis16 e16) | % 61
  a,16( b16 cis16 a16 e'16 a,16) g'16( a,16 e'16 a,16 cis16 a16) | % 62
  a16( b16 cis16 a16 e'16 a,16) g'16( a,16 e'16 a,16 cis16 a16) | % 63
  fis'8 d8 b8~ b16 gis16( a16 b16 cis16 d16) | % 64
  e8 cis8 a8~ a16 fis16( gis16 a16 b16 cis16) | % 65
  d16( cis16 b16 cis16 d16 e16) fis16( gis16 a16 fis16 gis16 a16) | % 66
  gis16( a16 b16 gis16 e16 d16) cis16( d16 e16 cis16 a16 gis16) | % 67
  fis16( gis16 a16 fis16 d'16 b16) gis16( a16 b16 gis16 e'16 cis16) | % 68
  a16( b16 cis16 a16) fis'8-. \appoggiatura fis8 e8( d16 cis16 b16 a16) | % 69
  a4\fermata r8 r8 fis'8-._\pianoDynamicText cis8-. | % 70
  r8 a16( b16) cis8-. fis,8-. r8 r8 | % 71
  r8 r8 a'8 gis8( fis8 eis8) | % 72
  fis8( cis8) cis8 gis'16( b16 a16 fis16 gis16 eis16) | % 73
  fis8( cis8) cis8 r8 fis8-. cis8-. | % 74
  r8 d16( e16 fis16 e16 d16 cis16) b8-. e8-. | % 75
  r4. r16 e,16( fis16 gis16 a16 b16) | % 76
  cis8-. r8 r8 r16 b16( a16 b16 cis16 d16) | % 77
  e8-. r8 r8 r8 gis8-. cis,8-. | % 78
  R2. | % 79
  R2. | % 80
  r16 gis'16( e16 fis16 gis16 e16) cis16( dis16 e4)~ | % 81
  e16 a16( fis16 gis16 a16 fis16) dis16( e16 fis4)~ | % 82
  fis16 dis16( e16 cis16) dis16( bis16) cis8 gis8 r8 | % 83
  R2. | % 84
  r8 r8 e'8_\forteDynamicText dis8( cis8 bis8) | % 85
  cis8( gis8) gis8 dis'16( fis16 e16 cis16 dis16 bis16) | % 86
  cis16( dis16 e16 cis16) a'8-. gis8( fis16 e16 dis16 cis16) | % 87
  cis4 r8 r8 cis8-._\pianoDynamicText gis8-. | % 88
  r4. a16( b16 cis8) fis,8-. | % 89
  r8 r8 gis'8 fis8( e8 dis8) | % 90
  e8( b8) b8 fis'16( a16 gis16 e16 fis16 dis16) | % 91
  e8( b8) b8-. r8 e8-. b8-. | % 92
  r8 r16 ais16( b16 cis16 dis16 e16) fis8-. b,8-. | % 93
  r4. gis16( b16 e16 dis16) e8-. | % 94
  r8 a8-. fis8-. dis16( cis16 dis16 fis16) a8-. | % 95
  r16 a16( gis16 fis16 e16 dis16) e16( a,16 gis16 fis16 e16 dis16) | % 96
  e16( fis16 gis16 a16 b16 cis16) dis16( fis16 e16 dis16 e16 cis16) | % 97
  e8( dis8) r8 b16( cis16 d16 b16 gis16 fis16) | % 98
  e8 cis'8 r8 cis16 dis16 e16 cis16 ais'16 cis,16 | % 100
  b16( dis16) fis8-. r8 r16 a16( gis16 fis16 e16 dis16) | % 100
  e4.~ e16 gis16( fis16 e16 dis16 cis16) | % 101
  a'16( fis16 gis16 dis16 e16 b16) cis16 a16 fis8.\trill e16 | % 102
  e4 r8 r4. % 103
}

fluteMusicDaCapo = \relative cis'' {
  % midi only
  r8 r8 cis8 b8 a8 gis8 | % 104
  a8 e8 e8 b'16 d16 cis16 a16 b16 gis16 | % 105
  a8 e8 e8 d'16 fis16 e16 cis16 d16 b16 | % 106
  cis16 e16 d16 b16 cis16 a16 a'16 gis16 fis16 e16 d16 cis16 | % 107
  b16 cis16 d16 b16 gis'16 d16 b'16 d,16 gis16 d16 e16 d16 | % 108
  b16 cis16 d16 b16 gis'16 d16 b'16 d,16 gis16 d16 e16 d16 | % 109
  cis16 d16 e16 cis16 a'16 e16 cis'16 e,16 a16 e16 d16 e16 | % 110
  cis16 d16 e16 cis16 a'16 e16 cis'16 e,16 a16 e16 cis16 e16 | % 111
  a,16 b16 cis16 a16 e'16 a,16 g'16 a,16 e'16 a,16 cis16 a16 | % 112
  a16 b16 cis16 a16 e'16 a,16 g'16 a,16 e'16 a,16 cis16 a16 | % 113
  fis'8 d8 b8~ b16 gis16 a16 b16 cis16 d16 | % 114
  e8 cis8 a8~ a16 fis16 gis16 a16 b16 cis16 | % 115
  d16 cis16 b16 cis16 d16 e16 fis16 gis16 a16 fis16 gis16 a16 | % 116
  gis16 a16 b16 gis16 e16 d16 cis16 d16 e16 cis16 a16 gis16 | % 117
  fis16 gis16 a16 fis16 d'16 b16 gis16 a16 b16 gis16 e'16 cis16 | % 118
  a16 b16 cis16 a16 fis'8 fis16 e16 d16 cis16 b16 cis16 | % 119
  a4 r8 r4. | % 120
  R2.*3 | % 123
  b16 cis16 d16 b16 gis'16 d16 b'16 d,16 gis16 d16 e16 d16 | % 124
  b16 cis16 d16 b16 gis'16 d16 b'16 d,16 gis16 d16 e16 d16 | % 125
  cis16 d16 e16 cis16 a'16 e16 cis'16 e,16 a16 e16 d16 e16 | % 126
  cis16 d16 e16 cis16 a'16 e16 cis'16 e,16 a16 e16 cis16 e16 | % 127
  a,4 r8 r4. | % 128
  R2.*3 | % 131
  r4. e16 fis16 gis16 e16 b'16 e,16 | % 132
  d'16 e,16 b'16 e,16 gis16 fis16 e16 fis16 gis16 e16 b'16 e,16 | % 133
  e'16 e,16 cis'16 e,16 b'16 e,16 a16 b16 cis16 a16 e'16 a,16 | % 134
  g'16 a,16 e'16 a,16 cis16 b16 a16 b16 cis16 a16 e'16 a,16 | % 135
  fis'4 r8 r4. | % 136
  R2.*9 | % 145
  b,16 cis16 d16 b16 gis'16 d16 b'16 d,16 gis16 d16 e16 d16 | % 146
  b16 cis16 d16 b16 gis'16 d16 b'16 d,16 gis16 d16 e16 d16 | % 147
  cis16 d16 e16 cis16 a'16 e16 cis'16 e,16 a16 e16 d16 e16 | % 148
  cis16 d16 e16 cis16 a'16 e16 cis'16 e,16 a16 e16 cis16 e16 | % 149
  fis4 r8 r4. | % 150
  R2.*5 | % 155
  r8 r8 cis8 b8 a8 gis8 | % 156
  a8 e8 e8 b'16 d16 cis16 a16 b16 gis16 | % 157
  a8 e8 e8 d'16 fis16 e16 cis16 d16 b16 | % 158
  cis16 e16 d16 b16 cis16 a16 a'16 gis16 fis16 e16 d16 cis16 | % 159
  b16 cis16 d16 b16 gis'16 d16 b'16 d,16 gis16 d16 e16 d16 | % 160
  b16 cis16 d16 b16 gis'16 d16 b'16 d,16 gis16 d16 e16 d16 | % 161
  cis16 d16 e16 cis16 a'16 e16 cis'16 e,16 a16 e16 d16 e16 | % 162
  cis16 d16 e16 cis16 a'16 e16 cis'16 e,16 a16 e16 cis16 e16 | % 163
  a,16 b16 cis16 a16 e'16 a,16 g'16 a,16 e'16 a,16 cis16 a16 | % 164
  a16 b16 cis16 a16 e'16 a,16 g'16 a,16 e'16 a,16 cis16 a16 | % 165
  fis'8 d8 b8~ b16 gis16 a16 b16 cis16 d16 | % 166
  e8 cis8 a8~ a16 fis16 gis16 a16 b16 cis16 | % 167
  d16 cis16 b16 cis16 d16 e16 fis16 gis16 a16 fis16 gis16 a16 | % 168
  gis16 a16 b16 gis16 e16 d16 cis16 d16 e16 cis16 a16 gis16 | % 169
  fis16 gis16 a16 fis16 d'16 b16
  gis16 a16 \tempo 4=63 b16 gis16 e'16 \tempo 4=62 cis16 | % 170
  a16 \tempo 4=61 b16 cis16 \tempo 4=60 a16 fis'8
  \tempo 4=56 fis16 \tempo 4=54 e16 \tempo 4=51 d16 \tempo 4=48 cis16
  \tempo 4=45 b16 \tempo 4=38 a16 | % 171
  \tempo 4=32 a2.
}

violinMusic = \relative cis'' {
  \clef "treble" \global \tempo 4=64
  r8 r8 cis8 b8( a8) gis8 | % 2
  a8( e8) e8 b'16( d16 cis16 a16 b16 gis16) | % 3
  a8( e8) e8 d'16( fis16 e16 cis16) d16( b16) | % 4
  cis16( e16 d16 b16) cis16( a16) a'16( gis16 fis16 e16 d16 cis16) | % 5
  b16( cis16 d16 b16 gis'16 d16) b'16( d,16 gis16 d16 e16 d16) | % 6
  b16( cis16 d16 b16 gis'16 d16) b'16( d,16 gis16 d16 e16 d16) | % 7
  cis16( d16 e16 cis16 a'16 e16) cis'16( e,16 a16 e16 d16 e16) | % 8
  cis16( d16 e16 cis16 a'16 e16) cis'16( e,16 a16 e16 cis16 e16) | % 9
  a,16( b16 cis16 a16 e'16 a,16) g'16( a,16 e'16 a,16 cis16 a16) | % 10
  a16( b16 cis16 a16 e'16 a,16) g'16( a,16 e'16 a,16 cis16 a16) | % 11
  fis'8 d8 b8~ b16 gis16( a16 b16 cis16 d16) | % 12
  e8 cis8 a8~ a16 fis16( gis16 a16 b16 cis16) | % 13
  d16( cis16 b16 cis16 d16 e16) fis16( gis16 a16 fis16 gis16 a16) | % 14
  gis16( a16 b16 gis16 e16 d16) cis16( d16 e16 cis16 a16 gis16) | % 15
  fis16( gis16 a16 fis16 d'16 b16) gis16( a16 b16 gis16 e'16 cis16) | % 16
  a16( b16 cis16 a16) fis'8-.
  \appoggiatura fis8 e8( d16 cis16 b16 cis16) | % 17
  a4 e8 d cis b | % 18
  cis16 e a e cis' a d( fis) e( cis) d( b) | % 19
  cis16( e) d( b) cis( a) b( d) cis( a) b( gis) | % 20
  a8( e) e r4. | % 21
  b'16( cis16 d16 b16 gis'16 d16) b'16( d,16 gis16 d16 e16 d16) | % 22
  b16( cis16 d16 b16 gis'16 d16) b'16( d,16 gis16 d16 e16 d16) | % 23
  cis16( d16 e16 cis16 a'16 e16) cis'16( e,16 a16 e16 d16 e16) | % 24
  cis16( d16 e16 cis16 a'16 e16) cis'16( e,16 a16 e16 cis16 e16) | % 25
  a,8( e) e e4.~ | % 26
  e2.~ | % 27
  e2.~ | % 28
  e16 cis d e fis gis a b cis d e fis | % 29
  gis a b gis e8 e,16 fis16 gis16 e16 b'16 e,16 | % 30
  d'16 e,16 b'16 e,16 gis16 fis16 e16 fis16 gis16 e16 b'16 e,16 | % 31
  e'16 e,16 cis'16 e,16 b'16 e,16 a16( b16 cis16 a16 e'16 a,16) | % 32
  g'16( a,16 e'16 a,16 cis16 b16) a16( b16 cis16 a16 e'16 a,16) | % 33
  fis'16 d( e fis gis a) b8 r8 r8 | % 34
  r16 cis,16 d e fis gis a8 r8 r8 | % 35
  r16 a,16 b cis d e fis gis a fis gis a | % 36
  gis4 gis,32( a b16) b8 a gis | % 37
  fis16 gis a b cis d e4.~ | % 38
  e16 cis d fis e gis fis4.~ | % 39
  fis16 dis e gis fis a gis4.~ | % 40
  gis16 eis fis a gis b a gis fis e d8~ | % 41
  d8 b gis e4.~ | % 42
  e16 a gis a e cis a8 r8 r8 | % 43
  b'16( cis16 d16 b16 gis'16 d16) b'16( d,16 gis16 d16 e16 d16) | % 44
  b16( cis16 d16 b16 gis'16 d16) b'16( d,16 gis16 d16 e16 d16) | % 45
  cis16( d16 e16 cis16 a'16 e16) cis'16( e,16 a16 e16 d16 e16) | % 46
  cis16( d16 e16 cis16 a'16 e16) cis'16( e,16 a16 e16 cis16 e16) | % 47
  fis8 d b~ b16 gis a b cis d | % 48
  e8 cis a~ a16 fis gis a b cis | % 49
  d16 cis b cis d e fis gis a fis gis a | % 50
  gis16 a b gis a b a b cis a b cis | % 51
  gis4 r8 r4. | % 52
  R2. | % 53
  r8 r8 cis,8 b8( a8 gis8) | % 54
  a8( e8) e8 b'16( d16 cis16 a16 b16 gis16) | % 55
  a8( e8) e8 d'16( fis16 e16 cis16 d16 b16) | % 56
  cis16( e16 d16 b16 cis16 a16) a'16( gis16 fis16 e16 d16 cis16) | % 57
  b16( cis16 d16 b16 gis'16 d16) b'16( d,16 gis16 d16 e16 d16) | % 58
  b16( cis16 d16 b16 gis'16 d16) b'16( d,16 gis16 d16 e16 d16) | % 59
  cis16( d16 e16 cis16 a'16 e16) cis'16( e,16 a16 e16 d16 e16) | % 60
  cis16( d16 e16 cis16 a'16 e16) cis'16( e,16 a16 e16 cis16 e16) | % 61
  a,16( b16 cis16 a16 e'16 a,16) g'16( a,16 e'16 a,16 cis16 a16) | % 62
  a16( b16 cis16 a16 e'16 a,16) g'16( a,16 e'16 a,16 cis16 a16) | % 63
  fis'8 d8 b8~ b16 gis16( a16 b16 cis16 d16) | % 64
  e8 cis8 a8~ a16 fis16( gis16 a16 b16 cis16) | % 65
  d16( cis16 b16 cis16 d16 e16) fis16( gis16 a16 fis16 gis16 a16) | % 66
  gis16( a16 b16 gis16 e16 d16) cis16( d16 e16 cis16 a16 gis16) | % 67
  fis16( gis16 a16 fis16 d'16 b16) gis16( a16 b16 gis16 e'16 cis16) | % 68
  a16( b16 cis16 a16) fis'8-. \appoggiatura fis8 e8( d16 cis16 b16 a16) | % 69
  a4\fermata r8 r8 fis'8-. cis8-. | % 70
  r8 a16( b16) cis8-. fis,8-. r8 r8 | % 71
  r8 r8 a'8 gis8( fis8 eis8) | % 72
  fis8( cis8) cis8 gis'16( b16 a16 fis16 gis16 eis16) | % 73
  fis8( cis8) cis8 r8 fis8-. cis8-. | % 74
  r8 d16( e16 fis16 e16 d16 cis16) b8-. e8-. | % 75
  r4. r16 e,16( fis16 gis16 a16 b16) | % 76
  cis8-. r8 r8 r16 b16( a16 b16 cis16 d16) | % 77
  e8-. r8 r8 r8 gis8-. cis,8-. | % 78
  R2.*2 | % 80
  r16 gis'16( e16 fis16 gis16 e16) cis16( dis16 e4)~ | % 81
  e16 a16( fis16 gis16 a16 fis16) dis16( e16 fis4)~ | % 82
  fis16 dis16( e16 cis16) dis16( bis16) cis8 gis8 r8 | % 83
  R2. | % 84
  r8 r8 e'8 dis8( cis8 bis8) | % 85
  cis8( gis8) gis8 dis'16( fis16 e16 cis16 dis16 bis16) | % 86
  cis16( dis16 e16 cis16) a'8-. gis8( fis16 e16 dis16 cis16) | % 87
  cis4 r8 r8 cis8-. gis8-. | % 88
  r4. a16( b16 cis8) fis,8-. | % 89
  r8 r8 gis'8 fis8( e8 dis8) | % 90
  e8( b8) b8 fis'16( a16 gis16 e16 fis16 dis16) | % 91
  e8( b8) b8-. r8 e8-. b8-. | % 92
  r8 r16 ais16( b16 cis16 dis16 e16) fis8-. b,8-. | % 93
  r4. gis16( b16 e16 dis16) e8-. | % 94
  r8 a8-. fis8-. dis16( cis16 dis16 fis16) a8-. | % 95
  r16 a16( gis16 fis16 e16 dis16) e16( a,16 gis16 fis16 e16 dis16) | % 96
  e16( fis16 gis16 a16 b16 cis16) dis16( fis16 e16 dis16 e16 cis16) | % 97
  e8( dis8) r8 b16( cis16 d16 b16 gis16 fis16) | % 98
  e8 cis'8 r8 cis16 dis16 e16 cis16 ais'16 cis,16 | % 100
  b16( dis16) fis8-. r8 r16 a16( gis16 fis16 e16 dis16) | % 100
  e4.~ e16 gis16( fis16 e16 dis16 cis16) | % 101
  a'16( fis16 gis16 dis16 e16 b16) cis16 a16 fis8.\trill e16 | % 102
  e4 r8 r4. % 103
}

violinMusicDaCapo = \relative cis'' {
  % midi only
  r8 r8 cis8 b8 a8 gis8 | % 104
  a8 e8 e8 b'16 d16 cis16 a16 b16 gis16 | % 105
  a8 e8 e8 d'16 fis16 e16 cis16 d16 b16 | % 106
  cis16 e16 d16 b16 cis16 a16 a'16 gis16 fis16 e16 d16 cis16 | % 107
  b16 cis16 d16 b16 gis'16 d16 b'16 d,16 gis16 d16 e16 d16 | % 108
  b16 cis16 d16 b16 gis'16 d16 b'16 d,16 gis16 d16 e16 d16 | % 109
  cis16 d16 e16 cis16 a'16 e16 cis'16 e,16 a16 e16 d16 e16 | % 110
  cis16 d16 e16 cis16 a'16 e16 cis'16 e,16 a16 e16 cis16 e16 | % 111
  a,16 b16 cis16 a16 e'16 a,16 g'16 a,16 e'16 a,16 cis16 a16 | % 112
  a16 b16 cis16 a16 e'16 a,16 g'16 a,16 e'16 a,16 cis16 a16 | % 113
  fis'8 d8 b8~ b16 gis16 a16 b16 cis16 d16 | % 114
  e8 cis8 a8~ a16 fis16 gis16 a16 b16 cis16 | % 115
  d16 cis16 b16 cis16 d16 e16 fis16 gis16 a16 fis16 gis16 a16 | % 116
  gis16 a16 b16 gis16 e16 d16 cis16 d16 e16 cis16 a16 gis16 | % 117
  fis16 gis16 a16 fis16 d'16 b16 gis16 a16 b16 gis16 e'16 cis16 | % 118
  a16 b16 cis16 a16 fis'8 fis16 e16 d16 cis16 b16 cis16 | % 119
  a4 e8 d cis b | % 120
  cis16 e a e cis' a d fis e cis d b | % 121
  cis16 e d b cis a b d cis a b gis | % 122
  a8 e e r4 r8 | % 123
  b'16 cis16 d16 b16 gis'16 d16 b'16 d,16 gis16 d16 e16 d16 | % 124
  b16 cis16 d16 b16 gis'16 d16 b'16 d,16 gis16 d16 e16 d16 | % 125
  cis16 d16 e16 cis16 a'16 e16 cis'16 e,16 a16 e16 d16 e16 | % 126
  cis16 d16 e16 cis16 a'16 e16 cis'16 e,16 a16 e16 cis16 e16 | % 127
  a,8 e e e4.~ | % 128
  e2.~ | % 129
  e2.~ | % 130
  e16 cis d e fis gis a b cis d e fis | % 131
  gis a b gis e8 e,16_\pianoDynamicText fis16 gis16 e16 b'16 e,16 | % 132
  d'16 e,16 b'16 e,16 gis16 fis16 e16 fis16 gis16 e16 b'16 e,16 | % 133
  e'16 e,16 cis'16 e,16 b'16 e,16 a16 b16 cis16 a16 e'16 a,16 | % 134
  g'16 a,16 e'16 a,16 cis16 b16 a16 b16 cis16 a16 e'16 a,16 | % 135
  fis'16 d e fis gis a b8 r8 r8 | % 136
  r16 cis,16 d e fis gis a8 r8 r8 | % 137
  r16 a,16 b cis d e fis gis a fis gis a | % 138
  gis4 gis,32 a b16 b8 a gis | % 139
  fis16 gis a b cis d e4.~ | % 140
  e16 cis d fis e gis fis4.~ | % 141
  fis16 dis e gis fis a gis4.~ | % 142
  gis16 eis fis a gis b a gis fis e d8~ | % 143
  d8 b gis e4.~ | % 144
  e16 a gis a e cis a8 r8 r8 | % 145
  b'16 cis16 d16 b16 gis'16 d16 b'16 d,16 gis16 d16 e16 d16 | % 146
  b16 cis16 d16 b16 gis'16 d16 b'16 d,16 gis16 d16 e16 d16 | % 147
  cis16 d16 e16 cis16 a'16 e16 cis'16 e,16 a16 e16 d16 e16 | % 148
  cis16 d16 e16 cis16 a'16 e16 cis'16 e,16 a16 e16 cis16 e16 | % 149
  fis8 d b~ b16 gis a b cis d | % 150
  e8 cis a~ a16 fis gis a b cis | % 151
  d16 cis b cis d e fis gis a fis gis a | % 152
  gis16 a b gis a b a b cis a b cis | % 153
  gis4 r8 r4 r8 | % 154
  R2. | % 155
  r8 r8 cis,8 b8 a8 gis8 | % 156
  a8 e8 e8 b'16 d16 cis16 a16 b16 gis16 | % 157
  a8 e8 e8 d'16 fis16 e16 cis16 d16 b16 | % 158
  cis16 e16 d16 b16 cis16 a16 a'16 gis16 fis16 e16 d16 cis16 | % 159
  b16 cis16 d16 b16 gis'16 d16 b'16 d,16 gis16 d16 e16 d16 | % 160
  b16 cis16 d16 b16 gis'16 d16 b'16 d,16 gis16 d16 e16 d16 | % 161
  cis16 d16 e16 cis16 a'16 e16 cis'16 e,16 a16 e16 d16 e16 | % 162
  cis16 d16 e16 cis16 a'16 e16 cis'16 e,16 a16 e16 cis16 e16 | % 163
  a,16 b16 cis16 a16 e'16 a,16 g'16 a,16 e'16 a,16 cis16 a16 | % 164
  a16 b16 cis16 a16 e'16 a,16 g'16 a,16 e'16 a,16 cis16 a16 | % 165
  fis'8 d8 b8~ b16 gis16 a16 b16 cis16 d16 | % 166
  e8 cis8 a8~ a16 fis16 gis16 a16 b16 cis16 | % 167
  d16 cis16 b16 cis16 d16 e16 fis16 gis16 a16 fis16 gis16 a16 | % 168
  gis16 a16 b16 gis16 e16 d16 cis16 d16 e16 cis16 a16 gis16 | % 169
  fis16 gis16 a16 fis16 d'16 b16
  gis16 a16 \tempo 4=63 b16 gis16 e'16 \tempo 4=62 cis16 | % 170
  a16 \tempo 4=61 b16 cis16 \tempo 4=60 a16 fis'8
  \tempo 4=56 fis16 \tempo 4=54 e16 \tempo 4=51 d16 \tempo 4=48 cis16
  \tempo 4=45 b16 \tempo 4=38 a16 | % 171
  \tempo 4=32 a2.
}

violinMarks = {
  s2.*28
  s4. s16_\pianoDynamicText s16 s4
  s2.*23
  s4 s8_\forteDynamicText s4.
  s2.*15
  s2 s8_\pianoDynamicText s8
  s2.*14
  s4 s8_\forteDynamicText s4.
  s2.*2
  s2 s8_\pianoDynamicText s8
}

sopranoMusic = \relative cis'' {
  \clef "treble" \global
  \autoBeamOff
  R2.*16 | % 17
  r8 r8 cis8 b8[( a8]) gis8 | % 18
  a8[( e8]) e8 b'16[( d16 cis8]) b8 | % 19
  a8 e8 e8 d'16[( fis16 e8]) d8 | % 20
  cis8[( b8]) a8 e'16[( g16 fis8]) \appoggiatura e16 d8 | % 21
  \appoggiatura cis8 b4 r8 r4. | % 22
  R2.*3 | % 25
  r8 r8 cis8 b8[( a8]) gis8 | % 26
  a8[( e8]) e8 b'16[( d16 cis8]) b8 | % 27
  a8 e8 e8 d'16[( fis16 e8]) d8 | % 28
  cis8[( b8]) a8 e'16[( g16 fis8]) \appoggiatura e16 d8 | % 29
  b8 b8[( cis8]) d8[( cis8]) d8 | % 30
  e,8[( gis8]) b8 d8[( e16 cis16]) d8 | % 31
  cis8 e,8 fis8 g8[\melisma a8 cis8]~ | % 32
  cis8[ e8 g8]~ g8[ fis8]\melismaEnd g8 | % 33
  fis8 d8 \appoggiatura cis8 b8~\melisma b16[ gis16 a16 b16 cis16 d16] | % 34
  e8[ cis8 a8]~ a16[ fis16 gis16 a16 b16 cis16] | % 35
  d16[ cis16 d16 e16 fis8]~ fis16[ e16 fis16 d16 e16 fis16] | % 36
  b,8\melismaEnd b8.[( cis32 d32]) d8[( cis8]) b8 | % 37
  a16[\melisma b16 cis16 d16 e16 fis16] g,8[ a8]\melismaEnd g8 | % 38
  g8[\melisma fis8 gis8] a16[ cis16 b8 a8]~ | % 39
  a8[ gis8 a8] b16[ d16 cis8 b8]~ | % 40
  b8\melismaEnd a8 b8 cis16[\melisma e16 d16 cis16 b16 a16] | % 41
  b16[ a16 b16 d16 cis16 e16] d16[ fis16 e16 d16 cis16 b16] | % 42
  cis8\melismaEnd b8 a8 e'8 fis16[( e16]) d16[( cis16]) | % 43
  b8 b8[( cis8]) d8[( cis8]) d8 | % 44
  e,8[( gis8]) b8 d8[( cis8]) b8 | % 45
  cis8 cis8 d8 e8[\melisma fis8 g8]~ | % 46
  g8[ e8 cis8] a8[ g16 fis16]\melismaEnd g8 | % 47
  fis8 r8 fis'8 fis8[( d8]) b8~ | % 48
  b16 gis16[( a16 b16]) cis16[( d16]) e8[( cis8]) a8 | % 49
  a16[\melisma fis16 gis16 a16 b16 cis16] d16[ e16 fis16 d16 e16 fis16] | % 50
  b,16[ cis16 d16 b16 cis16 d16] cis16[ d16 e16 cis16 d16 e16] | % 51
  b8\melismaEnd d8 cis8 d16[( fis16 e8]) d8 | % 52
  cis8[( b8]) d8 cis8[( b8]) a8 | % 53
  a4 r8 r4. | % 54
  R2.*15 | % 69
  r8 r8 cis8 fis8-. cis8-. r8 | % 70
  a16[( b16 cis8]) fis,8 d'8[( b8]) gis8 | % 71
  eis4 r8 r4. | % 72
  R2. | % 73
  r8 r8 cis'8 fis8-.\melisma cis8-. r8 | % 74
  d16[ e16 fis16 e16 d16 cis16] b8-.[ e8-.] r8 | % 75
  r16 e,16[ fis16 gis16 a16 b16] cis8-. r8 r8 | % 76
  r16 b16[ a16 b16 cis16 d16] e8-. r8 r8 | % 77
  r16 e16[ d16 cis16 b16 a16] gis'8-.\melismaEnd cis,8-. r8 | % 78
  a16[( cis16 fis8]) e8 dis8 cis16[( bis16 cis8]) | % 79
  \appoggiatura cis8 bis4 gis8 cis16[( dis16 e8]) dis8 | % 80
  e8[\melisma cis8 b8] a8[ gis8 a8] | % 81
  fis'8[ dis8]\melismaEnd cis8 bis8[( cis8]) dis8 | % 82
  gis,8 r8 gis'8 e8 dis16[( cis16 bis16 cis16]) | % 83
  a'8 dis,8 e8.[( fis16]) dis8.[(\trill cis16]) | % 84
  cis4 r8 r4. | % 85
  R2.*2 | % 87
  r8 r8 gis8 cis8-. gis8-. r8 | % 88
  a16[( b16 cis8]) fis,8 fis'8 e16[( dis16 e8]) | % 89
  \appoggiatura e8 dis4 r8 r4. | % 90
  R2. | % 91
  r8 r8 b8 e8-.[\melisma b8-.] r8 | % 92
  r16 ais16[ b16 cis16 dis16 e16] fis8-.[ b,8-.] r8 | % 93
  gis16[ b16 e16 dis16 e8-.] r8 gis8-.[ e8-.] | % 94
  cis16[ b16 cis16 e16 a8-.] r16 gis16[ fis16 e16 dis16 cis16] | % 95
  b8-. e8-. b8-. gis8-. b8-.\melismaEnd gis8 | % 96
  e16[( a16 cis8]) b8 a8 gis16[( fis16 gis16 e16]) | % 97
  gis8[( fis8]) b8 d8 b4\trill | % 98
  cis8[\melisma a8 gis8] fis8[ cis'8 e8] | % 99
  dis8[ b8]\melismaEnd a8 gis8[( dis'8]) gis8 | % 100
  e8[( cis8]) b8 a8.[( cis16]) fis16[( dis16]) | % 101
  e16[( cis16]) dis16[( b16]) e8.[( fis16]) dis8.\trill[( e16]) | % 102
  e4 r8 r4. % 103
}

sopranoMusicDaCapo = \relative cis'' {
  % midi only
  R2.*16 | % 119
  r8 r8 cis8 b8 a8 gis8 | % 120
  a8 e8 e8 b'16 d16 cis8 b8 | % 121
  a8 e8 e8 d'16 fis16 e8 d8 | % 122
  cis8 b8 a8 e'16 g16 fis8 e16 d16 | % 123
  cis16 b8. r8 r4. | % 124
  R2.*3 | % 127
  r8 r8 cis8 b8 a8 gis8 | % 128
  a8 e8 e8 b'16 d16 cis8 b8 | % 129
  a8 e8 e8 d'16 fis16 e8 d8 | % 130
  cis8 b8 a8 e'16 g16 fis8 e16 d16 | % 131
  b8 b8 cis8 d8 cis8 d8 | % 132
  e,8 gis8 b8 d8 e16 cis16 d8 | % 133
  cis8 e,8 fis8 g8 a8 cis8~ | % 134
  cis8 e8 g8~ g8 fis8 g8 | % 135
  fis8 d8 cis16 b16~ b16 gis16 a16 b16 cis16 d16 | % 136
  e8 cis8 a8~ a16 fis16 gis16 a16 b16 cis16 | % 137
  d16 cis16 d16 e16 fis8~ fis16 e16 fis16 d16 e16 fis16 | % 138
  b,8 b8. cis32 d32 d8 cis8 b8 | % 139
  a16 b16 cis16 d16 e16 fis16 g,8 a8 g8 | % 140
  g8 fis8 gis8 a16 cis16 b8 a8~ | % 141
  a8 gis8 a8 b16 d16 cis8 b8~ | % 142
  b8 a8 b8 cis16 e16 d16 cis16 b16 a16 | % 143
  b16 a16 b16 d16 cis16 e16 d16 fis16 e16 d16 cis16 b16 | % 144
  cis8 b8 a8 e'8 fis16 e16 d16 cis16 | % 145
  b8 b8 cis8 d8 cis8 d8 | % 146
  e,8 gis8 b8 d8 cis8 b8 | % 147
  cis8 cis8 d8 e8 fis8 g8~ | % 148
  g8 e8 cis8 a8 g16 fis16 g8 | % 149
  fis8 r8 fis'8 fis8 d8 b8~ | % 150
  b16 gis16 a16 b16 cis16 d16 e8 cis8 a8 | % 151
  a16 fis16 gis16 a16 b16 cis16 d16 e16 fis16 d16 e16 fis16 | % 152
  b,16 cis16 d16 b16 cis16 d16 cis16 d16 e16 cis16 d16 e16 | % 153
  b8 d8 cis8 d16 fis16 e8 d8 | % 154
  cis8 b8 d8 cis8
  b8 a8 | % 155
  a4 r8 r4. | % 156
  R2.*13 | % 169
}

sopranoLyrics = \lyricmode {
  Mit zar -- ten und ver -- gnüg -- ten Trie -- ben
  ver -- ehrt man dei -- ne Gü -- tig -- keit,
  mit zar -- ten und ver -- gnüg -- ten Trie -- ben
  ver -- ehrt man dei -- ne Gü -- tig -- keit,
  ver -- ehrt man dei -- ne Gü -- tig -- keit, dei -- ne Gü -- tig -- keit,
  mit zar -- ten und ver -- gnüg -- ten Trie -- ben
  ver -- ehrt man dei -- ne Gü -- tig -- keit,
  ver -- ehrt man dei -- ne Gü -- tig -- keit, dei -- ne Gü -- tig -- keit,
  mit zar -- ten und ver -- gnüg -- ten Trie -- ben
  ver -- ehrt man dei -- ne Gü -- tig -- keit.
  Er -- schal -- let a -- ber einst ein Lied,
  er -- schal -- let a -- ber einst ein Lied,
  das dich der Sterb -- lich -- keit ent -- zieht,
  so sind wir auch dar -- zu be -- reit;
  er -- schal -- let a -- ber einst ein Lied,
  er -- schal -- let a -- ber einst ein Lied,
  das dich der Sterb -- lich -- keit ent -- zieht,
  so sind wir auch dar -- zu be -- reit.
}

continuoMusic = \relative a, {
  \clef "bass" \global
  a4 a'8 d,4 e8 | % 2
  cis4 a8 gis8 e'8 d8 | % 3
  cis4 a8 gis8 gis'8 e8 | % 4
  a4 fis8 cis4 d8 | % 5
  e8 gis8 b8 e4 r8 | % 6
  e,8 gis8 b8 e4 r8 | % 7
  e,8 a8 cis8 e4 r8 | % 8
  e,8 a8 cis8 e4 r8 | % 9
  cis8 a8 e8 cis4 r8 | % 10
  a'8 e8 cis8 a4 r8 | % 11
  d4 d'8 gis,4 e8 | % 12
  cis4 cis'8 fis,4 d8 | % 13
  b4 b'8 d,4 b8 | % 14
  e,4 e'8 a,4 cis8 | % 15
  d4 b8 e4 cis8 | % 16
  fis4 d8 cis8 d8 e8 | % 17
  a,4 a'8 d,4 e8 | % 18
  a,4 a'8 gis8 e8 e8 | % 19
  a4 a,8 gis8 e8 e8 | % 20
  a4 b8 cis8 d8 b8 | % 21
  e8 gis8 b8 e4 r8 | % 22
  e,8 gis8 b8 e4 r8 | % 23
  a,,8 cis8 e8 a4 r8 | % 24
  a,8 cis8 e8 a4 r8 | % 25
  a,4 a'8 d8 cis8 b8 | % 26
  cis8 b8 a8 gis8 e'8 d8 | % 27
  cis8 b8 a8 gis4 e8 | % 28
  a8 gis8 fis8 cis8 d8 b8 | % 29
  e4 r8 r4. | % 30
  gis4 r8 r4. | % 31
  a,4 r8 r4. | % 32
  a'4 r8 r4. | % 33
  d,4 d'8 gis,4 e8 | % 34
  cis4 cis'8 fis,4 d8 | % 35
  b4 b'8 d,4 dis8 | % 36
  e8 e8 e8 eis8 eis8 eis8 | % 37
  fis8 fis8 fis8 cis8 cis8 cis8 | % 38
  d8 d8 d8 dis8 dis8 dis8 | % 39
  e8 e8 e8 eis8 eis8 eis8 | % 40
  fis8 fis8 fis8 fis,8 fis8 fis8 | % 41
  gis8 gis8 gis8 gis'8 gis8 gis8 | % 42
  a8 b8 cis8 cis,4 d8 | % 43
  e4 r8 r4. | % 44
  gis4 r8 r4. | % 45
  a4 r8 r4. | % 46
  a,4 r8 r4. | % 47
  d4 d'8 gis,8 fis8 gis8 | % 48
  cis,4 cis'8 fis,8 e8 fis8 | % 49
  b,8 b8 b8 b8 cis8 d8 | % 50
  e8 e8 e8 e8 e8 e8 | % 51
  e4 e,8 fis4 gis8 | % 52
  a4 fis'8 e8 d8 e8 | % 53
  a,4 a'8 d,4 e8 | % 54
  cis4 a8 gis8 e'8 d8 | % 55
  cis4 a8 gis8 gis'8 e8 | % 56
  a4 fis8 cis4 d8 | % 57
  e8 gis8 b8 e4 r8 | % 58
  e,8 gis8 b8 e4 r8 | % 59
  e,8 a8 cis8 e4 r8 | % 60
  e,8 a8 cis8 e4 r8 | % 61
  cis8 a8 e8 cis4 r8 | % 62
  a'8 e8 cis8 a4 r8 | % 63
  d4 d'8 gis,4 e8 | % 64
  cis4 cis'8 fis,4 d8 | % 65
  b4 b'8 d,4 b8 | % 66
  e,4 e'8 a,4 cis8 | % 67
  d4 b8 e4 cis8 | % 68
  fis4 d8 cis8 d8 e8 | % 69
  a,4 r8 fis8 r8 r8 | % 70
  fis'8 r8 r8 b,8 d8 b8 | % 71
  cis4 fis8 b4 cis8 | % 72
  a4 fis8 eis8 cis8 b'8 | % 73
  a16 b16 cis16 b16 a16 gis16 a8 fis8 r8 | % 74
  b8 b,8 r8 e8 gis8 r8 | % 75
  a8 a,8 r8 r4. | % 76
  a'8 a,8 r8 r4. | % 77
  a'8 b8 cis8 eis,8 eis,8 r8 | % 78
  fis4 gis8 a8 a'8 fis8 | % 79
  gis16 a16 gis16 fis16 e16 dis16 e8 cis8 bis8 | % 80
  cis8 cis,8 cis8 cis8 cis'16 bis16 cis8 | % 81
  dis8 dis,8 dis8 dis8 dis'16 e16 fis16 dis16 | % 82
  e8 e,8 e8 e8 e'8 cis8 | % 83
  fis8 gis8 cis8 fis,8 gis8 gis,8 | % 84
  cis4 cis'8 fis,4 gis8 | % 85
  e4 cis8 bis8 gis'8 fis8 | % 86
  e8 cis8 dis8 e8 fis8 gis8 | % 87
  cis,4 r8 e8-. cis8-. r8 | % 88
  fis8-. a8-. r8 fis8-. ais,8-. r8 | % 89
  b4 b'8 a8 gis8 fis8 | % 90
  gis16( b16) a16( fis16) gis16( e16) b8 b'8 a8 | % 91
  gis16( a16 b16 gis16) a16( fis16) gis8 e8 r8 | % 92
  dis8 b8 r8 b'8 dis,8 r8 | % 93
  e8 gis8 e8 cis8 cis'8 r8 | % 94
  a8 fis8 dis8 b8 b'8 r8 | % 95
  e,8 e8 e8 dis8 dis8 dis8 | % 96
  cis8 a8 gis8 fis8 b8 e,8 | % 97
  b'8 b'8 a8 gis8 e8 e8 | % 98
  a,8 cis'8 b8 ais8 fis8 fis8 | % 99
  b,8 dis8 cis8 bis8 gis8 gis8 | % 100
  cis16 dis16 e16 fis16 gis16 e16 fis8 gis8 a8 | % 101
  b8 a8 gis8 a8 b8 b,8 | % 102
  e,4 r8 r4. % 103
}

continuoMusicDaCapo = \relative a, {
  % midi only
  a4 a'8 d,4 e8 | % 104
  cis4 a8 gis8 e'8 d8 | % 105
  cis4 a8 gis8 gis'8 e8 | % 106
  a4 fis8 cis4 d8 | % 107
  e8 gis8 b8 e4 r8 | % 108
  e,8 gis8 b8 e4 r8 | % 109
  e,8 a8 cis8 e4 r8 | % 110
  e,8 a8 cis8 e4 r8 | % 111
  cis8 a8 e8 cis4 r8 | % 112
  a'8 e8 cis8 a4 r8 | % 113
  d4 d'8 gis,4 e8 | % 114
  cis4 cis'8 fis,4 d8 | % 115
  b4 b'8 d,4 b8 | % 116
  e,4 e'8 a,4 cis8 | % 117
  d4 b8 e4 cis8 | % 118
  fis4 d8 cis8 d8 e8 | % 119
  a,4 a'8 d,4 e8 | % 120
  a,4 a'8 gis8 e8 e8 | % 121
  a4 a,8 gis8 e8 e8 | % 122
  a4 b8 cis8 d8 b8 | % 123
  e8 gis8 b8 e4 r8 | % 124
  e,8 gis8 b8 e4 r8 | % 125
  a,,8 cis8 e8 a4 r8 | % 126
  a,8 cis8 e8 a4 r8 | % 127
  a,4 a'8 d8 cis8 b8 | % 128
  cis8 b8 a8 gis8 e'8 d8 | % 129
  cis8 b8 a8 gis4 e8 | % 130
  a8 gis8 fis8 cis8 d8 b8 | % 131
  e4 r8 r4. | % 132
  gis4 r8 r4. | % 133
  a,4 r8 r4. | % 134
  a'4 r8 r4. | % 135
  d,4 d'8 gis,4 e8 | % 136
  cis4 cis'8 fis,4 d8 | % 137
  b4 b'8 d,4 dis8 | % 138
  e8 e8 e8 eis8 eis8 eis8 | % 139
  fis8 fis8 fis8 cis8 cis8 cis8 | % 140
  d8 d8 d8 dis8 dis8 dis8 | % 141
  e8 e8 e8 eis8 eis8 eis8 | % 142
  fis8 fis8 fis8 fis,8 fis8 fis8 | % 143
  gis8 gis8 gis8 gis'8 gis8 gis8 | % 144
  a8 b8 cis8 cis,4 d8 | % 145
  e4 r8 r4. | % 146
  gis4 r8 r4. | % 147
  a4 r8 r4. | % 148
  a,4 r8 r4. | % 149
  d4 d'8 gis,8 fis8 gis8 | % 150
  cis,4 cis'8 fis,8 e8 fis8 | % 151
  b,8 b8 b8 b8 cis8 d8 | % 152
  e8 e8 e8 e8
  e8 e8 | % 153
  e4 e,8 fis4 gis8 | % 154
  a4 fis'8 e8 d8 e8 | % 155
  a,4 a'8 d,4 e8 | % 156
  cis4 a8 gis8 e'8 d8 | % 157
  cis4 r8 gis8 gis'8 e8 | % 158
  a4 fis8 cis4 d8 | % 159
  e8 gis8 b8 e4 r8 | % 160
  e,8 gis8 b8 e4 r8 | % 161
  e,8 a8 cis8 e4 r8 | % 162
  e,8 a8 cis8 e4 r8 | % 163
  cis8 a8 e8 cis4 r8 | % 164
  a'8 e8 cis8 a4 r8 | % 165
  d4 d'8 gis,4 e8 | % 166
  cis4 cis'8 fis,4 d8 | % 167
  b4 b'8 d,4 b8 | % 168
  e,4 e'8 a,4 cis8 | % 169
  d4 b8 e4 cis8 | % 170
  fis4 d8 cis8 d8 e8 | % 171
  a,2.
}

continuoMarks = {
  s4^\markup { \italic "pizzicato" } s8 s4.
  s2.*15
  s4 s8_\pianoDynamicText s4.
  s2.*35
  s4 s8_\forteDynamicText s4.
  s2.*15
  s4. s8_\pianoDynamicText s4
  s2.*14
  s4 s8_\forteDynamicText s4.
  s2.*2
  s4. s8_\pianoDynamicText s4
  s2.*14
}

keybDynamics = {
  s2.*16
  s4 s8\p s4.
  s2.*35
  s4 s8\f s4.
  s2.*15
  s4. s8\p s4
  s2.*14
  s4 s8\f s4.
  s2.*2
  s4. s8\p s4
}

trebleMarks = {
  s2.*16
  s4 s8\mark\markup{ "-Fl." } s8 s4
  s2.*3 s16\mark\markup{ "+Fl." } s16 s8 s2
  s2.*3
  s8 s8\mark\markup{ "-Fl." } s2
  s2.*3
  s4 s8 s16\mark\markup{ "+Fl." } s16 s4
  s2.*3
  s16 s16\mark\markup{ "-Fl." } s8 s2
  s2.*9
  s16\mark\markup{ "+Fl." } s16 s8 s2
  s2.*3
  s8 s8\mark\markup{ "-Fl." } s2
  s2.*5
  s4 s8\mark\markup{ "+Fl." } s4.
}

bassMarks = {
  s2.*68
  s4_\fermata
}

