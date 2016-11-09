pieceName = "8. CHOR."
instInfo = #(format "~A, ~A, ~A, ~A, ~A"
  #'fluteName #'oboeName #'stringsName #'chorusName #'continuoName )

global = {
  \key d \major
  \time 2/2
}

globalMarksBreaks = {
  \partial 2
  %\mark \markup { \bold "CHOR." }
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \override Score.RehearsalMark.font-size = #1
  s2
  s1*31
  \bar "||" \time 4/4
  s4 \mark \markup { \bold "RECITATIV." } s4 s2
  s1*5
  \partial 2 s2
  \override Score.BarNumber.stencil = #ii-bar-number
  \bar "||" \set Score.currentBarNumber = #38
  \time 2/2 \partial 2 \mark \markup { \bold "CHOR." } s2
  \revert Score.BarNumber.stencil
  s1*7
  \bar "||" \time 4/4 s4
  \mark \markup { \bold "RECITATIV." } s4 s2
  s1*3
  \partial 2 s2
  \override Score.BarNumber.stencil = #ii-bar-number
  \bar "||" \set Score.currentBarNumber = #50
  \time 2/2 \partial 2 \mark \markup { \bold "CHOR." } s2
  \revert Score.BarNumber.stencil
  s1*7
  \bar "||" \time 4/4 s4
  \mark \markup { \bold "RECITATIV." } s4 s2
  s1*4
  \mark \markup{ \bold "Andante" }
  s1*2
  \partial 2 s2
  \override Score.BarNumber.stencil = #ii-bar-number
  \bar "||" \set Score.currentBarNumber = #65
  \time 2/2 \partial 2 \mark \markup { \bold "CHOR." }
  s2 \revert Score.BarNumber.stencil
  s1*31
  \partial 2 s2 \bar "|."
}

fluteMusic = \relative fis'' {
  \clef "treble" \global
  \tempo 4=120
  \partial 2 fis4 e4 | % 1
  \schleifer g!4 #-1 fis4 e4 d4 | % 2
  cis4\trill b8( a8) a'4 \appoggiatura g8 fis4 | % 3
  \appoggiatura e8 d4 g4 e4 a4 | % 4
  \appoggiatura g8 fis2 e4 e4 | % 5
  e1 ~ | % 6
  e4 d8 cis8 d8( e8 fis8 d8) | % 7
  e8( cis8 b8 a8) cis4 b4 | % 8
  a2 fis'4 e4 | % 9
  \schleifer g!4 #-1 fis4 e4 d4 | % 10
  cis4\trill b8( a8) a'4 \appoggiatura g8 fis4 | % 11
  \appoggiatura e8 d4 g4 e4 a4 | % 12
  \appoggiatura g8 fis2 e4 e4 | % 13
  e1 ~ | % 14
  e4 d8 cis8 d8( e8 fis8 d8) | % 15
  e8( cis8 b8 a8) cis4 b4 | % 16
  a2 d8( cis8 b8 a8) | % 17
  a'8( d,8) e8( fis8) g8( fis8) fis8( e8) | % 18
  fis8( e8) e8( d8) cis8( g'8) fis8( e8) | % 19
  d8( cis8) e8( cis8) d8( e8) fis8( e8) | % 20
  \appoggiatura e8 fis2 a8( g8 fis8 e8) | % 21
  dis8( fis8) e8( fis8) g8( fis8) a8( fis8) | % 22
  g8( fis8) e8( d8) cis8( e8) d8( fis8) | % 23
  e8( g8) fis8( e8) cis4.\trill d8 | % 24
  d2 d8( cis8 b8 a8) | % 25
  a'8( d,8) e8( fis8) g8( fis8) fis8( e8) | % 26
  fis8( e8) e8( d8) cis8( g'8) fis8( e8) | % 27
  d8( cis8) e8( cis8) d8( e8) fis8( e8) | % 28
  \appoggiatura e8 fis2 a8( g8 fis8 e8) | % 29
  dis8( fis8) e8( fis8) g8( fis8) a8( fis8) | % 30
  g8( fis8) e8( d8) cis8( e8) d8( fis8) | % 31
  e8( g8) fis8( \tempo 4=115 e8) \tempo 4=112 cis4.\trill \tempo 4=99 d8 | % 32
  \tempo 4=90
  d4 r4 r2 | % 33
  R1*5 | % 38
  r2 \tempo 4=120 e8( fis16 g16) e4 | % 39
  \appoggiatura d8 c4 b8( a8) d4 c4 | % 40
  b4 a8 g8 g'4 fis4 | % 41
  e4 d4 cis4 d8( b8) | % 42
  ais4 gis8( fis8) fis'4 fis4 | % 43
  fis1 ~ | % 44
  fis4 fis,8( gis8) ais8( b8 cis8 d8) | % 45
  e8( g8 fis8 \tempo 4=115 e8) \tempo 4=112 d4 \tempo 4=105 cis4 | % 46
  \tempo 4=90 | % 46
  b4 r4 r2 | % 47
  R1*3 | % 50
  r2 \tempo 4=120 cis8( b8) cis8( a8) | % 51
  e'4 fis4 d8\trill cis8 d4 | % 52
  \appoggiatura d8 cis2 cis4 fis4 | % 53
  eis4 fis4 gis4 a8 fis8 | % 54
  gis8( fis8 eis8 dis8) cis8( b8 a8 gis8) | % 55
  a8( gis8 fis8 gis8) a8( b8 cis8 dis8) | % 56
  eis8( dis8 cis8 dis8) eis8( fis8 gis8 eis8) | % 57
  fis4. \tempo 4=115 gis8 \tempo 4=112 eis4.\trill \tempo 4=99 fis8 | % 58
  \tempo 4=90
  fis4 r4 r2 | % 59
  R1*4 | % 63
  \tempo 4=60
  R1*2 | % 65
  r2 \tempo 4=120 fis4 e4 | % 66
  \schleifer g!4 #-1 fis4 e4 d4 | % 67
  cis4\trill b8( a8) a'4 \appoggiatura g8 fis4 | % 68
  \appoggiatura e8 d4 g4 e4 a4 | % 69
  \appoggiatura g8 fis2 e4 e4 | % 70
  e1 ~ | % 71
  e4 d8 cis8 d8( e8 fis8 d8) | % 72
  e8( cis8 b8 a8) cis4 b4 | % 73
  a2 fis'4_\markup{ \italic "piano" } e4 | % 74
  \schleifer g!4 #-1 fis4 e4 d4 | % 75
  cis4\trill b8( a8) a'4 \appoggiatura g8 fis4 | % 76
  \appoggiatura e8 d4 g4 e4 a4 | % 77
  \appoggiatura g8 fis2 e4 e4 | % 78
  e1 ~ | % 79
  e4 d8 cis8 d8( e8 fis8 d8) | % 80
  e8( cis8 b8 a8) cis4 b4\trill | % 81
  a2 d8_\markup{ \italic "forte" }( cis8 b8 a8) | % 82
  a'8( d,8) e8( fis8) g8( fis8) fis8( e8) | % 83
  fis8( e8) e8( d8) cis8( g'8) fis8( e8) | % 84
  d8( cis8) e8( cis8) d8( e8) fis8( e8) | % 85
  \appoggiatura e8 fis2 a8( g8) fis8( e8) | % 86
  dis8( fis8) e8( fis8) g8( fis8) a8( fis8) | % 87
  g8( fis8) e8( d8) cis8( e8) d8( fis8) | % 88
  e8( g8) fis8( e8) cis4.\trill d8 | % 89
  d2 d8_\markup{ \italic "piano" }( cis8 b8 a8) | % 90
  a'8( d,8) e8( fis8) g8( fis8) fis8( e8) | % 91
  fis8( e8) e8( d8) cis8( g'8) fis8( e8) | % 92
  d8( cis8) e8( cis8) d8( e8) fis8( e8) | % 93
  \appoggiatura e8 fis2 a8( g8 fis8 e8) | % 94
  dis8( fis8) e8( fis8) g8( fis8) a8( fis8) | % 95
  g8( fis8) e8( d8) cis8( e8) d8( \tempo 4=113 fis8) | % 96
  \tempo 4=111 | % 96
  e8( g8) \tempo 4=105 fis8( \tempo 4=102 e8) cis4.\trill \tempo 4=72 d8 | % 97
  \tempo 4=60 | % 97
  d2\fermata
}

oboeMusic = \fluteMusic

violinIMusic = \fluteMusic

violinIIMusic = \relative d'' {
  \clef "treble" \global
  \partial 2 d4 e4 | % 1
  d4 cis4 b4 b4 | % 2
  a2 a4 cis4 | % 3
  d4 d4 d4 cis4 | % 4
  d2 cis8 b8 a8 cis8 | % 5
  b8( a8) b8( a8) gis8( fis8) gis8( fis8) | % 6
  e4 gis4 a4 gis4 | % 7
  a4 a4 a4 gis4 | % 8
  e2 a,4 a'4 | % 9
  d4 cis4 b4 b4 | % 10
  a4 e4 fis4 fis4 | % 11
  fis4 b4 a4 a4 | % 12
  a2 a4 a4 | % 13
  gis4 b8( a8) b4 cis4 | % 14
  d4 gis,4 a4 gis4 | % 15
  a4 a4 a4 gis4 | % 16
  e2 a4 cis4 | % 17
  d4 d4 d4 cis4 | % 18
  d4 cis8 b8 ais4 cis4 | % 19
  b4 ais4 b4 b4 | % 20
  ais2 b4 a4 | % 21
  fis4 b4 b4 b4 | % 22
  b4 b4 a4 a4 | % 23
  a4 a4 a4 a4 | % 24
  a2 a4 cis4 | % 25
  d4 d4 d4 cis4 | % 26
  d4 cis8 b8 ais4 cis4 | % 27
  b4 ais4 b4 b4 | % 28
  ais2 b4 a4 | % 29
  fis4 b4 b4 b4 | % 30
  b4 b4 a4 a4 | % 31
  a4 a4 a4 a4 | % 32
  a4 r4 r2 | % 33
  R1*5 | % 38
  r2 g4 b4 | % 39
  a4 e4 a4 a4 | % 40
  g4 d4 b'4 b4 | % 41
  ais4 b4 g4 e4 | % 42
  fis4 cis4 d'4 cis8( b8) | % 43
  ais4 cis8( b8) cis4 d4 | % 44
  e4 d4 cis4.\trill b8 | % 45
  ais4 b8 cis8 b4 ais4 | % 46
  fis4 r4 r2 | % 47
  R1*3 | % 50
  r2 a8 gis8 a4 | % 51
  a4 a4 a4 gis4 | % 52
  a2 a4 cis4 | % 53
  cis4 cis4 cis4 cis4 | % 54
  cis2 gis4 cis4 | % 55
  cis8 b8 a8 b8 cis4 b8 a8 | % 56
  b2 gis4 cis4 | % 57
  cis8 b8 cis8 d8 gis,4. a8 | % 58
  a4 r4 r2 | % 59
  R1*6 | % 65
  r2 d4 e4 | % 66
  d4 cis4 b4 b4 | % 67
  a4 e4 fis4 fis4 | % 68
  fis4 b4 a4 a4 | % 69
  a2 a4 a4 | % 70
  gis4 b8( a8) b4 cis4 | % 71
  d4 gis,4 a4 gis4 | % 72
  a4 a4 a4 gis4 | % 73
  e2 d'4_\markup{ \italic "piano" } a4 | % 74
  d4 cis4 b4 b4 | % 75
  a2 a4 cis4 | % 76
  d4 d4 d4 cis4 | % 77
  d2 cis8 b8 a8 cis8 | % 78
  b8( a8) b8( a8) gis8( fis8) gis8( fis8) | % 79
  e4 gis4 a4 gis4 | % 80
  a4 a4 a4 gis4 | % 81
  e2 a4_\markup{ \italic "forte" } cis4 | % 82
  d4 d4 d4 cis4 | % 83
  d4 cis8 b8 ais4 cis4 | % 84
  b4 ais4 b4 b4 | % 85
  ais2 b4 a4 | % 86
  fis4 b4 b4 b4 | % 87
  b4 b4 a4 a4 | % 88
  a4 a4 a4 a4 | % 89
  a2 a4_\markup{ \italic "piano" } cis4 | % 90
  d4 d4 d4 cis4 | % 91
  d4 cis8 b8 ais4 cis4 | % 92
  b4 ais4 b4 b4 | % 93
  ais2 b4 a4 | % 94
  fis4 b4 b4 b4 | % 95
  b4 b4 a4 a4 | % 96
  a4 a4 a4 a4 | % 97
  a2
}

violaMusic = \relative a' {
  \clef "alto" \global
  \partial 2 a4 a4 | % 1
  d,4 a'4 b4 g4 | % 2
  e2 d4 a'4 | % 3
  fis4 d4 a'4 a4 | % 4
  a2 a4 e4 | % 5
  gis4 e4 d4 cis4 | % 6
  b4 e4 a,4 d4 | % 7
  cis4 fis4 e4 d4 | % 8
  cis2 d4 e4 | % 9
  d4 fis4 g4 g4 | % 10
  e4 cis4 cis4 cis4 | % 11
  d4 d4 d4 cis4 | % 12
  d2 cis4 e4 | % 13
  e4 gis8( fis8) gis4 a4 | % 14
  b,4 e4 a,4 d4 | % 15
  cis4 fis4 e4 d4 | % 16
  cis2 e4 e4 | % 17
  fis4 fis4 b4 a4 | % 18
  a4 g4 cis,4 cis4 | % 19
  fis4 fis4 fis4 b,4 | % 20
  cis2 fis4 a4 | % 21
  a4 g8 fis8 e4 dis4 | % 22
  e4 e4 e4 b4 | % 23
  e4 d4 e4 e4 | % 24
  fis2 e4 e4 | % 25
  fis4 fis4 b4 a4 | % 26
  a4 g4 cis,4 cis4 | % 27
  fis4 fis4 fis4 b,4 | % 28
  cis2 fis4 a4 | % 29
  a4 g8 fis8 e4 dis4 | % 30
  e4 e4 e4 b4 | % 31
  e4 d4 e4 e4 | % 32
  fis4 r4 r2 | % 33
  R1*5 | % 38
  r2 b,4 e4 | % 39
  e4 c4 a4 d4 | % 40
  d4 b4 e4 fis4 | % 41
  cis'4 fis,4 e4 b4 | % 42
  cis4 ais4 b4 fis'4 | % 43
  fis4 ais,4 ais4 b4 | % 44
  cis4 d4 e4. fis8 | % 45
  g8 e8 fis8 g8 fis4 e4 | % 46
  d4 r4 r2 | % 47
  R1*3 | % 50
  r2 fis4 fis4 | % 51
  e4 d8 e8 fis4 e4 | % 52
  e2 fis4 a4 | % 53
  gis4 a4 b8( eis,8) fis4 | % 54
  eis2 eis4 eis4 | % 55
  fis4 cis4 a4 fis4 | % 56
  cis'8 dis8 eis8 fis8 gis4 eis4 | % 57
  cis4 fis8 d8 cis2 | % 58
  cis4 r4 r2 | % 59
  R1*6 | % 65
  r2 a'4 a4 | % 66
  d,4 a'4 b4 g4 | % 67
  e4 cis4 cis4 cis4 | % 68
  d4 d4 d4 cis4 | % 69
  d2 cis4 e4 | % 70
  e4 gis8( fis8) gis4 a4 | % 71
  b,4 e4 a,4 d4 | % 72
  cis4 fis4 e4 d4 | % 73
  cis2 a'4_\markup{ \italic "piano" } a4 | % 74
  g4 a4 b4 g4 | % 75
  e2 d4 a'4 | % 76
  fis4 d4 a'4 a4 | % 77
  a2 a4 e4 | % 78
  gis4 e4 d4 cis4 | % 79
  b4 e4 a,4 d4 | % 80
  cis4 fis4 e4 d4 | % 81
  cis2 e4_\markup{ \italic "forte" } e4 | % 82
  fis4 fis4 b4 a4 | % 83
  a4 g4 cis,4 cis4 | % 84
  fis4 fis4 fis4 b,4 | % 85
  cis2 fis4 a4 | % 86
  a4 g8 fis8 e4 dis4 | % 87
  e4 e4 e4 b4 | % 88
  e4 d4 e4 e4 | % 89
  fis2 e4_\markup{ \italic "piano" } e4 | % 90
  fis4 fis4 b4 a4 | % 91
  a4 g4 cis,4 cis4 | % 92
  fis4 fis4 fis4 b,4 | % 93
  cis2 fis4 a4 | % 94
  a4 g8 fis8 e4 dis4 | % 95
  e4 e4 e4 b4 | % 96
  e4 d4 e4 e4 | % 97
  fis2
}

sopranoMusicOne = \relative fis'' {
  \clef "treble" \global
  \autoBeamOff
  \partial 2 r2 R1*7 | % 8
  r2 fis4 e4 | % 9
  \schleifer g!4 #-1 fis4 e4 d4 | % 10
  cis4 b8[( a8]) a'4 fis4 | % 11
  d4 g4 e4 a4 | % 12
  fis2 e4 e4 | % 13
  e1 ~ | % 14
  e4 d8[( cis8] d8[ e8]) fis8[( d8]) | % 15
  e8[( cis8]) b8[( a8]) cis4 b4 | % 16
  a2 r2 | % 17
  R1*7 | % 24
  r2 cis4 b8[( a8]) | % 25
  a'4 d,4 g4 fis8[( e8]) | % 26
  fis4 e8[( d8]) cis4 fis4 | % 27
  d4 e8[( cis8]) d4 e4 | % 28
  fis2 a8[\melisma g8 fis8 e8] | % 29
  dis8[ fis8 e8 fis8] g8[ fis8 a8 fis8] | % 30
  g8[ fis8 e8 d8] cis8[ e8 d8 fis8] | % 31
  e8[ g8 fis8 e8] \appoggiatura d8 cis4.\melismaEnd d8 | % 32
  d4 r4 r2 | % 33
  R1*5 | % 38
  r2 e8[( fis16 g16]) e4 | % 39
  \appoggiatura d8 c4 b8[( a8]) d4 c4 | % 40
  b4 a8[( g8]) g'4 fis4 | % 41
  e4 d4 cis4 d8[( b8]) | % 42
  ais4 gis8 fis8 fis'4 fis4 | % 43
  fis1 | % 44
  fis4 fis,8 gis8 ais8[( b8]) cis8[( d8]) | % 45
  e8[( g8]) fis8[( e8]) d4( cis4) | % 46
  b4 r4 r2 | % 47
  R1*3 | % 50
  r2 cis8[( b8]) cis8[( a8]) | % 51
  e'4 fis4 d8[( cis8]) d4 | % 52
  cis2 cis4 fis4 | % 53
  eis4 fis4 gis4 a8[( fis8]) | % 54
  gis4 cis,4 cis8[\melisma b8 a8 gis8] | % 55
  a8[ gis8 fis8 gis8] a8[ b8 cis8 dis8] | % 56
  eis8[ dis8]\melismaEnd cis8[( dis8]) eis8[( fis8]) gis8[( eis8]) | % 57
  fis4. gis8 eis2 | % 58
  fis8
}

sopranoRecitMusic = \relative fis' {
  r16 fis16 a8 b8 cis8 cis8 cis8 a8 | % 59
  e'8 e8 r8 a,8 e'8 fis8 g8 r16 e16 | % 60
  cis8 a8 a'8 e8 fis8 r16 d16 d8 a8 | % 61
  fis8 r16 a16 d16 d16 e16 fis16 g8 g,8 r8 g'8 | % 62
  cis,8 r16 cis16 d8 e8 ais,8 cis8 e8 r16 cis16 | % 63
  d32[\melisma cis32 b16]~ b32[ a32 g32 fis32] g32[ a32 b32 cis32] d32[ e32 fis32 d32]
  e32[ d32 cis16]~ cis32[ b32 a32 gis32] a32[ b32 cis32 d32] e32[ fis32 g32 e32] | % 64
  fis8\melismaEnd d8 a8 cis8 d4 r4 | % 65
}

sopranoMusicTwo = \relative fis'' {
  r2 fis4 e4 | % 66
  g4 fis4 e4 d4 | % 67
  cis4 b8[( a8]) a'4 fis4 | % 68
  d4 g4 e4 a4 | % 69
  fis2 e4 e4 | % 70
  e1 ~ | % 71
  e4 d8[( cis8] d8[ e8]) fis8[( d8]) | % 72
  e8[( cis8]) b8[( a8]) cis4 b4 | % 73
  a2 r2 | % 74
  R1*7 | % 81
  r2 cis4 b8[( a8]) | % 82
  a'4 d,4 g4 fis8[( e8]) | % 83
  fis4 e8[( d8]) cis4 fis4 | % 84
  d4 e8[( cis8]) d4 e4 | % 85
  fis2 a8[\melisma g8 fis8 e8] | % 86
  dis8[ fis8 e8 fis8] g8[ fis8 a8 fis8] | % 87
  g8[ fis8 e8 d8] cis8[ e8 d8 fis8] | % 88
  e8[ g8 fis8 e8] cis4.\trill\melismaEnd d8 | % 89
  d2 r2 | % 90
  R1*7 | % 97
  r2
}

sopranoMusic = { \sopranoMusicOne \sopranoRecitMusic \sopranoMusicTwo }

sopranoLyricsOne = \lyricmode {
  Was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr,
  zehn -- mal mehr,
  wünscht man dir noch zehn -- mal mehr.
  Was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr,
  zehn -- mal mehr,
  Dich soll kein Ver -- häng -- niss quä -- len,
  nichts an dei -- nem Wohl -- sein feh -- len,
  an dei -- nem Wohl -- sein,
  nichts an dei -- nem Wohl -- sein feh -- len.
  Die -- se Lust er -- götzt zu sehr,
  mehr als wir ent -- de -- cken kön -- nen,
  mehr als wir ent -- de -- cken kön -- nen.
}

sopranoRecitLyrics = \lyricmode {
  Drum wirst du, gro -- ßer Mann, ver -- zei -- hen,
  dass wir da -- bei, nach un -- sers Leh -- rers Treu,
  uns auch mit ihm bei dei -- nem Fe -- ste freu -- en;
  doch auch, dass uns -- re Pflicht
  nichts mehr von neu -- en Wün -- schen spricht.
}

sopranoLyricsTwo = \lyricmode {
  Was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr,
  zehn -- mal mehr,
  wünscht man dir noch zehn -- mal mehr.
  Was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr,
  zehn -- mal mehr.
}

sopranoLyrics = { \sopranoLyricsOne \sopranoRecitLyrics \sopranoLyricsTwo }

altoMusicOne = \relative a' {
  \clef "treble" \global
  \autoBeamOff
  \partial 2 r2 R1*7 | % 8
  r2 a4 a4 | % 9
  d4 cis4 b4 b4 | % 10
  a4 e4 fis4 fis4 | % 11
  fis4 b4 a4 a4 | % 12
  a2 a4 a4 | % 13
  gis4 b8[( a8]) b4 cis4 | % 14
  d4 gis,4 a4 gis4 | % 15
  a4 a4 a4 gis4 | % 16
  e2 r2 | % 17
  R1*7 | % 24
  r2 a4 a4 | % 25
  a4 fis4 b4 cis4 | % 26
  d4 cis8[( b8]) ais4 cis4 | % 27
  b4 ais4 b4 b4 | % 28
  ais2 b4 a4 | % 29
  fis8[( a8]) g8[( fis8]) e4 dis4 | % 30
  e4 e4 e4 b'4 | % 31
  e,4 a4 a4 a4 | % 32
  a4 r4 r2 | % 33
  R1*5 | % 38
  r2 g4 b4 | % 39
  a4 e4 d4 a'4 | % 40
  g4 d4 e4 fis4 | % 41
  ais4 b4 g4 e4 | % 42
  fis4 cis4 d8[( e8]) fis8[( gis8]) | % 43
  ais4 cis8[( b8]) cis4 d4 | % 44
  cis8[( ais8]) fis4 e4. fis8 | % 45
  g8 e8 fis8 g8 fis4( e4) | % 46
  d4
}

altoRecitMusic = \relative fis' {
  r8 fis8 b8 ais8 b8 r16 d16 | % 47
  eis,8 gis8 cis8 gis8 a4 r8 fis8 | % 48
  cis'8 d8 e8 r16 e,16 g8 g8 b8 a8 | % 49
  fis8 r16 cis'16 cis8 e,8 d8 r16 fis16 eis8 fis8 | % 50
  b16 a16 fis8
}

altoMusicTwo = \relative a' {
  r4 a8[( gis8]) a4 | % 51
  a4 a4 a4 gis4 | % 52
  a2 a4 a4 | % 53
  gis4 a4 b8[( eis,8]) fis4 | % 54
  eis4 cis4 gis'4 cis4 | % 55
  cis8[( b8]) a8[( b8]) cis4 b8[( a8]) | % 56
  b2 gis4 cis4 | % 57
  cis8 b8 cis8 d8 gis,2 | % 58
  a4 r4 r2 | % 59
  R1*6 | % 65
  r2 a4 a4 | % 66
  d4 cis4 b4 b4 | % 67
  a4 e4 fis4 fis4 | % 68
  fis4 b4 a4 a4 | % 69
  a2 a4 a4 | % 70
  gis4 b8[( a8]) b4 cis4 | % 71
  d4 gis,4 a4 gis4 | % 72
  a4 a4 a4 gis4 | % 73
  e2 r2 | % 74
  R1*7 | % 81
  r2 a4 a4 | % 82
  a4 fis4 b4 cis4 | % 83
  d4 cis8[( b8]) ais4 cis4 | % 84
  b4 ais4 b4 b4 | % 85
  ais2 b4 a4 | % 86
  fis8[( a8]) g8[( fis8]) e4 dis4 | % 87
  e4 e4 e4 b'4 | % 88
  e,4 a4 a4 a4 | % 89
  a2 r2 | % 90
  R1*7 | % 97
  r2
}

altoMusic = { \altoMusicOne \altoRecitMusic \altoMusicTwo }

altoLyricsOne = \lyricmode {
  Was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr,
  was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr.
  Was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr,
  was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr.
  Dich soll kein Ver -- häng -- niss quä -- len,
  nichts an dei -- nem Wohl -- sein feh -- len,
  dich soll kein Ver -- häng -- niss quä -- len,
  nichts an dei -- nem Wohl -- sein feh -- len.
}

altoRecitLyrics = \lyricmode {
  Dein gan -- zes Haus seh als ein Tem -- pel aus,
  wo man mehr Lob als ban -- ge Seuf -- zer hört;
  in dem kein Fall die sü -- ße Ru -- he stört.
}

altoLyricsTwo = \lyricmode {
  Die -- se Lust er -- götzt zu sehr,
  mehr als wir ent -- de -- cken kön -- nen,
  die -- se Lust er -- götzt zu sehr,
  mehr als wir ent -- de -- cken kön -- nen.
  Was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr,
  was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr.
  Was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr,
  Was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr.
}

altoLyrics = { \altoLyricsOne \altoRecitLyrics \altoLyricsTwo }

tenorMusicOne = \relative d' {
  \clef "treble_8" \global
  \autoBeamOff
  \partial 2 r2 R1*7 | % 8
  r2 d4 e4 | % 9
  d4 fis4 g4 g4 | % 10
  e4 cis4 cis4 cis4 | % 11
  d4 d4 d4 cis4 | % 12
  d2 cis4 e4 | % 13
  e4 gis8[( fis8]) gis4 a4 | % 14
  b,4 e4 a,4 d4 | % 15
  cis4 fis4 e4 d4 | % 16
  cis2 r2 | % 17
  R1*7 | % 24
  r2 e4 e4 | % 25
  fis4 fis4 b,4 a4 | % 26
  a'4 g4 cis,4 cis4 | % 27
  fis4 fis4 fis4 b,4 | % 28
  cis2 b4 c4 | % 29
  b4 b4 b4 b4 | % 30
  b4 b4 a4 fis4 | % 31
  a8[( e'8]) d4 e4 e4 | % 32
  fis4
}

tenorRecitMusic = \relative fis' {
  r8 fis8 fis8[( cis8]) r4 | % 33
  r8 fis,8 e'8 d8 d4 r8 b8 | % 34
  fis'8 fis8 fis8 g8 a8 fis8 d8 r16 a16 | % 35
  c8 c8 c8 b8 g4 r8 g8 | % 36
  f'8 f8 r8 e16 d16 g8 d8 b8 d8 | % 37
  e8 r16 b16 gis8 e8 c'8 a8 dis8 g8 | % 38
  e4
}

tenorMusicTwo = \relative b {
  r4 b4 e4 | % 39
  e4 c4 a4 d4 | % 40
  d4 b4 b4 d4 | % 41
  e4 fis4 e4 b4 | % 42
  cis4 ais4 fis4 b4 | % 43
  cis4. d8 e8[( ais,8]) b4 | % 44
  cis4 d4 e4. b8 | % 45
  e8 e8 d8 cis8 fis,4( ais4) | % 46
  b4 r4 r2 | % 47
  R1*3 | % 50
  r2 fis'4 fis4 | % 51
  e4 d8[( e8]) fis4 e4 | % 52
  e2 fis4 cis4 | % 53
  cis4 cis4 cis4 cis4 | % 54
  cis4 gis4 eis'4 eis4 | % 55
  fis4 cis4 a4 fis4 | % 56
  cis'4 eis8 fis8 gis4 eis4 | % 57
  cis4 fis8[( d8]) cis2 | % 58
  cis4 r4 r2 | % 59
  R1*6 | % 65
  r2 d4 a4 | % 66
  b8[( d8]) fis4 g4 g4 | % 67
  e4 cis4 cis4 cis4 | % 68
  d4 d4 d4 cis4 | % 69
  d2 cis4 e4 | % 70
  e4 gis8[( fis8]) gis4 a4 | % 71
  b,4 e4 a,4 d4 | % 72
  cis4 fis4 e4 d4 | % 73
  cis2 r2 | % 74
  R1*7 | % 81
  r2 e4 e4 | % 82
  fis4 fis4 b,4 a4 | % 83
  a'4 g4 cis,4 cis4 | % 84
  fis4 fis4 fis4 b,4 | % 85
  cis2 b4 c4 | % 86
  b4 b4 b4 b4 | % 87
  b4 b4 a4 fis4 | % 88
  a8[( e'8]) d4 e4 e4 | % 89
  fis2 r2 | % 90
  R1*7 | % 97
  r2
}

tenorMusic = { \tenorMusicOne \tenorRecitMusic \tenorMusicTwo }

tenorLyricsOne = \lyricmode {
  Was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr,
  was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr.
  Was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr,
  was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr.
}

tenorRecitLyrics = \lyricmode {
  Ja wohl! Du hast's ver -- dient,
  wer dich aus dei -- nem Ruh -- me kennt,
  des Un -- rechts Gei -- ßel nennt;
  hin -- ge -- gen der Ge -- rech -- ten Schirm und Schutz,
  der bie -- tet Not und Un -- glück Trutz.
}

tenorLyricsTwo = \lyricmode {
  Dich soll kein Ver -- häng -- niss quä -- len,
  nichts an dei -- nem Wohl -- sein feh -- len,
  dich soll kein Ver -- häng -- niss quä -- len,
  nichts an dei -- nem Wohl -- sein feh -- len.
  Die -- se Lust er -- götzt zu sehr,
  mehr als wir ent -- de -- cken kön -- nen,
  die -- se Lust er -- götzt zu sehr,
  mehr als wir ent -- de -- cken kön -- nen.
  Was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr,
  was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr.
  Was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr,
  Was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr.
}

tenorLyrics = { \tenorLyricsOne \tenorRecitLyrics \tenorLyricsTwo }

bassMusic = \relative d' {
  \clef "bass" \global
  \autoBeamOff
  \partial 2 r2 R1*7 | % 8
  r2 d4 cis4 | % 9
  b4 a4 g4 e4 | % 10
  a4 g4 fis4 a4 | % 11
  b4 g4 a4 a,4 | % 12
  d2 a'8[( b8]) cis8[( b8]) | % 13
  d4 cis4 b4 a4 | % 14
  gis4 fis8[( e8]) fis4 b,4 | % 15
  cis4 d4 e4 e4 | % 16
  a,2 r2 | % 17
  R1*7 | % 24
  r2 a'4 g4 | % 25
  fis4 b4 e,4 a4 | % 26
  d,4 e4 fis4 ais4 | % 27
  b4 fis4 b4 g4 | % 28
  fis2 fis4 a4 | % 29
  b4 cis8[( dis8]) e4 b4 | % 30
  e,4 fis8[( g8]) a4 b4 | % 31
  cis4 d4 a4 a,4 | % 32
  d4 r4 r2 | % 33
  R1*5 | % 38
  r2 e4 g4 | % 39
  a4 g4 fis4 d4 | % 40
  g4 fis4 e4 d4 | % 41
  cis4 b4 e4 g4 | % 42
  fis4 gis8[( ais8]) b8[( cis8]) d8[( b8]) | % 43
  e4 d4 cis4 b4 | % 44
  ais8[( fis8]) b8[( a8]) g8 fis8 e8 d8 | % 45
  cis4 d8[( e8]) fis2 | % 46
  b,4 r4 r2 | % 47
  R1*3 | % 50
  r2 fis'4 e8[( d8]) | % 51
  cis4 d4 b4 e4 | % 52
  a,2 a'4 fis4 | % 53
  cis'4 a4 gis4 fis4 | % 54
  cis'4 cis,4 cis'4 cis4 | % 55
  cis2. cis,4 | % 56
  cis'2~\melisma cis8[ d8 cis8 b8] | % 57
  a8[ gis8]\melismaEnd a8[( b8]) cis2 | % 58
  fis,4 r4 r2 | % 59
  R1*6 | % 65
  r2 d'4 cis4 | % 66
  b4 a4 g4 e4 | % 67
  a4 g4 fis4 a4 | % 68
  b4 g4 a4 a,4 | % 69
  d2 a'8[( b8]) cis8[( b8]) | % 70
  d4 cis4 b4 a4 | % 71
  gis4 fis8[( e8]) fis4 b,4 | % 72
  cis4 d4 e4 e4 | % 73
  a,2 r2 | % 74
  R1*7 | % 81
  r2 a'4 g4 | % 82
  fis4 b4 e,4 a4 | % 83
  d,4 e4 fis4 ais4 | % 84
  b4 fis4 b4 g4 | % 85
  fis2 fis4 a4 | % 86
  b4 cis8[( dis8]) e4 b4 | % 87
  e,4 fis8[( g8]) a4 b4 | % 88
  cis4 d4 a4 a,4 | % 89
  d2 r2 | % 90
  R1*7 | % 97
  r2
}

bassLyrics = \lyricmode {
  Was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr,
  was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr.
  Was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr,
  was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr.
  Dich soll kein Ver -- häng -- niss quä -- len,
  nichts an dei -- nem Wohl -- sein feh -- len,
  dich soll kein Ver -- häng -- niss quä -- len,
  nichts an dei -- nem Wohl -- sein feh -- len.
  Die -- se Lust er -- götzt zu sehr,
  mehr als wir ent -- de -- cken kön -- nen,
  mehr als wir ent -- de -- cken kön -- nen.
  Was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr,
  was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr.
  Was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr,
  Was wir dir vor Glü -- cke gön -- nen,
  wünscht man dir noch zehn -- mal mehr.
}

continuoMusic = \relative d' {
  \clef "bass" \global
  \partial 2 d8( cis8) d8( cis8) | % 1
  b8( a8) b8( a8) g8( fis8) g8( e8) | % 2
  a8( g8) a8( g8) fis8( g8) a8( fis8) | % 3
  b8( a8) b8( g8) a8( g8) a8( a,8) | % 4
  d8( e8) fis8( g8) a8( b8) cis8( a8) | % 5
  d4-. cis4-. b4-. a4-. | % 6
  gis4\trill fis8 e8 fis4 b,4 | % 7
  cis4 d4 e4 e,4 | % 8
  a8 a'8 b8( cis8) d8( cis8) d8( cis8) | % 9
  b8( a8) b8( a8) g8( fis8) g8( e8) | % 10
  a8( g8) a8( g8) fis8( g8) a8( fis8) | % 11
  b8( a8) b8( g8) a8( g8) a8( a,8) | % 12
  d8( e8) fis8( g8) a8( b8) cis8( b8) | % 13
  d8( cis8) d8( cis8) b8( a8) b8( a8) | % 14
  a8( gis8) fis8( e8) fis4 b,4 | % 15
  cis4 d4 e4 e,4 | % 16
  a2 a'4 g4 | % 17
  fis4 b4 e,4 a4 | % 18
  d,4 e4 fis4 ais,4 | % 19
  b4 fis'4 b4 g4 | % 20
  fis8 g8 fis8 e8 dis4 fis4 | % 21
  b,4 cis8 dis8 e4 b4 | % 22
  e,4 fis8 g8 a4 b4 | % 23
  cis4 d4 a'4 a,4 | % 24
  d2 a'4 g4 | % 25
  fis4 b4 e,4 a4 | % 26
  d,4 e4 fis4 ais,4 | % 27
  b4 fis'4 b4 g4 | % 28
  fis8 g8 fis8 e8 dis4 fis4 | % 29
  b,4 cis8 dis8 e4 b4 | % 30
  e,4 fis8 g8 a4 b4 | % 31
  cis4 d4 a'4 a,4 | % 32
  d,4 ais'2. ~ | % 33
  ais2 b2 ~ | % 34
  b2 fis2 ~ | % 35
  fis2 e2 | % 36
  b'1 | % 37
  gis2 a4 c4 | % 38
  r4 b4 e,8( e'8) fis8( g8) | % 39
  a8( b8) c8( a8) fis8( d8) e8( fis8) | % 40
  g8( a8) b8( g8) e8( d8) e8( d8) | % 41
  cis8( b8) ais8( b8) e,8( e'8) fis8( g8) | % 42
  fis8( gis8) ais8( fis8) b8( cis8) d8( b8) | % 43
  e8( d8) e8( d8) cis8( b8) cis8( b8) | % 44
  ais8( fis8) b8( a8) g8( fis8) e8( d8) | % 45
  cis4 d8 e8 fis4 fis,4 | % 46
  b1 ~ | % 47
  b2 fis2 ~ | % 48
  fis4 cis'2. | % 49
  ais2 b4 d4 | % 50
  r4 cis4 fis,8( fis'8) e8( d8) | % 51
  cis8( a8) d8( cis8) b8( a8) b8( e,8) | % 52
  a8( b8) a8( gis8) fis8( gis8) a8( b8) | % 53
  cis8( b8) cis8( dis8) eis8( cis8) fis8( fis,8) | % 54
  cis'4 cis,4 cis'4 cis4 | % 55
  cis1 ~ | % 56
  cis2 ~ cis8 d8 cis8 b8 | % 57
  a8( gis8) a8( b8) cis4 cis,4 | % 58
  fis1 | % 59
  cis'1 ~ | % 60
  cis2 d2 ~ | % 61
  d2 b2 | % 62
  e2 cis4 r8 fis8 | % 63
  b,8 b8 b8 b8 cis8 cis8 cis8 cis8 | % 64
  d8 fis8 a8 a,8 b16 b'16~ b32( a32 g32 fis32)
  a16 e'16~ e32( d32 cis32 b32) | % 65
  cis16 a16 d16 g,16 a8 a,8
  d8 a'8 d8( cis8) | % 66
  b8( a8) b8( a8) g8( fis8) g8( e8) | % 67
  a8( g8) a8( g8) fis8( g8) a8( fis8) | % 68
  b8( a8) b8( g8) a8( g8) a8( a,8) | % 69
  d8( e8) fis8( g8) a8( b8) cis8( b8) | % 70
  d8( cis8) d8( cis8) b8( a8) b8( a8) | % 71
  a8( gis8) fis8( e8) fis4 b,4 | % 72
  cis4 d4 e4 e,4 | % 73
  a8 a'8_\markup{ \italic "piano" } b8 cis8 d8( cis8) d8( cis8) | % 74
  b8( a8) b8( a8) g8( fis8) g8( e8) | % 75
  a8( g8) a8( g8) fis8( g8) a8( fis8) | % 76
  b8( a8) b8( g8) a8( g8) a8( a,8) | % 77
  d8( e8) fis8( g8) a8( b8) cis8( a8) | % 78
  d4 cis4 b4 a4 | % 79
  gis4 fis8 e8 fis4 b,4 | % 80
  cis4 d4 e4 e,4 | % 81
  a8 e'8_\markup{ \italic "forte" } fis8 gis8 a4 g4 | % 82
  fis4 b4 e,4 a4 | % 83
  d,4 e4 fis4 ais,4 | % 84
  b4 fis'4 b4 g4 | % 85
  fis8 g8 fis8 e8 dis4 fis4 | % 86
  b,4 cis8 dis8 e4 b4 | % 87
  e,4 fis8 g8 a4 b4 | % 88
  cis4 d4 a'4 a,4 | % 89
  d8 e8_\markup{ \italic "piano" } fis8 g8 a4 g4 | % 90
  fis4 b4 e,4 a4 | % 91
  d,4 e4 fis4 ais,4 | % 92
  b4 fis'4 b4 g4 | % 93
  fis8 g8 fis8 e8 dis4 fis4 | % 94
  b,4 cis8 dis8 e4 b4 | % 95
  e,4 fis8 g8 a4 b4 | % 96
  cis4 d4 a'4 a,4 | % 97
  d,2_\fermata
}

contFigBass = \figuremode {
  \override BassFigureBracket.stencil = #brackets->bows
  \set figuredBassPlusDirection = #RIGHT
  \set figuredBassAlterationDirection = #RIGHT
  \bassFigureExtendersOn
  \partial 2 s2
  s1*31
  s4 <6>2.~
  <6>4 <6 [5]>4 <_>2~
  <_>2 <6>2
  <6 [5]>2 <_>2
  <6 5>1
  <6\!>2 <_!>4 <6 4 2\+>4
  r4 <6 4>8 <_+> s2
  s1*7
  <_>1
  <[6\\ 4\+ 2]>2 <_>2~
  <_>4 <_\!>2.
  <6>2 <_>4 <6>4
  r4 <_+>4 s2
  s1*7
  <_>1
  <6>1~
  <6>2 <_>2~
  <_>2 <6>2
  <6\! 5>2 <6\\ 5\!>4 r8 <7 _+>8
  <6>8 <6> <6> <6> <6\!> <6> <6> <6>
  <_>8 <_> <5 4> <5 3>
  <_\!>16 <_> <_>32 <_> <_> <_> <_\!>16 <_> <_>32 <_> <_> <_>
  <6>16 <6> <_> <6 5> <5\! 4>8 <7>
}

figBassWarning = {
  \once\override Score.RehearsalMark.direction = #DOWN
  \mark\markup {
    \override #'(font-name . "Linux Libertine O Italic")
    \column { \smaller {
      \line { "* Der Generalbass in diesem Stück ist in der"
              "Originalpartitur nicht vorhanden." }
      \line { "* The figured bass in this piece"
      "is not present in the original score." } } }
  }
}

trebKeybA = \relative fis'' {
  \clef "treble" \global
  \tempo 4=64
  \voiceOne
  \partial 2 fis4 e4 | % 1
  \schleifer g!4 #-1 fis4 e4 d4 | % 2
  cis4\trill b8( a8) a'4 \appoggiatura g8 fis4 | % 3
  \appoggiatura e8 d4 g4 e4 a4 | % 4
  \appoggiatura g8 fis2 e4 e4 | % 5
  e1 ~ | % 6
  e4 d8 cis8 d8( e8 fis8 d8) | % 7
  e8( cis8 b8 a8) cis4 b4 | % 8
  a2 fis'4 e4 | % 9
  \schleifer g!4 #-1 fis4 e4 d4 | % 10
  cis4\trill b8( a8) a'4 \appoggiatura g8 fis4 | % 11
  \appoggiatura e8 d4 g4 e4 a4 | % 12
  \appoggiatura g8 fis2 e4 e4 | % 13
  e1 ~ | % 14
  e4 d8 cis8 d8( e8 fis8 d8) | % 15
  e8( cis8 b8 a8) cis4 b4 | % 16
  a2 d8( cis8 b8 a8) | % 17
  a'8( d,8) e8( fis8) g8( fis8) fis8( e8) | % 18
  fis8( e8) <cis e>8( <b d>8) cis8( g'8) fis8( e8) | % 19
  d8( cis8) e8( cis8) d8( e8) fis8( e8) | % 20
  \appoggiatura e8 fis2 a8( g8 fis8 e8) | % 21
  dis8( fis8) e8( fis8) g8( fis8) a8( fis8) | % 22
  g8( fis8) e8( d8) cis8( e8) d8( fis8) | % 23
  e8( g8) fis8( e8) cis4.\trill d8 | % 24
  d2 d8( cis8 b8 a8) | % 25
  a'8( d,8) e8( fis8) g8( fis8) fis8( e8) | % 26
  fis8( e8) <cis e>8( <b d>8) cis8( g'8) fis8( e8) | % 27
  d8( cis8) e8( cis8) d8( e8) fis8( e8) | % 28
  \appoggiatura e8 fis2 a8( g8 fis8 e8) | % 29
  dis8( fis8) e8( fis8) g8( fis8) a8( fis8) | % 30
  g8( fis8) e8( d8) cis8( e8) d8( fis8) | % 31
  e8( g8) fis8( \tempo 4=115 e8) \tempo 4=112 cis4.\trill \tempo 4=99 d8 | % 32
  \tempo 4=90
  d4 r4 r2 | % 33
  \oneVoice R1*5 | % 38
  r2 \tempo 4=120 \voiceOne e8( fis16 g16) e4 | % 39
  \appoggiatura d8 c4 b8( a8) d4 c4 | % 40
  b4 a8 g8 g'4 fis4 | % 41
  e4 d4 cis4 d8( b8) | % 42
  ais4 gis8( fis8) fis'4 fis4 | % 43
  fis1 ~ | % 44
  fis4 fis,8( gis8) ais8( b8 cis8 d8) | % 45
  e8( g8 fis8 \tempo 4=115 e8) \tempo 4=112 d4 \tempo 4=105 cis4 | % 46
  \tempo 4=90
  b4 \oneVoice r4 r2 | % 47
  R1*3 | % 50
  r2 \tempo 4=120 \voiceOne cis8( b8) cis8( a8) | % 51
  e'4 fis4 d8\trill cis8 d4 | % 52
  \appoggiatura d8 cis2 cis4 fis4 | % 53
  eis4 fis4 gis4 a8 fis8 | % 54
  gis8( fis8 eis8 dis8) cis8( b8 a8 gis8) | % 55
  cis8 b8 a8 b8 a8( b8 cis8 dis8) | % 56
  eis8( dis8 <eis, cis'>8 <fis dis'>8) eis'8( fis8 gis8 eis8) | % 57
  fis4. \tempo 4=115 gis8 \tempo 4=112 eis4.\trill \tempo 4=99 fis8 | % 58
  \tempo 4=90
  fis4 \oneVoice r4 r2 | % 59
  R1*4 | % 63
  \tempo 4=60
  R1*2 | % 65
  r2 \tempo 4=120 \voiceOne fis4 e4 | % 66
  \schleifer g!4 #-1 fis4 e4 d4 | % 67
  cis4\trill b8( a8) a'4 \appoggiatura g8 fis4 | % 68
  \appoggiatura e8 d4 g4 e4 a4 | % 69
  \appoggiatura g8 fis2 e4 e4 | % 70
  e1 ~ | % 71
  e4 d8 cis8 d8( e8 fis8 d8) | % 72
  e8( cis8 b8 a8) cis4 b4 | % 73
  a2 fis'4 e4 | % 74
  \schleifer g!4 #-1 fis4 e4 d4 | % 75
  cis4\trill b8( a8) a'4 \appoggiatura g8 fis4 | % 76
  \appoggiatura e8 d4 g4 e4 a4 | % 77
  \appoggiatura g8 fis2 e4 e4 | % 78
  e1 ~ | % 79
  e4 d8 cis8 d8( e8 fis8 d8) | % 80
  e8( cis8 b8 a8) cis4 b4\trill | % 81
  a2 d8( cis8 b8 a8) | % 82
  a'8( d,8) e8( fis8) g8( fis8) fis8( e8) | % 83
  fis8( e8) <cis e>8( <b d>8) cis8( g'8) fis8( e8) | % 84
  d8( cis8) e8( cis8) d8( e8) fis8( e8) | % 85
  \appoggiatura e8 fis2 a8( g8) fis8( e8) | % 86
  dis8( fis8) e8( fis8) g8( fis8) a8( fis8) | % 87
  g8( fis8) e8( d8) cis8( e8) d8( fis8) | % 88
  e8( g8) fis8( e8) cis4.\trill d8 | % 89
  d2 d8( cis8 b8 a8) | % 90
  a'8( d,8) e8( fis8) g8( fis8) fis8( e8) | % 91
  fis8( e8) <cis e>8( <b d>8) cis8( g'8) fis8( e8) | % 92
  d8( cis8) e8( cis8) d8( e8) fis8( e8) | % 93
  \appoggiatura e8 fis2 a8( g8 fis8 e8) | % 94
  dis8( fis8) e8( fis8) g8( fis8) a8( fis8) | % 95
  g8( fis8) e8( d8) cis8( e8) d8( \tempo 4=113 fis8) | % 96
  \tempo 4=111 | % 96
  e8( g8) \tempo 4=105 fis8( \tempo 4=102 e8) cis4.\trill \tempo 4=72 d8 | % 97
  \tempo 4=60 | % 97
  d2\fermata \bar "|."
}

trebKeybB = \relative d'' {
  \clef "treble" \global
  \voiceTwo
  \partial 2 <a d>4 <a e'>4 | % 1
  d4 <a cis>4 b4 <g b>4 | % 2
  <e a>2 a4 <a cis>4 | % 3
  <fis d>4 d'4 <a d>4 <a cis>4 | % 4
  <a d>2 cis8 b8 a8 cis8 | % 5
  b8( a8) b8( a8) gis8( fis8) gis8( fis8) | % 6
  e4 gis4 a4 gis4 | % 7
  a4 <fis a>4 <e a>4 <e gis>4 | % 8
  <cis e>2 s4 a'4 | % 9
  d4 cis4 <g b>4 <g b>4 | % 10
  a4 e4 s2 | % 11
  fis4 b4 a4 a4 | % 12
  a2 a4 <e a>4 | % 13
  <e gis>4 <gis b>8( <fis a>8) <gis b>4 <a cis>4 | % 14
  d4 gis,4 a4 gis4 | % 15
  a4 <fis a>4 <e a>4 <d gis>4 | % 16
  <cis e>2 <e a>4 <cis e>4 | % 17
  d'4 d4 <b d>4 <a cis>4 | % 18
  <a d>4 g4 ais4 cis4 | % 19
  <fis, b>4 <fis ais>4 <fis b>4 b4 | % 20
  <ais cis>2 <b fis'>4 a4 | % 21
  <fis a>4 b4 <b e>4 <b dis>4 | % 22
  <b e>4 <e, b'>4 <e a>4 a4 | % 23
  a4 a4 <e a>4 <e a>4 | % 24
  <fis a>2 <e a>4 <e cis'>4 | % 25
  d'4 <fis, d'>4 <b d>4 <a cis>4 | % 26
  <a d>4 g4 ais4 cis4 | % 27
  <fis, b>4 <fis ais>4 <fis b>4 b4 | % 28
  ais2 b4 a4 | % 29
  fis4 b4 b4 b4 | % 30
  b4 b4 <e, a>4 a4 | % 31
  <e a>4 a4 <e a>4 <e a>4 | % 32
  <fis a>4 r4 r2 | % 33
  s1*5 | % 38
  s2 <g b>4 <e b'>4 | % 39
  <e a>4 e4 a4 a4 | % 40
  <d, g>4 <b d>4 b'4 b4 | % 41
  <ais cis>4 <fis b>4 <e g>4 e4 | % 42
  <cis fis>4 <ais cis>4 <b' d>4 cis8( b8) | % 43
  <fis ais>4 cis'8( b8) <ais cis>4 <b d>4 | % 44
  <cis e>4 d,4 <cis e>4. <fis b>8 | % 45
  <g ais>4 <fis b>8 <g cis>8 <fis b>4 <e ais>4 | % 46
  <d fis>4 s4 s2 | % 47
  s1*3 | % 50
  s2 a'8 gis8 <fis a>4 | % 51
  <e a>4 a4 <fis a>4 <e gis>4 | % 52
  <e a>2 <fis a>4 <a cis>4 | % 53
  <gis cis>4 <a cis>4 <b cis>4 cis4 | % 54
  <cis eis>2 <eis, gis>4 <eis cis'>4 | % 55
  a8( gis8 fis8 gis8) cis4 b8 a8 | % 56
  b2 gis4 cis4 | % 57
  cis8 b8 cis8 d8 gis,4. a8 | % 58
  <a cis>4 s4 s2 | % 59
  s1*6 | % 65
  s2 <a d>4 <a e'>4 | % 66
  d4 <a cis>4 b4 <g b>4 | % 67
  <e a>4 <cis e>4 <cis' fis>4 cis4 | % 68
  fis,4 <b d>4 <a d>4 <a cis>4 | % 69
  <a d>2 <a cis>4 a4 | % 70
  <e gis>4 <gis b>8( <fis a>8) <gis b>4 <a cis>4 | % 71
  <b d>4 <e, gis>4 a4 gis4 | % 72
  a4 <fis a>4 <e a>4 <d gis>4 | % 73
  <cis e>2 <a' d>4 a4 | % 74
  <g d'>4 <a cis>4 b4 <g b>4 | % 75
  <e a>2 <a d>4 <a cis>4 | % 76
  <fis d'>4 d'4 <a d>4 <a cis>4 | % 77
  <a d>2 cis8 b8 a8 cis8 | % 78
  b8( a8) b8( a8) gis8( fis8) gis8( fis8) | % 79
  e4 <e gis>4 a4 <gis d'>4 | % 80
  a4 <fis a>4 <e a>4 <d gis>4 | % 81
  <cis e>2 <e a>4 <e cis'>4 | % 82
  d'4 d4 <b d>4 <a cis>4 | % 83
  <a d>4 g4 ais4 cis4 | % 84
  <fis, b>4 <fis ais>4 <fis b>4 b4 | % 85
  <ais cis>2 <b fis'>4 a4 | % 86
  <fis a>4 <g b>4 <b e>4 <b dis>4 | % 87
  <b e>4 b4 <e, a>4 <a b>4 | % 88
  a4 a4 <e a>4 <e a>4 | % 89
  <fis a>2 <e a>4 <e cis'>4 | % 90
  d'4 d4 <b d>4 <a cis>4 | % 91
  <a d>4 g4 ais4 cis4 | % 92
  <fis, b>4 <fis ais>4 <fis b>4 b4 | % 93
  <ais cis>2 <b fis'>4 a4 | % 94
  <fis a>4 <g b>4 <b e>4 <b dis>4 | % 95
  <b e>4 b4 <e, a>4 <a b>4 | % 96
  a4 a4 <e a>4 <e a>4 | % 97
  <fis a>2
}

bassKeybA = \relative d' {
  \voiceOne
  \partial 2 s2 | % 1
  d4 s4 s2 | % 2
  s2 d4 s4 | % 3
  s4 d4 s2 | % 4
  s2 a'4 e | % 5
  gis4 e d cis | % 6
  b4 e a, d,4 | % 7
  cis'4 s4 s2 | % 8
  s2 <a d>4 e' | % 9
  d4 fis s2 | % 10
  e4 cis <cis fis> <cis fis> | % 11
  d4 d d cis | % 12
  d2 cis4 s4 | % 13
  s1 | % 14
  b4 e a, d, | % 15
  cis'4 s4 s2 | % 16
  s1 | % 17
  fis4 fis4 s2 | % 18
  s2 cis2 | % 19
  s2 s4 b4 | % 20
  cis2 s2 | % 21
  s1*6 | % 27
  s2 s4 b4 | % 28
  cis2 fis,4 s4 | % 29
  a4 g8 fis e4 dis | % 30
  e4 e s2 | % 31
  s1*8 | % 39
  s4 c'4 a d | % 40
  s2 e,4 fis | % 41
  s1*37 | % 78
  gis'4 e d cis | % 79
  b4 s4 s2 | % 80
}

bassKeybB = \relative d' {
  \clef "bass" \global
  \partial 2 d8( cis8) d8( cis8) | % 1
  b8( a8) b8( a8) g8( fis8) g8( e8) | % 2
  a8( g8) a8( g8) fis8( g8) a8( fis8) | % 3
  b8( a8) b8( g8) a8( g8) a8( a,8) | % 4
  d8( e8) fis8( g8) a8( b8) cis8( a8) | % 5
  d4-. cis4-. b4-. a4-. | % 6
  gis4 fis8 e8 fis4 b,4 | % 7
  cis4 d4 e4 e,4 | % 8
  a8 a'8 b8( cis8) d8( cis8) d8( cis8) | % 9
  b8( a8) b8( a8) g8( fis8) g8( e8) | % 10
  a8( g8) a8( g8) fis8( g8) a8( fis8) | % 11
  b8( a8) b8( g8) a8( g8) a8( a,8) | % 12
  d8( e8) fis8( g8) a8( b8) cis8( b8) | % 13
  d8( cis8) d8( cis8) b8( a8) b8( a8) | % 14
  a8( gis8) fis8( e8) fis4 b,4 | % 15
  cis4 d4 e4 e,4 | % 16
  a2 a'4 g4 | % 17
  fis4 b4 e,4 a4 | % 18
  d,4 e4 fis4 ais,4 | % 19
  b4 fis'4 b4 g4 | % 20
  fis8 g8 fis8 e8 \oneVoice dis4 fis4 | % 21
  b,4 cis8 dis8 e4 b4 | % 22
  e,4 fis8 g8 a4 b4 | % 23
  cis4 d4 a'4 a,4 | % 24
  d2 a'4 g4 | % 25
  fis4 b4 e,4 a4 | % 26
  d,4 e4 fis4 ais,4 | % 27
  b4 fis'4 b4 \voiceTwo g4 | % 28
  fis8 g8 fis8 e8 dis4 fis4 | % 29
  b,4 cis8 dis8 e4 b4 | % 30
  e,4 fis8 g8 \oneVoice a4 b4 | % 31
  cis4 d4 a'4 a,4 | % 32
  d,4 ais'2. ~ | % 33
  ais2 b2 ~ | % 34
  b2 fis2 ~ | % 35
  fis2 e2 | % 36
  b'1 | % 37
  gis2 a4 c4 | % 38
  r4 b4 e,8( e'8) fis8( g8) | % 39
  a8( b8) c8( a8) fis8( d8) e8( fis8) | % 40
  g8( a8) b8( g8) e8( d8) e8( d8) | % 41
  cis8( b8) ais8( b8) e,8( e'8) fis8( g8) | % 42
  fis8( gis8) ais8( fis8) b8( cis8) d8( b8) | % 43
  e8( d8) e8( d8) cis8( b8) cis8( b8) | % 44
  ais8( fis8) b8( a8) g8( fis8) e8( d8) | % 45
  cis4 d8 e8 fis4 fis,4 | % 46
  b1 ~ | % 47
  b2 fis2 ~ | % 48
  fis4 cis'2. | % 49
  ais2 b4 d4 | % 50
  r4 cis4 fis,8( fis'8) e8( d8) | % 51
  cis8( a8) d8( cis8) b8( a8) b8( e,8) | % 52
  a8( b8) a8( gis8) fis8( gis8) a8( b8) | % 53
  cis8( b8) cis8( dis8) eis8( cis8) fis8( fis,8) | % 54
  cis'4 cis,4 cis'4 cis4 | % 55
  cis1 ~ | % 56
  cis2 ~ cis8 d8 cis8 b8 | % 57
  a8( gis8) a8( b8) cis4 cis,4 | % 58
  fis1 | % 59
  cis'1 ~ | % 60
  cis2 d2 ~ | % 61
  d2 b2 | % 62
  e2 cis4 r8 fis8 | % 63
  b,8 b8 b8 b8 cis8 cis8 cis8 cis8 | % 64
  d8 fis8 a8 a,8 b16 b'16~ b32( a32 g32 fis32)
  a16 e'16~ e32( d32 cis32 b32) | % 65
  cis16 a16 d16 g,16 a8 a,8 d8 a'8 d8( cis8) | % 66
  b8( a8) b8( a8) g8( fis8) g8( e8) | % 67
  a8( g8) a8( g8) fis8( g8) a8( fis8) | % 68
  b8( a8) b8( g8) a8( g8) a8( a,8) | % 69
  d8( e8) fis8( g8) a8( b8) cis8( b8) | % 70
  d8( cis8) d8( cis8) b8( a8) b8( a8) | % 71
  a8( gis8) fis8( e8) fis4 b,4 | % 72
  cis4 d4 e4 e,4 | % 73
  a8 a'8 b8 cis8 d8( cis8) d8( cis8) | % 74
  b8( a8) b8( a8) g8( fis8) g8( e8) | % 75
  a8( g8) a8( g8) fis8( g8) a8( fis8) | % 76
  b8( a8) b8( g8) a8( g8) a8( a,8) | % 77
  d8( e8) fis8( g8) a8( b8) cis8( a8) | % 78
  d4 cis4 b4 a4 | % 79
  gis4 fis8 e8 fis4 b,4 | % 80
  cis4 d4 e4 e,4 | % 81
  a8 e'8 fis8 gis8 a4 g4 | % 82
  fis4 b4 e,4 a4 | % 83
  d,4 e4 fis4 ais,4 | % 84
  b4 fis'4 b4 g4 | % 85
  fis8 g8 fis8 e8 dis4 fis4 | % 86
  b,4 cis8 dis8 e4 b4 | % 87
  e,4 fis8 g8 a4 b4 | % 88
  cis4 d4 a'4 a,4 | % 89
  d8 e8 fis8 g8 a4 g4 | % 90
  fis4 b4 e,4 a4 | % 91
  d,4 e4 fis4 ais,4 | % 92
  b4 fis'4 b4 g4 | % 93
  fis8 g8 fis8 e8 dis4 fis4 | % 94
  b,4 cis8 dis8 e4 b4 | % 95
  e,4 fis8 g8 a4 b4 | % 96
  cis4 d4 a'4 a,4 | % 97
  d,2_\fermata
}

keybDynamics = {
  s2 | % 1
  s1*72 | % 73
  s8 s8\p s4 s2 | % 74
  s1*7 | % 81
  s8 s8\f s4 s2 | % 82
  s1*7 | % 89
  s8 s8\p s4 s2 | % 90
}

