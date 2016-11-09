pieceName = "3. ARIE."
instInfo = #(format "~A, ~A, ~A"
  #'tenorName #'oboeName #'continuoName )

global = {
  \key d \major \time 3/8
}

marksTop = {
  \set Score.markFormatter = #format-mark-box-alphabet
  \partial 8 s8
  s4.*15 \mark \default
  s4.*52 \mark \default
  s4.*16 \mark \default
  s4.*20 \mark \default
  s4.*25
  \bar "||"
}

marksTopBottom = {
  \partial 8 s8
  \mark\markup\small {\musicglyph #"scripts.segno"}
  s4.*128
  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark\markup{
    \fontsize #-2 { \italic "Dal Segno." }
    \raise #0.7 { \small { \musicglyph #"scripts.segno" } } }
}

globalMarksBreaks = << \marksTop \marksTopBottom >>

oboeMusicPartial = \relative d'' {
  \clef "treble" \global
  \partial 8 \tempo 4=70 d8 | % 1
}

oboeMusicOne = \relative cis'' {
  cis8 d16 cis16 b16 ais16 | % 2
  b8 e8.( fis32 g32) | % 3
  fis8 e16( d16 cis16 b16) | % 4
  ais16( b32 cis32) fis,8 cis'8 | % 5
  d16 b16 a16 fis16 g16 b16 | % 6
  e16 b16 a16 fis16 g16 e16 | % 7
  fis8 d8 cis8 | % 8
  d4 a'8 | % 9
  fis'8 g16 fis16 e16 d16 | % 10
  a'8 dis,8.( e32 fis32) | % 11
  b,16( dis16 e16) g16( fis16 a16) | % 12
  g16 fis16 e16 g16 cis,16 b16 | % 13
  ais16 cis16 e16 cis16 d16 b16 | % 14
  cis16 b16 ais16 cis16 fis,16 e16 | % 15
  d16 fis16 b16 d16 cis16 ais16 | % 16
  b4 r8 | % 17
  R4.*3 | % 20
  r8 r8 cis8 | % 21
  d16 b16 ais16 fis16 gis16 b16 | % 22
  e16 cis16 b16 gis16 ais16 cis16 | % 23
  fis8 e16 d16 cis16 d16 | % 24
  b16 cis16 d16 e16 fis8 | % 25
  g8 fis8 e8 | % 26
  d8 e16 d16 cis16 b16 | % 27
  ais8 b8 g8~ | % 28
  g8 fis16 e16 d16 cis16 | % 29
  b16 b'16 a16 fis16 g16 b16 | % 30
  e16 b16 a16 fis16 g16 e16 | % 31
  fis8 d8 cis8 | % 32
  d4 fis'8 | % 33
  e8 fis16 e16 d16 cis16 | % 34
  fis8 g16 fis16 e16 d16 | % 35
  g8 a16 g16 fis16 e16 | % 36
  a8 b16 a16 g16 fis16 | % 37
  g4.~ | % 38
  g8 fis16( e16 d16 cis16) | % 39
  d16 cis16 b16 ais16 b16 e16 | % 40
  b8( ais8) cis8 | % 41
  d16 b16 a16 fis16 g16 b16 | % 42
  e16 b16 a16 fis16 g16 e16 | % 43
  d4 r8 | % 44
  r8 dis'8. e32 fis32 | % 45
  b,16 dis16 e16 g16 fis16 a16 | % 46
  g16 fis16 e16 g16 cis,16 b16 | % 47
  ais16 cis16 e16 cis16 d16 b16 | % 48
  cis16 b16 ais16 cis16 fis,16 e16 | % 49
  d16 fis16 b16 d16 cis16 e16 | % 50
  d16 cis16 b16 d16 g,16 fis16 | % 51
  e16 g16 cis16 e16 d16 fis16 | % 52
  e16 d16 cis16 e16 ais,16 gis16 | % 53
  fis16 b16 d16 fis16 e16 g16 | % 54
  fis16 e16 dis16 fis16 b,16 a16 | % 55
  g16 b16 e16 g16 fis16 a16 | % 56
  g16 fis16 e16 g16 cis,16 b16 | % 57
  ais4 r8 | % 58
  R4.*2 | % 60
  r8 r8 b8 | % 61
  fis'8 g16 fis16 e16 dis16 | % 62
  a'8 dis,8. e32 fis32 | % 63
  b,16 dis16 e16 g16 fis16 a16 | % 64
  g16 fis16 e16 g16 cis,16 b16 | % 65
  ais8 fis'4~ | % 66
  fis8 b,16 ais16 b16 cis16 | % 67
  fis,8 r8 r8 | % 68
  r8 r8 d'8 | % 69
  cis8 d16 cis16 b16 ais16 | % 70
  b8 e8. fis32 g32 | % 71
  fis8 e16 d16 cis16 b16 | % 72
  ais16 b32 cis32 fis,8 cis'8 | % 73
  d16 b16 a16 fis16 g16 b16 | % 74
  e16 b16 a16 fis16 g16 e16 | % 75
  fis8 d8 cis8 | % 76
  d4 a'8 | % 77
  fis'8 g16 fis16 e16 d16 | % 78
  a'8 dis,8. e32 fis32 | % 79
  b,16 dis16 e16 g16 fis16 a16 | % 80
  g16 fis16 e16 g16 cis,16 b16 | % 81
  ais16 cis16 e16 cis16 d16 b16 | % 82
}

oboeMusicTwo = \relative cis'' {
  cis16 b16 ais16 cis16 fis,16 e16 | % 83
  d16 fis16 b16 d16 cis16 ais16 | % 84
  b4\fermata r8 | % 85
  R4.*11 | % 96
  r8 r8 a8 | % 97
  gis8 a16 gis16 fis16 eis16 | % 98
  fis8 b8. cis32 d32 | % 99
  cis8 b16 a16 gis16 fis16 | % 100
  eis16 fis32 gis32 cis,8 gis'8 | % 101
  a16 fis16 e16 cis16 d16 fis16 | % 102
  b16 fis16 e16 cis16 d16 b16 | % 103
  cis16 e16 a16 cis16 b16 gis16 | % 104
  a4 r8 | % 105
  R4.*3 | % 108
  r8 r8 b8 | % 109
  cis8 d16 cis16 b16 a16 | % 110
  d8 e16 d16 cis16 b16 | % 111
  e8 fis16 e16 d16 cis16 | % 112
  fis8 g16 fis16 e16 d16 | % 113
  g4.~ | % 114
  g16 a16 b8 a8~ | % 115
  a8 g16 fis16 e16 fis16 | % 116
  d16 cis16 d16 fis16 b,16 a16 | % 117
  g16 b16 e16 g16 fis16 a16 | % 118
  g16 fis16 e16 g16 cis,16 b16 | % 119
  a16 cis16 fis16 a16 g16 b16 | % 120
  a16 g16 fis16 a16 d,16 c16 | % 121
  b16 a16 g16 b16 a16 c16 | % 122
  b16 a16 g16 b16 e,16 d16 | % 123
  cis4 r8 | % 124
  R4.*4 | % 128
  r8 r8 d'8 % \mark\markup\small {\musicglyph #"scripts.segno"}
}

oboeMusicEnd = \relative cis'' {
  cis16 b16 ais16 \tempo 4=65 cis16 \tempo 4=64 fis,16 e16 | % 83
  \tempo 4=60 d16 fis16 \tempo 4=54 b16 \tempo 4=50 d16
  \tempo 4=46 cis16 \tempo 4=39 ais16 | % 84
  \tempo 4=25 b4.
}

oboeMusic = { \oboeMusicPartial \oboeMusicOne \oboeMusicTwo }

tenorMusicPartial = \relative d' {
  \clef "treble_8" \global
  \autoBeamOff
  \partial 8 r8 | % 1
}

tenorMusicOne = \relative d' {
  R4.*15 | % 16
  r8 r8 d8 | % 17
  cis8[( d16 cis16]) b16[( ais16]) | % 18
  b8 e8.[( fis32 g32]) | % 19
  fis8[( e16 d16]) cis16[( b16]) | % 20
  ais16[( b32 cis32]) fis,8 r8 | % 21
  R4.*3 | % 24
  r8 r8 d'8 | % 25
  cis8[( d16 cis16]) b16[( ais16]) | % 26
  b8 e8.[( fis32 g32]) | % 27
  fis8[( e16 d16]) cis16[( b16]) | % 28
  ais16[( b32 cis32]) fis,8 cis'8 | % 29
  d8[( cis8]) b8 | % 30
  a8 e'16[( d16 e8]) | % 31
  a,8[( g16 fis16]) e16[( fis16]) | % 32
  d4 d'8 | % 33
  d8[( cis8]) e8 | % 34
  e8[( d8]) fis8 | % 35
  fis8[( e8]) g8 | % 36
  g8[( fis8]) fis8 | % 37
  b,8 e8 cis8 | % 38
  ais4 b8 | % 39
  fis16[( e'16 d16 cis16]) d16[( b16]) | % 40
  d8[( cis8]) r8 | % 41
  R4. | % 42
  r8 r8 e8 | % 43
  fis8[( g16 fis16]) e16[( d16]) | % 44
  c16[( b16]) fis'8.[( g32 a32]) | % 45
  g8[( e8]) dis8 | % 46
  e8 b8 g'8 | % 47
  g8[( fis8]) b,8 | % 48
  e8[( cis8]) ais8 | % 49
  b8[( fis'16 d16]) e16[( cis16]) | % 50
  b16[\melisma cis16] d4~ | % 51
  d8[ e16 cis16 d16 b16] | % 52
  cis16[ d16] e4~ | % 53
  e8[ fis16 d16 e16 cis16] | % 54
  dis16[ e16] fis4~ | % 55
  fis8[ g16 e16 fis16 dis16] | % 56
  e16[ fis16] g4~ | % 57
  g16[ fis16 e16 d16 cis16 b16] | % 58
  ais16[ b16]\melismaEnd cis16[( d16]) e16[( fis16]) | % 59
  e16 d16 cis16[( b16]) cis16[( ais16]) | % 60
  b4.~ | % 61
  b4.~ | % 62
  b4.~ | % 63
  b4.~ | % 64
  b8 g'8 e8 | % 65
  cis16 ais16 b16[\melisma cis16 d16 e16] | % 66
  fis16[ e16 d16 cis16 e8]~ | % 67
  e16[ d16 cis16 b16]\melismaEnd d8 | % 68
  \appoggiatura cis8 b4 r8 | % 69
  R4.*15 | % 84
}

tenorMusicTwo = \relative d' {
  r8 r8 d8 | % 85
  gis,16[( a16]) b8.\trill[( gis32 a32]) | % 86
  b16[( cis16 d8]) cis8 | % 87
  d16[( fis16 e8]) d8 | % 88
  cis8 b16[( a16]) cis8 | % 89
  fis8[( e8]) d8 | % 90
  cis8[( b8]) a8 | % 91
  gis8 b16[( a16 gis16 fis16]) | % 92
  d'8 cis8 b8 | % 93
  eis16[\melisma fis16 fis8. eis32 fis32] | % 94
  gis8\melismaEnd gis,8 a16[( d16]) | % 95
  \appoggiatura d8 cis8 b16[( a16]) gis16[( a16]) | % 96
  fis4 r8 | % 97
  R4.*7 | % 104
  r8 r8 cis'8 | % 105
  dis16[( e16]) e8.\trill[( dis32 e32]) | % 106
  fis16[( g16 a16 fis16]) g16[( e16]) | % 107
  c16[( e16 d8]) c8 | % 108
  b8 a16[( g16]) g'8 | % 110
  g8[( fis8]) fis8 | % 110
  fis8[( e8]) e8 | % 111
  e8[( d8]) d8 | % 112
  d8[( cis8]) cis8 | % 113
  e8 a,16[(\melisma b16 cis16 d16]) | % 114
  e16[( fis16])\melismaEnd g16[( fis16]) g16[( e16]) | % 115
  fis8 d8 cis8 | % 116
  d8 r8 d8~ | % 117
  d8 cis8 d8 | % 118
  e4.~ | % 119
  e8 d8 e8 | % 120
  fis4.~\melisma | % 121
  fis8[ g16 e16 fis16 d16] | % 122
  e16[ fis16] g4~ | % 123
  g16[ fis16 e16 d16 cis16 b16] | % 124
  cis8\melismaEnd a8 fis'8~ | % 125
  fis8 b,8 e16[( fis32 g32]) | % 126
  cis,8 b16 a16 d8~ | % 127
  d16 b16 cis8. d16 | % 128
  d4 r8
}

tenorMusicEnd = {
  R4.
}

tenorMusic = { \tenorMusicPartial \tenorMusicOne \tenorMusicTwo }

tenorLyrics = \lyricmode {
  Aus Got -- tes mil -- den Va -- ter -- hän -- den,
  aus Got -- tes mil -- den Va -- ter -- hän -- den
  fließt sei -- ner Kin -- der Wohl -- er -- gehn,
  aus Got -- tes mil -- den Va -- ter -- hän -- den
  fließt sei -- ner Kin -- der Wohl -- er -- gehn,
  aus Got -- tes mil -- den Va -- ter -- hän -- den
  fließt sei -- ner Kin -- der Wohl -- er -- gehn,
  sei -- ner Kin -- der Wohl -- er -- gehn,
  sei -- ner Kin -- der Wohl -- er -- gehn.
  Er kann das Wah -- re, Gu -- te schen -- ken,
  er gibt uns mehr, als wir ge -- den -- ken,
  und bes -- ser, als wir es ver -- stehn;
  er kann das Wah -- re, Gu -- te schen -- ken,
  er gibt uns mehr, als wir ge -- den -- ken,
  und bes -- ser, als wir es ver -- stehn,
  bes -- ser, als wir es ver -- stehn,
  und bes -- ser, als wir, bes -- ser als wir es ver -- stehn.
}

continuoMusicPartial = \relative b {
  \clef "bass" \global
  \partial 8 b8 | % 1
}

continuoMusicOne = \relative e {
  e4 fis8 | % 2
  g4 cis,8 | % 3
  d4 e8 | % 4
  fis4 ais,8 | % 5
  b4 b'8 | % 6
  cis4 a8 | % 7
  d8 fis,8 a8 | % 8
  d,8 fis,8 a8 | % 9
  d,4 fis'8 | % 10
  b,4 a8 | % 11
  g4 b8 | % 12
  e,4 e'8 | % 13
  fis8 ais,8 b8 | % 14
  fis8 fis'8 ais8 | % 15
  b8 d,8 fis8 | % 16
  b,4 b'8 | % 17
  e,4 fis8 | % 18
  g4 cis,8 | % 19
  d4 e8 | % 20
  fis4 ais,8 | % 21
  b8( cis8 d8) | % 22
  cis8( d8 e8) | % 23
  d8( e8 fis8) | % 24
  b,4 b'8 | % 25
  e,4 fis8 | % 26
  g4 cis,8 | % 27
  d4 e8 | % 28
  fis8 ais8 fis8 | % 29
  b4 b,8 | % 30
  cis4 cis'8 | % 31
  d8 fis,8 a8 | % 32
  d,8 fis8 d8 | % 33
  a'4 ais8 | % 34
  b4 b,8 | % 35
  e4 d8 | % 36
  cis8 dis8 b8 | % 37
  e16( a16 g16 fis16 e16 d16) | % 38
  cis8 fis8 g8 | % 39
  ais,8 b8 g8 | % 40
  fis8 fis'16( e16 d16 cis16) | % 41
  b4 b'8 | % 42
  cis4 a8 | % 43
  d8 d,8 e8 | % 44
  fis8 b,8 dis8 | % 45
  e8 g,8 b8 | % 46
  e,8 g8 e8 | % 47
  fis4 r8 | % 48
  g4 r8 | % 49
  fis8 e8 fis8 | % 50
  b4 b'8 | % 51
  cis8( b8) r8 | % 52
  b8( ais8) r8 | % 53
  b8 b,8 r8 | % 54
  b'4 dis,8 | % 55
  e8 e,8 r8 | % 56
  cis'8 d8 e8 | % 57
  fis8 g8 e8 | % 58
  cis8 b8 ais8 | % 59
  b8 fis'8 fis,8 | % 60
  g16 b'16( a16 g16 fis16 e16) | % 61
  dis8( e8 fis8) | % 62
  b,8 b'8 a8 | % 63
  g4 dis8 | % 64
  e4.~ | % 65
  e8 d8 cis8 | % 66
  d8 g8 ais,8 | % 67
  b8 fis'8 fis,8 | % 68
  b4 b'8 | % 69
  e,4 fis8 | % 70
  g4 cis,8 | % 71
  d4 e8 | % 72
  fis4 ais,8 | % 73
  b4 b'8 | % 74
  cis4 a8 | % 75
  d8 fis,8 a8 | % 76
  d,8 fis,8 a8 | % 77
  d,4 fis'8 | % 78
  b,4 a8 | % 79
  g4 b8 | % 80
  e,4 e'8 | % 81
  fis8 ais,8 b8 | % 82
  fis8 fis'8 ais8 | % 83
  b8 d,8 fis8 | % 84
}

continuoMusicTwo = \relative b, {
  b4_\fermata r8 | % 85
  r16 e16( d16 cis16 b16 cis16) | % 86
  d16( e16 fis16) d16( e16 gis16) | % 87
  fis16( a16) gis16( a16 b16 gis16) | % 88
  a8 a,8 r8 | % 89
  r16 fis'16( gis16 ais16) b16( gis16) | % 90
  a16( fis16) gis16( eis16) fis16( d16) | % 91
  b4.~ | % 92
  b16 a16 b16( cis16) d16( b16) | % 93
  gis16( b16) a16( gis16) a16( fis16) | % 94
  eis8 cis'8 fis8 | % 95
  a,8 cis8 cis,8 | % 96
  fis4 fis'8 | % 97
  b,4 cis8 | % 98
  d4 gis,8 | % 99
  a4 b8 | % 100
  cis4 f,8 | % 101
  fis4 fis'8 | % 102
  gis4 e8 | % 103
  a8 cis,8 e8 | % 104
  a,4 r8 | % 105
  r16 a'16( g16 fis16)
  g16( e16) | % 106
  dis8 b8 e8 | % 107
  a,16( g16) fis16( e16) fis16( d16) | % 108
  g16( a16 b16 cis16 d16 e16) | % 109
  a,8( b8) r8 | % 110
  b8( cis8) r8 | % 111
  cis8( d8) r8 | % 112
  d8( e8) r8 | % 113
  a,16( b16 cis16 d16 e16 fis16) | % 114
  g8 cis,8 a8 | % 115
  d8 fis,8 a8 | % 116
  d,8 a'8 d8 | % 117
  e4.~ | % 118
  e8 cis8 a8 | % 119
  fis'4.~ | % 120
  fis8 d8 b8 | % 121
  g'4.~ | % 122
  g8 e8 g8 | % 123
  a4.~ | % 124
  a16 g16 fis16( e16) d16( fis16) | % 125
  g16( a16) g16( fis16) g16( e16) | % 126
  a16( g16) fis16( e16) fis16( d16) | % 127
  a'8 g,4 | % 128
  d4 b''8
}

continuoMusicEnd = \relative b, {
  b4.
}

continuoMusic = { \continuoMusicPartial \continuoMusicOne \continuoMusicTwo }

continuoMarks = {
  \partial 8 s8
  s4.*15
  s4 s8_\pianoDynamicText
  s4.*51
  s4 s8_\forteDynamicText
  s4.*16
  s16 s16_\pianoDynamicText s4
  s4.*10
  s4 s8_\forteDynamicText
  s4.*8
  s16 s16_\pianoDynamicText s4
}

keybDynamics = {
  \partial 8 s8
  s4.*15
  s4 s8\p
  s4.*51
  s4 s8\f
  s4.*16
  s16 s16\p s4
  s4.*10
  s4 s8\f
  s4.*8
  s16 s16\p s4
}
