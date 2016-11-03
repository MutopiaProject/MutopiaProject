pieceName = "1. CHOR."
instInfo = #(format "~A, ~A, ~A, ~A, ~A"
  #'fluteName #'oboeName #'stringsName #'chorusName #'continuoName )

global = {
  \key d \major \time 3/4
  \set Staff.beatStructure = 1,1,1
  \set Staff.beamExceptions = \beamExceptions {
    8[ 8 8 8 8 8] |
    \repeat unfold 3 { 16[ 16 16 16] } |
    \repeat unfold 6 { \tuplet 3/2 { 16[ 16 16] } }
  }
  \override TupletBracket.bracket-visibility = #'if-no-beam
}

globalMarksBreaks = {
  \set Score.markFormatter = #format-mark-box-alphabet
  s2.*20 \mark \default
  s2.*21 \mark \default
  s2.*21 \mark \default
  s2.*17 \mark \default
  s2.*24 \bar "|." \mark \markup {\musicglyph #"scripts.ufermata"}
}

marksBottom = {
  s2.*103 \mark \markup {\musicglyph #"scripts.dfermata"}
}

fluteMusic = \relative a' {
  \clef "treble" \global
  \tempo 4=64
  a4 g16( fis16 e16 d16) b'16( g16) a8-. | % 2
  a8 b16( a16 g16 fis16 e16 d16) g16( b16) a8-. | % 3
  a8 b16( cis16) d16( e16) fis16( e16) g16( fis16 e16 d16) | % 4
  e16( gis16) a8-. a,2 | % 5
  e'4 d16( cis16 b16 a16) fis'16( d16) e8-. | % 6
  e8 \tuplet 3/2 { g16([ fis16 e16)] }
  \tuplet 3/2 8 { fis16([ e16 d16)] e16([ d16 cis16)] }
  \tuplet 3/2 { d16([ cis16 b16)] } cis16 fis16 | % 7
  \appoggiatura e8 d8( b16 cis16 d16 e16 fis16 g16) a16 b,16 c8-. | % 8
  c8 \tuplet 3/2 { fis,16( g16 a16) }
  \tuplet 3/2 8 { g16([ a16 b16)] a16([ b16 c16)] }
  \tuplet 3/2 { b16([ c16 d16)] } c16 a16 | % 9
  b16 g16 e16( fis16 g16 a16 b16 cis16)
  \tuplet 3/2 { d16([ cis16 b16)] } e16 b16 | % 10
  cis16 e16 a,16( b16 cis16 d16 e16 fis16)
  \tuplet 3/2 { g16([ fis16 e16)] } a16 e16 | % 11
  \appoggiatura e8 fis8.( g32 a32) g16( fis16 e16 d16) e16( cis16) d8-. | % 12
  d2. | % 13
  R2.*4 | % 17
  a4 g16( fis16 e16 d16) b'16( g16) a8-. | % 18
  a8 b16( a16 g16 fis16 e16 d16) g16( b16) a8-. | % 19
  a8 b16( cis16) d16( e16) fis16( e16) g16( fis16 e16 d16) | % 20
  e16( gis16) a8-. a,2 | % 21
  R2.*5 | % 26
  b4 a16( gis16 fis16 e16) cis'16( a16) b8-. | % 27
  b8 \tuplet 3/2 { d16([ cis16 b16)] }
  \tuplet 3/2 8 { cis16([ b16 a16)] b16([ a16 gis16)] }
  \tuplet 3/2 { a16([ gis16 fis16)] } gis16 cis16 | % 28
  \appoggiatura b8 a8 fis16( gis16 a16 b16 cis16 d16) e16 fis,16 g8-. | % 29
  g8 \tuplet 3/2 { cis16([ d16 e16)] }
  \tuplet 3/2 8 { d16([ e16 fis16)] e16([ fis16 g16)] }
  \tuplet 3/2 { fis16([ g16 a16)] } g16 e16 | % 30
  fis16 d16 b16( cis16 d16 e16 fis16 gis16)
  \tuplet 3/2 { a16([ gis16 fis16)] } b16 fis16 | % 31
  gis16 b16 e,16( fis16 gis16 a16 b16 cis16)
  \tuplet 3/2 { d16([ cis16 b16)] } e16 b16 | % 32
  \appoggiatura b8 cis8. d32 e32 d16( cis16 b16 a16) b16 gis16 a8-. | % 33
  a2 r4 | % 34
  \tuplet 3/2 { b,16( a16 gis16) } e'8-. r4 r4 | % 35
  \tuplet 3/2 { b16( a16 gis16) } d'8-. r4 r8 b16 gis16 | % 36
  \tuplet 3/2 { a16( gis16 fis16) } cis'8-. r4 r4 | % 37
  \tuplet 3/2 { g16( fis16 e16) } e'8-. r4
  r8 \tuplet 3/2 { e,16( fis16 g16) } | % 38
  \tuplet 3/2 { fis16( e16 d16) } d'8-. r4
  r8 \tuplet 3/2 { fis,16( gis16 a16) } | % 39
  \tuplet 3/2 { gis16( fis16 e16) } d'8-. r4
  r8 \tuplet 3/2 { b16( cis16 d16) } | % 40
  \tuplet 3/2 { cis16( b16 a16) } e'8-.
  d16( cis16 b16 a16) b16( gis16) a8-. | % 41
  a2. | % 42
  R2. | % 43
  cis4 b16( ais16 gis16 fis16) e'16( cis16) d8-. | % 44
  d8.( e32 fis32) e16( dis16 cis16 b16) a'16( fis16) g8-. | % 45
  g4 r4 r4 | % 46
  \tuplet 3/2 8 { e16([ d16 c16)] d16([ c16 b16)] }
  \tuplet 3/2 8 { c16([ b16 a16)] e'16([ d16 c16)] }
  \tuplet 3/2 { g'16([ fis16 e16)] } a16 e16 | % 47
  \appoggiatura e8 fis4 r4 r4 | % 48
  \tuplet 3/2 8 { d16([ c16 b16)] c16([ b16 a16)] }
  \tuplet 3/2 8 { b16([ a16 g16)] d'16([ c16 b16)] }
  \tuplet 3/2 { fis'16([ e16 d16)] } g16 dis16 | % 49
  \appoggiatura dis8 e4 r4 r4 | % 50
  R2. | % 51
  cis4 b16( ais16 gis16 fis16) fis'16( d16) e8-. | % 52
  d4 r4 r4 | % 53
  b8 cis16( d16) e16( dis16 cis16 b16) a'16( fis16) g8-. | % 54
  g4 r4 r4 | % 55
  a,8 b16( cis16) d16( cis16 b16 a16) g'16( e16) fis8-. | % 56
  fis4 r4 r4 | % 57
  r8 fis,16( gis16 ais16 b16 cis16 d16)
  \tuplet 3/2 { e16([ d16 cis16)] } fis16 cis16 | % 58
  \appoggiatura cis8 d8.( e32 fis32) e16( d16 cis16 b16)
  cis16( ais16) b8-. | % 59
  b2 r4 | % 60
  \tuplet 3/2 { b'16( ais16 gis16) } fis8-. r4 r4 | % 61
  \tuplet 3/2 { d16( cis16 b16) } b'8-. r4 r4 | % 62
  r16 fis,16( gis16 ais16) b16( cis16 d16 cis16) e16( d16 cis16 b16) | % 63
  cis16 eis16 fis8-. fis,4 r4 | % 64
  R2.*4 | % 68
  e'4 d16( cis16 b16 a16) fis'16( d16) e8-. | % 69
  d8 \tuplet 3/2 { g16( fis16 e16) }
  \tuplet 3/2 8 { fis16([ e16 d16)] e16([ d16 cis16)] }
  \tuplet 3/2 { d16([ cis16 b16)] } cis16 fis16 | % 70
  \appoggiatura e8 d8.( e32 fis32 e16 d16 cis16 b16) d16( b16) cis8-. | % 71
  cis8 \tuplet 3/2 { eis,16( fis16 gis16) }
  \tuplet 3/2 8 { fis16([ gis16 a16)] gis16([ a16 b16)] }
  \tuplet 3/2 { a16([ b16 cis16)] } b16 gis16 | % 72
  a16( fis16 gis16 a16) b16( cis16 dis16 eis16)
  \tuplet 3/2 { fis16([ eis16 dis16)] } gis16 dis16 | % 73
  eis8 cis16( dis16 eis16 fis16 gis16 a16)
  \tuplet 3/2 { b16([ a16 gis16)] } cis16 gis16 | % 74
  \appoggiatura gis8 a8.( b32 cis32) b16( a16 gis16 fis16)
  gis16( eis16) fis8-. | % 75
  fis2. ~ | % 76
  fis2. ~ | % 77
  fis2. ~ | % 78
  fis2. ~ | % 79
  fis8 d16 cis16 b16( a16 gis16 fis16) gis16( eis16) fis8-. | % 80
  fis4 r4 r8 \tuplet 3/2 { e'16( dis16 cis16) } | % 81
  \tuplet 3/2 { dis16( cis16 b16) } a'8-. r4 r4 | % 82
  gis,8.( a32 b32) a16( gis16 fis16 e16) d'16( b16) cis8-. | % 83
  cis8.( d32 e32) d16( cis16 b16 a16) g'16( e16) fis8-. | % 84
  fis4 r4 r4 | % 85
  r8 b,16( cis16 d16 e16 fis16 g16) a16( fis16) g8-. | % 86
  g4 r4 r4 | % 87
  r8 cis,16( d16 e16 fis16 g16 a16) b16( g16) a8-. | % 88
  a4 r4 r4 | % 89
  R2. | % 90
  \tuplet 3/2 { cis,16( b16 a16) } a'8-. r4 r4 | % 91
  R2. | % 92
  d,,8.( e32 fis32 g16 fis16 e16 d16) c'16( a16) b8-. | % 93
  b4 r4 r4 | % 94
  e,8.( fis32 gis32 a16 gis16 fis16 e16) d'16( b16) cis8-. | % 95
  cis4 r4 r4 | % 96
  r8 a16( b16 cis16 d16 e16 fis16)
  \tuplet 3/2 { g16([ fis16 e16)] } a16 e16 | % 97
  \appoggiatura e8 fis8.( g32 a32) g16( fis16 e16 d16) e16( cis16) d8-. | % 98
  d2. ~ | % 99
  d2. ~ | % 100
  d2. ~ | % 101
  d2. ~ | % 102
  d8 \tempo 4=71 b'16 \tempo 4=70 a16
  g16 \tempo 4=67 fis16 \tempo 4=64 e16 \tempo 4=62 d16
  \tempo 4=58 e16 \tempo 4=53 cis16 \tempo 4=48 d8 | % 103
  \tempo 4=45 d4 r4 r4
}

\addQuote "flute" { \fluteMusic }

oboeMusic = \relative a' {
  \clef "treble" \global
  a4 g16( fis16 e16 d16) b'16( g16) a8-. | % 2
  \quoteDuring #"flute" { s2.*27 } | % 29
  g8 \tuplet 3/2 { cis,16([ d16 e16)] }
  \tuplet 3/2 8 { d16([ e16 fis16)] e16([ fis16 g16)] }
  \tuplet 3/2 { fis16([ g16 a16)] } g16 e16 | % 30
  fis16 d16 b16( cis16 d16 e16 fis16 gis16)
  \tuplet 3/2 { a16([ gis16 fis16)] } b16 fis16 | % 31
  gis16 b16 e,16( fis16 gis16 a16 b16 cis16)
  \tuplet 3/2 { d16([ cis16 b16)] } e16 b16 | % 32
  \appoggiatura b8 cis8. d32 e32 d16( cis16 b16 a16) b16 gis16 a8-. | % 33
  a2 r4 | % 34
  \quoteDuring #"flute" { s2.*26 }
  fis4 e16( d cis b) g'( e) fis8-. | % 61
  fis8 g16( fis) e( d cis b) e( g) fis8-. | % 62
  fis8 gis16( ais) \quoteDuring #"flute" { s2 s2.*10 }
  eis'8 cis,16( dis16 eis16 fis16 gis16 a16)
  \tuplet 3/2 { b16([ a16 gis16)] } cis16 gis16 | % 74
  \appoggiatura gis8 a8.( b32 cis32) b16( a16 gis16 fis16)
  gis16( eis16) fis8-. | % 75
  fis2. ~ | % 76
  fis2. ~ | % 77
  fis2. ~ | % 78
  fis2. ~ | % 79
  fis8 \quoteDuring #"flute" { s8 s2 s2 } r4 | % 81
  fis4 e16( dis cis b) a'( fis) gis8-. | % 82
  \quoteDuring #"flute" { s2.*8 } | % 90
  e4 d16( cis b a) g'( e) fis8-. | % 91
  fis4 r4 r4 | % 92
  \quoteDuring #"flute" { s2.*12 }
}

violinIMusic = \relative fis'' {
  \clef "treble" \global
  \tuplet 3/2 { fis16( e16 d16) } a'8 r4 r4 | % 2
  \tuplet 3/2 { fis16( e16 d16) } d'8 r4 r4 | % 3
  r16 a,16 b16 cis16 d16( e16 fis16 e16) g16( fis16 e16 d16) | % 4
  e16( gis16) a4 \tuplet 3/2 { cis,16([ b16 a16)] }
  \tuplet 3/2 { e'16([ d16 cis16)] } \tuplet 3/2 { a'16([ gis16 fis16)] } | % 5
  \tuplet 3/2 { e16( d16 cis16) } a'8 r4 r4 | % 6
  \tuplet 3/2 { e16( d16 cis16) } g'8 r4
  r8 \tuplet 3/2 { e16( d16 cis16) } | % 7
  \tuplet 3/2 { d16( cis16 b16) } fis'8 r4 r4 | % 8
  \tuplet 3/2 { c16( b16 a16) } a'8 r4
  r8 \tuplet 3/2 { a,16([ b16 c16)] } | % 9
  \tuplet 3/2 { b16( a16 g16) } g'8 r4
  r8 \tuplet 3/2 { b,16([ cis16 d16)] } | % 10
  \tuplet 3/2 { cis16( b16 a16) } a'8 r4
  r8 \tuplet 3/2 { e16([ fis16 g16)] } | % 11
  \tuplet 3/2 { fis16( e16 d16) } a'8-. g16( fis16 e16 d16) e16 cis16 d8 | % 12
  d8 \tuplet 3/2 { fis,16( e16 d16) }
  \tuplet 3/2 { a'16([ g16 fis16)] } d'16 a16 fis'16 d16 a'16 fis16 | % 13
  \tuplet 3/2 { d'16( cis16 b16) } a8 r4 r4 | % 14
  \tuplet 3/2 { g16( fis16 e16) } e'8 r4 r4 | % 15
  \tuplet 3/2 { fis,16( e16 d16) } d'8 r4 r4 | % 16
  \tuplet 3/2 { cis,16( b16 a16) } g'8 r4 r4 | % 17
  \tuplet 3/2 { fis16( e16 d16) } a'8 r4 r4 | % 18
  \tuplet 3/2 { fis16( e16 d16) } d'8 r4 r4 | % 19
  r16 a,16 b16 cis16 d16 e16 fis16 e16 g16 fis16 e16 d16 | % 20
  e16 gis16 a4 \tuplet 3/2 { cis,16( b16 a16) }
  \tuplet 3/2 8 { e'16([ d16 cis16)] a'16([ gis16 fis16)] } | % 21
  \tuplet 3/2 { e16( d16 cis16) } a'8 r4 r4 | % 22
  \tuplet 3/2 { e16( d16 cis16) } ais'8 r4 r4 | % 23
  \tuplet 3/2 { fis16( e16 d16) } b'8 r4 r4 | % 24
  \tuplet 3/2 { d,16( cis16 b16) } gis'8 r4 r4 | % 25
  e8 fis16 e16 d16 cis16 b16 a16 a'16 fis16 gis8 | % 26
  \tuplet 3/2 { gis16( fis16 e16) } b'8 r4 r4 | % 27
  \tuplet 3/2 { gis16( fis16 eis16) } b'8 r4
  r8 \tuplet 3/2 { b,16( a16 gis16) } | % 28
  \tuplet 3/2 { a16( gis16 fis16) } cis'8 r4 r4 | % 29
  \tuplet 3/2 { g16( fis16 e16) } e'8 r4
  r8 \tuplet 3/2 { e,16([ fis16 g16)] } | % 30
  \tuplet 3/2 { fis16( e16 d16) } d'8 r4
  r8 \tuplet 3/2 { fis,16([ gis16 a16)] } | % 31
  \tuplet 3/2 { gis16( fis16 e16) } d'8 r4
  r8 \tuplet 3/2 { b16([ cis16 d16)] } | % 32
  \tuplet 3/2 { cis16( b16 a16) } a'8
  d,16( cis16) b16( a16) b16 gis16 a8 | % 33
  a8 \tuplet 3/2 8 { cis,16([ b16 a16)] e'16([ d16 cis16)] } a'16 e16
  \tuplet 3/2 8 { cis'16([ b16 a16)] e'16([ d16 cis16)] } | % 34
  b4 a16 gis16 fis16 e16 cis'16 a16 b8 | % 35
  b8 \tuplet 3/2 { d16( cis16 b16) }
  \tuplet 3/2 8 { cis16([ b16 a16)] b16([ a16 gis16)] }
  \tuplet 3/2 { a16([ gis16 fis16)] } gis16 cis16 | % 36
  a8 fis16 gis16 a16 b16 cis16 d16 e16 fis,16 g8 | % 37
  g8 \tuplet 3/2 { cis,16([ d16 e16)] }
  \tuplet 3/2 8 { d16([ e16 fis16)] e16([ fis16 g16)] }
  \tuplet 3/2 { fis16([ g16 a16)] } g16 e16 | % 38
  fis16 d16 b16 cis16 d16 e16 fis16 gis16
  \tuplet 3/2 { a16([ gis16 fis16)] } b16 fis16 | % 39
  gis16 b16 e,16 fis16 gis16 a16 b16 cis16
  \tuplet 3/2 { d16([ cis16 b16)] } e16 b16 | % 40
  cis8. d32 e32 d16( cis16 b16 a16) b16 gis16 a8 | % 41
  a16 e16 \tuplet 3/2 { cis16([ b16 a16)] }
  \tuplet 3/2 { e'16([ d16 cis16)] } a'16 e16
  \tuplet 3/2 8 { cis'16([ b16 a16)] e'16([ d16 cis16)] } | % 42
  \tuplet 3/2 { a'16( gis16 fis16) } e8 r4 r4 | % 43
  \tuplet 3/2 { e16( d16 cis16) } fis8 r4 r4 | % 44
  \tuplet 3/2 { d16( cis16 b16) } b'8 r4 r4 | % 45
  R2. | % 46
  \tuplet 3/2 { c,16( b16 a16) } g'8 r4 r4 | % 47
  R2. | % 48
  \tuplet 3/2 { b,16( a16 g16) } fis'8 r4 r4 | % 49
  R2.*2 | % 51
  \tuplet 3/2 { cis16( b16 ais16) } fis'8 r4 r4 | % 52
  R2. | % 53
  \tuplet 3/2 { b,16( a16 g16) } e'8 r4 r4 | % 54
  R2. | % 55
  \tuplet 3/2 { a,16( g16 fis16) } d'8 r4 r4 | % 56
  r16 b16 cis16 d16 e16 fis16 gis16 ais16
  \tuplet 3/2 { b16([ ais16 gis16)] } cis16 gis16 | % 57
  \tuplet 3/2 { ais16( b16 cis16) } fis,8 r4
  r8 \tuplet 3/2 { cis16( d16 e16) } | % 58
  \tuplet 3/2 { d16( cis16 b16) } b'8 e,16 d16 cis16 b16 cis16 ais16 b8 | % 59
  b8 \tuplet 3/2 { d,16( cis16 b16) }
  \tuplet 3/2 { fis'16([ e16 d16)] } b'16 fis16
  \tuplet 3/2 8 { d'16([ cis16 b16)] fis'16([ e16 d16)] } | % 60
  \tuplet 3/2 { b'16( ais16 gis16) } fis8 r4 r4 | % 61
  \tuplet 3/2 { d16( cis16 b16) } b'8 r4 r4 | % 62
  r16 fis,16 gis16 ais16 b16 cis16 d16 cis16 e16 d16 cis16 b16 | % 63
  cis16 eis16 fis8 fis,4 r4 | % 64
  \tuplet 3/2 { d'16( cis16 b16) } a'8 r4 r4 | % 65
  \tuplet 3/2 { gis16( fis16 e16) } d'8 r4 r4 | % 66
  \tuplet 3/2 { cis,16( b16 a16) } g'8 r4 r4 | % 67
  a,8 b16 a16 g16 fis16 e16 d16 d'16 b16 cis8 | % 68
  \tuplet 3/2 { cis16( b16 a16) } a'8 r4 r4 | % 69
  \tuplet 3/2 { cis,16( b16 ais16) } e'8 r4
  r8 \tuplet 3/2 { e16( d16 cis16) } | % 70
  \tuplet 3/2 { d16( cis16 b16) } b'8 r4 r4 | % 71
  \tuplet 3/2 { gis16( fis16 eis16) } cis'8 r4
  r8 \tuplet 3/2 { gis,16( a16 b16) } | % 72
  \tuplet 3/2 { a16( gis16 fis16) } cis'8 r4
  r8 \tuplet 3/2 { dis16( eis16 fis16) } | % 73
  \tuplet 3/2 { eis16( dis16 cis16) } b'8 r4
  r8 \tuplet 3/2 { gis,16( a16 b16) } | % 74
  \tuplet 3/2 { a16( gis16 fis16) } fis'8 b,16 a16 gis16 fis16
  gis16 eis16 fis8 | % 75
  fis8 \tuplet 3/2 { a16( gis16 fis16) }
  \tuplet 3/2 { cis'16([ b16 a16)] } fis'16 cis16
  \tuplet 3/2 { a'16([ gis16 fis16)] } cis'16 e,16 | % 76
  \tuplet 3/2 { d16([ cis16 b16)] } b'16 d,16
  \tuplet 3/2 { cis16([ b16 a16)] } a'16 cis,16
  \tuplet 3/2 { b16([ a16 gis16)] } gis'16 b,16 | % 77
  \tuplet 3/2 { a16([ gis16 fis16)] } fis'16 a,16
  \tuplet 3/2 8 { gis16([ fis16 eis16)] d'16([ cis16 b16)] }
  \tuplet 3/2 8 { cis16([ b16 a16)] e'16([ d16 cis16)] } | % 78
  \tuplet 3/2 8 { d16([ cis16 b16)] gis'16([ fis16 eis16)] }
  \tuplet 3/2 8 { fis16([ eis16 dis16)] cis'16([ b16 a16)] }
  \tuplet 3/2 8 { b16([ a16 gis16)] d'16([ cis16 b16)] } | % 79
  \tuplet 3/2 { cis16([ b16 a16)] } a,16 cis16 b16 a16 gis16 fis16
  gis16 eis16 fis8 | % 80
  fis4 r4 r8 \tuplet 3/2 { e'16( dis16 cis16) } | % 81
  \tuplet 3/2 { dis16( cis16 b16) } a'8 r4
  r8 \tuplet 3/2 { e16( d16 cis16) } | % 82
  \tuplet 3/2 { d16( cis16 b16) } gis'8 r4
  r8 \tuplet 3/2 { a,16( g16 fis16) } | % 83
  \tuplet 3/2 { g16( fis16 e16) } cis'8 r4 r4 | % 84
  r4 r4 r8 \tuplet 3/2 { a16( b16 c16) } | % 85
  \tuplet 3/2 { b16( a16 g16) } d'8 r4 r4 | % 86
  r4 r4 r8 \tuplet 3/2 { b16( cis16 d16) } | % 87
  \tuplet 3/2 { cis16( b16 a16) } e'8 r4 r4 | % 88
  R2.*2 | % 90
  \tuplet 3/2 { cis16( b16 a16) } a'8 r4 r4 | % 91
  r4 r4 r8 \tuplet 3/2 { c,16( b16 a16) } | % 92
  \tuplet 3/2 { fis'16( e16 d16) } g8 r4 r4 | % 93
  r4 r4 r8 \tuplet 3/2 { d16( cis16 b16) } | % 94
  \tuplet 3/2 { gis'16( fis16 e16) } a8 r4 r4 | % 95
  r8 a,,16 b16 cis16 d16 e16 fis16
  \tuplet 3/2 { g16([ fis16 e16)] } a16 e16 | % 96
  \tuplet 3/2 8 { fis16([ e16 d16)] a'16([ g16 fis16)] }
  \tuplet 3/2 8 { cis'16([ b16 a16)] e'16([ d16 cis16)] }
  \tuplet 3/2 { g'16([ fis16 e16)] } a16 e16 | % 97
  \tuplet 3/2 { fis16( e16 d16) } a'8 g16 fis16 e16 d16 e16 cis16 d8 | % 98
  d8 \tuplet 3/2 { fis16( e16 d16) }
  \tuplet 3/2 { a'16([ g16 fis16)] } d'16 a16
  \tuplet 3/2 { fis16([ e16 d16)] } a'16 c,16 | % 99
  \tuplet 3/2 { b16([ a16 g16)] } g'16 b,16
  \tuplet 3/2 { a16([ g16 fis16)] } fis'16 a,16
  \tuplet 3/2 { g16([ fis16 e16)] } e'16 g,16 | % 100
  \tuplet 3/2 { fis16([ e16 d16)] } d'16 fis,16
  \tuplet 3/2 8 { e16([ d16 cis16)] b'16([ a16 g16)] }
  \tuplet 3/2 8 { a16([ g16 fis16)] c'16([ b16 a16)] } | % 101
  \tuplet 3/2 8 { b16([ a16 g16)] e'16([ d16 cis16)] }
  \tuplet 3/2 8 { d16([ cis16 b16)] a'16([ g16 fis16)] }
  \tuplet 3/2 8 { g16([ fis16 e16)] b'16([ a16 g16)] } | % 102
  \tuplet 3/2 { a16([ g16 fis16)] } d'16 d,16 g16( fis16 e16 d16)
  e16 cis16 d8 | % 103
  d4 r4 r4
}

violinIIMusic = \relative a' {
  \clef "treble" \global
  a8-. d8-. r4 r4 | % 2
  a8-. fis'8-. r4 r4 | % 3
  r8 fis,16 g16 a8-. a8-. a8-. gis8-. | % 4
  cis8-. e8-. e,8-. a8-. cis8-. e8-. | % 5
  cis8-. e8-. r4 r4 | % 6
  cis8-. e8-. r4 r8 cis8 | % 7
  b8-. d8-. r4 r4 | % 8
  a8-. d8-. r4 r8 a8 | % 9
  g8-. b8-. r4 r8 b8 | % 10
  a8-. e'8-. r4 r8 e8 | % 11
  d8-. d8-. d16( cis16) b16( a16) b8 a8 | % 12
  a8-. d,8-. fis8-. a8-. d8-. fis8-. | % 13
  fis8-. d8-. r4 r4 | % 14
  e8-. g8-. r4 r4 | % 15
  d8-. a'8-. r4 r4 | % 16
  a,8-. e'8-. r4 r4 | % 17
  d8-. fis8-. r4 r4 | % 18
  d8-. fis8-. r4 r4 | % 19
  r8 g,8-. a8-. cis8-. d8-. gis,8-. | % 20
  cis16( d16) e8-. e,8-. a8-. cis8-. e8-. | % 21
  cis8-. e8-. r4 r4 | % 22
  cis8-. fis8-. r4 r4 | % 23
  d8-. fis8-. r4 r4 | % 24
  b,8-. e8-. r4 r4 | % 25
  cis8 d16( cis16) b16( a16) gis16( a16) cis16( a16) b8-. | % 26
  b8-. gis'8-. r4 r4 | % 27
  b,8-. gis'8-. r4 r8 gis,8 | % 28
  fis8-. fis'8-. r4 r4 | % 29
  e,8-. a8-. r4 r8 e8 | % 30
  d8-. fis8-. r4 r8 fis8 | % 31
  e8-. b'8-. r4 r8 b8 | % 32
  a8-. a8-. a16( gis16) fis16( e16) fis8-. e8-. | % 33
  e8-. a,8-. cis8-. e8-. a8-. cis8-. | % 34
  gis8-. b8-. r4 r4 | % 35
  gis8-. b8-. r4 r8 gis8 | % 36
  fis8-. a8-. r4 r4 | % 37
  e8-. a8-. r4 r8 e8 | % 38
  d8-. fis8-. r4 r8 fis8 | % 39
  e8-. b'8-. r4 r8 b8 | % 40
  a8-. a8-. a16( gis16) fis16( e16) fis8-. e8-. | % 41
  e8-. a,8-. cis8-. e8-. a8-. cis8-. | % 42
  e8-. cis8-. r4 r4 | % 43
  fis,8-. cis'8-. r4 r4 | % 44
  b8-. fis'8-. r4 r4 | % 45
  R2. | % 46
  a,8-. e'8-. r4 r4 | % 47
  R2. | % 48
  g,8-. d'8-. r4 r4 | % 49
  R2.*2 | % 51
  ais8-. cis8-. r4 r4 | % 52
  R2. | % 53
  g8-. b8-. r4 r4 | % 54
  R2. | % 55
  fis8-. a8-. r4 r4 | % 56
  R2. | % 57
  fis'8-. cis8-. r4 r8 cis8 | % 58
  b8-. b8-. b16( a16) g16( fis16) g8 fis8 | % 59
  fis8-. b,8-. d8-. fis8-. b8-. d8-. | % 60
  fis8-. d8-. r4 r4 | % 61
  b8-. fis'8-. r4 r4 | % 62
  r8 d,16 e16 fis8-. fis8-. fis8-. e8-. | % 63
  ais8-. cis8-. cis,4 r4 | % 64
  b'8-. fis'8-. r4 r4 | % 65
  e8-. b'8-. r4 r4 | % 66
  a,8-. e'8-. r4 r4 | % 67
  fis,8-. e8-. a8-. g8-. fis16( gis16) a8-. | % 68
  a8-. e'8-. r4 r4 | % 69
  e,8-. cis'8-. r4 r8 cis8 | % 70
  b8-. fis'8-. r4 r4 | % 71
  cis8-. gis'8-. r4 r8 gis,8 | % 72
  fis8-. cis8-. r4 r8 b'8 | % 73
  b8-. gis'8-. r4 r8 gis,8 | % 74
  fis8-. fis8-. fis16( e16) d16( cis16) d8-. cis8-. | % 75
  cis8-. fis8-. a8-. cis8-. fis8-. cis8-. | % 76
  b8-. r8 a8-. r8 fis8-. r8 | % 77
  fis8-. r8 gis8-. r8 a8-. r8 | % 78
  gis8-. r8 a8-. r8 d8-. r8 | % 79
  fis8-. fis,8-. fis16( e16) d16( cis16) d8 cis8 | % 80
  cis4 r4 r8 cis'8-. | % 81
  b8-. fis'8-. r4 r8 b,8 | % 82
  b8-. d8-. r4 r8 e,8 | % 83
  e8-. g8-. r4 r4 | % 84
  r4 r4 r8 a8 | % 85
  g8-. b8-. r4 r4 | % 86
  r4 r4 r8 b8 | % 87
  a8-. cis8-. r4 r4 | % 88
  R2.*2 | % 90
  a8-. e'8-. r4 r4 | % 91
  r4 r4 r8 a,8 | % 92
  a8-. d8-. r4 r4 | % 93
  r4 r4 r8 b8 | % 94
  b8-. e8-. r4 r4 | % 95
  R2. | % 96
  r8 d8-. a8-. a'8-. e8-. e8-. | % 97
  d8-. d8-. d16( cis16 b16 a16) b8 a8 | % 98
  a8-. d8-. fis8-. a8-. a,8-. a8-. | % 99
  g8-. r8 fis8-. r8 d8-. r8 | % 100
  d8-. r8 e8-. r8 fis8-. r8 | % 101
  e8-. r8 fis8-. r8 b8-. r8 | % 102
  d8-. d8-. d16( cis16) b16( a16) b8 a8 | % 103
  a4 r4 r4
}

violaMusic = \relative d' {
  \clef "alto" \global
  d8-. fis8-. r4 r4 | % 2
  d8-. a8-. r4 r4 | % 3
  r8 fis'16 e16 d8-. a8-. d8-. d8-. | % 4
  a'8-. cis8-. cis,8-. e8-. a8-. cis8-. | % 5
  a8-. cis8-. r4 r4 | % 6
  g8-. cis,8-. r4 r8 ais'8-. | % 7
  fis8-. b8-. r4 r4 | % 8
  d,8-. fis8-. r4 r8 d8-. | % 9
  d8-. e8-. r4 r8 e8 | % 10
  e8 cis'8 r4 r8 a8 | % 11
  a8 a8 d,8 e16 fis16 e8 fis16 g16 | % 12
  fis8-. a,8-. d8-. fis8-. a8-. d8-. | % 13
  a8-. fis8-. r4 r4 | % 14
  a8 cis,8 r4 r4 | % 15
  a'8 fis8 r4 r4 | % 16
  e8 cis8 r4 r4 | % 17
  a'8 d,8 r4 r4 | % 18
  fis8 b8 r4 r4 | % 19
  r8 d,8 d8 a'8 a8 b8 | % 20
  e,8 a,8 cis8 e8 a8 cis8 | % 21
  a8 cis8 r4 r4 | % 22
  fis,8 cis'8 r4 r4 | % 23
  b8 d8 r4 r4 | % 24
  e,8 b'8 r4 r4 | % 25
  a8 b,8 e8 d8 cis8 e8 | % 26
  e8 e'8 r4 r4 | % 27
  d,8 d'8 r4 r8 cis,8 | % 28
  cis8 a'8 r4 r4 | % 29
  a,8 cis8 r4 r8 a8 | % 30
  a8 b8 r4 r8 b8 | % 31
  b8 gis'8 r4 r8 e8 | % 32
  e8 e8 a,8 b16 cis16 b8 cis16 d16 | % 33
  cis8 e,8 a8 cis8 e8 a8 | % 34
  e8 gis8 r4 r4 | % 35
  d8 gis,8 r4 r8 f'8 | % 36
  cis8 fis8 r4 r4 | % 37
  a,8 cis8 r4 r8 a8 | % 38
  a8 b8 r4 r8 b8 | % 39
  b8 gis'8 r4 r8 e8 | % 40
  e8 e8 a,8 b16 cis16 b8 cis16 d16 | % 41
  cis8 e,8 a8 cis8 e8 a8 | % 42
  cis8 a8 r4 r4 | % 43
  cis,8 ais8 r4 r4 | % 44
  fis'8 d'8 r4 r4 | % 45
  R2. | % 46
  e,8 a8 r4 r4 | % 47
  R2. | % 48
  d,8 g8 r4 r4 | % 49
  R2.*2 | % 51
  fis8 ais8 r4 r4 | % 52
  R2. | % 53
  e8 g8 r4 r4 | % 54
  R2. | % 55
  d8 fis8 r4 r4 | % 56
  R2. | % 57
  cis'8 ais8 r4 r8 fis8 | % 58
  fis8 fis8 b,8 cis16 d16 cis8 d16 e16 | % 59
  d8 fis,8 b8 d8 fis8 b8 | % 60
  d8 b8 r4 r4 | % 61
  fis8 d'8 r4 r4 | % 62
  r8 d,16 cis16 b8 fis8 b8 b8 | % 63
  fis'8 ais8 ais,4 r4 | % 64
  fis'8 d'8 r4 r4 | % 65
  b8 e,8 r4 r4 | % 66
  e8 cis'8 r4 r4 | % 67
  d,8 g,8 d'8 e8 fis16( d16) e8-. | % 68
  e8 cis'8 r4 r4 | % 69
  g8 cis,8 r4 r8 fis8 | % 70
  fis8 d'8 r4 r4 | % 71
  gis,8 cis,8 r4 r8 cis8 | % 72
  cis8 a8 r4 r8 gis'8 | % 73
  gis8 eis8 r4 r8 cis8 | % 74
  cis8 cis8 fis,8 gis16 a16 gis8 a16 b16 | % 75
  a8 cis8 fis8 fis8 fis8 a8 | % 76
  fis8 r8 fis8 r8 b,8 r8 | % 77
  cis8 r8 d8 r8 fis8 r8 | % 78
  b,8 r8 cis8 r8 gis'8 r8 | % 79
  cis,8 cis8 fis,8 gis16 a16 gis8 a16 b16 | % 80
  a4 r4 r8 a'8 | % 81
  fis8 dis'8 r4 r8 b,8 | % 82
  e8 b'8 r4 r8 e,,8 | % 83
  a8 e'8 r4 r4 | % 84
  r4 r4 r8 d8 | % 85
  d8 g8 r4 r4 | % 86
  r4 r4 r8 e8 | % 87
  e8 a8 r4 r4 | % 88
  R2.*2 | % 90
  e8 cis'8 r4 r4 | % 91
  r4 r4 r8 fis,8 | % 92
  fis8 b8 r4 r4 | % 93
  r4 r4 r8 gis8 | % 94
  gis8 cis8 r4 r4 | % 95
  R2. | % 96
  r8 fis,8-. e8-. cis'8-. cis8-. a8-. | % 97
  a8 a,8 d8 e16 fis16 e8 fis16 g16 | % 98
  fis8 a8 d8 d,8 d8 fis8 | % 99
  d8 r8 d8 r8 g,8 r8 | % 100
  a8 r8 b8 r8 d8 r8 | % 101
  g,8 r8 a8 r8 e'8 r8 | % 102
  a,8 fis'8 d8 e16 fis16 e8 fis16 g16 | % 103
  fis4 r4 r4
}

sopranoMusic = \relative a' {
  \clef "treble" \global
  \autoBeamOff
  R2.*15 | % 16
  a8 b16[( cis16] d16[ cis16]) b16[( a16]) g'16[( e16]) fis8-. | % 17
  fis8-. a,16[( b16] cis16[ d16 e16 fis16] e16[ cis16]) d8-. | % 18
  d4 r4 r4 | % 19
  r8 b16[( cis16]) d16[( e16]) fis16[( e16]) g16[( fis16]) e16[( d16]) | % 20
  e16[( gis16 a8]) a,2 | % 21
  e'8 fis16[( e16] d16[ cis16]) b16[( a16]) g'16[( e16]) fis8-. | % 22
  fis2. ~ | % 23
  fis8 e16[( d16]) g16[( fis16]) e16[( d16]) cis16[( d16]) b8 | % 24
  e2. ~ | % 25
  e8 fis16[( e16] d16[ cis16 b16 a16] cis16[ a16]) b8-. | % 26
  b4 r4 r4 | % 27
  R2.*2 | % 29
  r8 a8 b8 cis8 d16[( cis16]) b16[( a16]) | % 30
  fis'8[( d8]) b8 d16[( cis16]) d4 ~ | % 31
  d8 cis16[( b16]) d16[( cis16]) b16[( a16]) gis8[ e'8] ~ | % 32
  e8 fis16[( e16]) d16[( cis16]) b16[( a16]) d8 cis8 | % 33
  \appoggiatura b8 a2 r4 | % 34
  R2.*8 | % 42
  r8 e'8 d16[( cis16]) b16[( a16]) g'8-. r8 | % 43
  R2. | % 44
  r8 d32[( cis32 b16]) a'8-. r8 r8 dis,8 | % 45
  e8 fis16[( dis16]) e8 fis8 g8 e8 | % 46
  c16[( b16 a16 b16]) \appoggiatura b8 c4 r8 e8 | % 47
  fis8 g16[( e16]) fis8 g8 a8 c,8 | % 48
  b16[( a16 g16 a16]) \appoggiatura a8 b4 r8 b8 | % 49
  g'8 fis8 e8 d8 c4 ~ | % 50
  c8 e16[( dis16]) e8 g16[( fis16]) g8 b,8 | % 51
  \appoggiatura b8 ais4 r4 r8 ais8 | % 52
  b8 cis16[( ais16]) b8 cis8 d8 b8 | % 53
  g'16[( fis16 e16 fis16]) \appoggiatura fis8 g4 r8 e8 | % 54
  cis8 d16[( b16]) cis8 d8 e8 a,8 | % 55
  fis'16[( e16 d16 e16]) \appoggiatura e8 fis4 r8 d8 | % 56
  b8 cis16[( d16]) e8 fis16[( dis16]) e4 ~ | % 57
  e8 d16[( cis16] e16[ d16]) cis16[( b16]) ais8 fis8 | % 58
  fis'8 g16[( fis16]) e16[( d16]) cis16[( b16]) e8 d8 | % 59
  \appoggiatura cis8 b4 r4 r4 | % 60
  R2.*6 | % 66
  a8 b16[( cis16] d16[ cis16]) b16[( a16]) g'16[( e16]) fis8-. | % 67
  fis8-. g16[( fis16] e16[ d16 cis16 d16~] d16[ fis16]) e8-. | % 68
  e4 r4 r4 | % 69
  R2. | % 70
  r8 b16[( ais16]) b16[( cis16]) d16[( e16]) fis16[( a16]) gis8 | % 71
  gis8[( eis8]) cis4 r8 b8 | % 72
  a16[( fis16 gis16 a16] b16[ cis16]) dis16[( eis16]) fis8 gis8 | % 73
  eis16[( dis16]) eis16 fis16 gis16[( fis16]) eis16[( dis16]) cis8 b8 | % 74
  a8 b16[( cis16]) b16[( a16]) gis16[( fis16]) b8 a8 | % 75
  \appoggiatura gis8 fis4 r4 r4 | % 76
  R2.*4 | % 80
  r8 cis'8 b16[( a16]) gis16[( fis16]) e'8-. r8 | % 81
  R2. | % 82
  r8 b32[( a32 gis16]) d'8-. r8 r4 | % 83
  r8 cis32[( b32 a16]) g'8-. r8 r8 cis,8 | % 84
  d8 e16[( cis16]) d8 e8 fis8 d8 | % 85
  b16[( a16 g16 a16]) \appoggiatura a8 b4 r8 b8 | % 86
  e8 fis16[( dis16]) e8 fis8 g8 e8 | % 87
  cis16[( b16 a16 b16] cis16[ d16 e16 fis16 g8]) fis16 e16 | % 88
  a8 fis8 d16[( b16]) c8 c4 ~ | % 89
  c8 b16[( a16]) b8 d16[( cis16]) d8 e8 | % 90
  a,4 r4 r8 a8 | % 91
  fis8 g16[( e16]) fis8 g8 a8 d,8 | % 92
  c'16[( a16 b8]) b4 r8 b8 | % 93
  gis8 a16[( fis16]) gis8 a8 b8 e,8 | % 94
  d'16[( b16 cis8]) cis4 r8 e8 | % 95
  a,16[( b16 cis16 d16] e16[ d16]) cis16[( d16]) e4~ | % 96
  e8 d8 cis16[( d16 e16 fis16 g8]) e8 | % 97
  fis8.[( g32 a32] g16[ fis16]) e16[( d16]) e16[( cis16]) d8 | % 98
  d4 r4 r4 | % 99
  R2.*5
}

sopranoLyrics = \lyricmode {
  Die Freu -- de re -- get sich, re -- get sich,
  er -- hebt die mun -- tern Tö -- ne,
  die Freu -- de re -- get sich, die Freu -- de re -- get sich,
  re -- get sich,
  er -- hebt die mun -- tern Tö -- ne,
  denn die -- ser schö -- ne Tag lässt kei -- nen ru -- hig sein.
  Ver -- folgt den Trieb, den Trieb nur fort,
  ihr treu -- en Mu -- sen -- söh -- ne,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  und lie -- fert itzt den Zoll in from -- men Wün -- schen ein,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  und lie -- fert itzt den Zoll,
  lie -- fert itzt den Zoll in from -- men Wün -- schen ein.
  Die Freu -- de re -- get sich, re -- get sich,
  er -- hebt die mun -- tern Tö -- ne, er -- hebt die mun -- tern Tö -- ne,
  denn die -- ser schö -- ne Tag lässt kei -- nen ru -- hig sein.
  Ver -- folgt den Trieb, den Trieb, ver -- folgt nur fort,
  ihr treu -- en Mu -- sen -- söh -- ne,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  und lie -- fert itzt den Zoll in from -- men Wün -- schen ein,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  und lie -- fert itzt den Zoll in from -- men Wün -- schen ein.
}

altoMusic = \relative d' {
  \clef "treble" \global
  \autoBeamOff
  R2.*14 | % 15
  d8 e16[( fis16] g16[ fis16]) e16[( d16]) d'16[( b16]) cis8-. | % 16
  cis8-. e,8 a8 b8 cis8 a8 | % 17
  d8 fis,16[( e16] g16[ fis16 e16 d16] b'16[ g16]) a8-. | % 18
  b4 r4 r4 | % 19
  r8 g8 a8 cis8 d8 gis,8 | % 20
  cis16([ d16 e8]) e,2 | % 21
  R2.*2 | % 23
  fis8 g16[( fis16] e16[ d16]) cis16[( b16]) a'16[( fis16]) gis8 | % 24
  gis8 e8 fis8 gis8 a16[( b16]) gis8 | % 25
  a8 d16[( cis16] b16[ a16 gis16 a16]~ a16[ cis16]) b8 | % 26
  \appoggiatura a8 gis4 r4 r4 | % 27
  R2. | % 28
  r8 fis16[( eis16]) fis16[( gis16]) a16[( b16]) cis16[( e16]) d8 | % 29
  e8[( cis8]) g4 r8 e8 | % 30
  d8[( fis16 e16 d8]) b'8 a8 b16[( fis16]) | % 31
  gis8 e16 fis16 gis16[( a16]) b16[( cis16]) d8 b8 | % 32
  cis8 a8 a16[( gis16]) fis16[( e16]) fis8 e8 | % 33
  e2 r4 | % 34
  R2.*8 | % 42
  r8 a8 a8 g16[( fis16]) e8 r8 | % 43
  R2. | % 44
  r8 fis32[( e32 d16]) b'8 r8 r8 b8 | % 45
  b8 b8 b8 a8 g8 b8 | % 46
  a4 a4 r8 c8 | % 47
  c8 a8 a8 g8 d'8 a8 | % 48
  g4 g4 r4 | % 49
  r8 b8 b8 a8 g8 fis8 | % 50
  g8 a8 b8 b8 b8 g8 | % 51
  \appoggiatura g8 fis4 r4 r8 fis8 | % 52
  fis8 fis8 fis8 ais8 b8 b8 | % 53
  b16[( a16 g16 fis16]) e4 r8 b'8 | % 54
  a8 b16[( gis16]) a8 g16[( fis16]) g8 a8 | % 55
  a16[( g16 fis16 e16]) d4 r4 | % 56
  r4 r8 b'8 b8[( ais16 gis16] | % 57
  fis16[ gis16 ais16 b16] cis16[ b16]) ais16[( gis16]) fis8 cis'8 | % 58
  d8 b8 b16[( a16]) g16[( fis16]) g8 fis8 | % 59
  fis4 r4 r4 | % 60
  R2.*5 | % 65
  e8 fis16[( gis16] a16[ gis16]) fis16[( e16]) d'16[( b16]) cis8-. | % 66
  cis8-. e,8 a8 b8 cis8 a8 | % 67
  d8 b16[( a16] g16[ fis16 e16 d16] d'16[ b16]) cis8 | % 68
  cis4 r4 r4 | % 69
  R2.*2 | % 71
  r8 cis,8 dis8 eis8 fis16[( eis16]) dis16[( cis16]) | % 72
  a'8[( gis8]) fis8 b16[( a16]) b4~ | % 73
  b8 a16[( gis16]) b16[( a16]) gis16[( fis16]) eis8[ cis'8]~ | % 74
  cis8 fis,8 fis16[( e16]) d16[( cis16]) d8 cis8 | % 75
  cis4 r4 r4 | % 76
  R2.*4 | % 80
  r8 fis8 fis8 eis8 fis8 r8 | % 81
  R2. | % 82
  r8 e16[( gis16]) b8 r8 r4 | % 83
  r8 a16[( e16]) cis'8 r8 r8 a8 | % 84
  a8 a8 a8 a8 a8 a8 | % 85
  g4 g4 r8 g8 | % 86
  b8 b8 b8 b8 b8 b8 | % 87
  a4 a4 r4 | % 88
  r8 a8 a8 fis8 g8 a8 | % 89
  a8 g16[( fis16]) g8 g8 a8 b8 | % 90
  e,4 r4 r8 e8 | % 91
  d8 e16[( cis16]) d8 e8 fis8 a8 | % 92
  a16[( fis16 g8]) g4 r8 d8 | % 93
  e8 fis16[( dis16]) e8 fis8 gis8 b8 | % 94
  b16[( gis16 a8]) a4 r4 | % 95
  r8 a8 e16[( fis16 g16 a16] b16[ d16 cis16 b16] | % 96
  a16[ g16]) fis16[( a16]) g16[( fis16]) e16[( d16]) cis8 a'8 | % 97
  a8 a8 d16[( cis16]) b16[( a16]) b8 a8 | % 98
  a4 r4 r4 | % 99
  R2.*5
}

altoLyrics = \lyricmode {
  Die Freu -- de re -- get sich, die Freu -- de re -- get sich, re -- get sich,
  er -- hebt die mun -- tern Tö -- ne,
  Die Freu -- de re -- get sich, die Freu -- de re -- get sich, re -- get sich,
  er -- hebt die mun -- tern Tö -- ne,
  er -- hebt die mun -- tern Tö -- ne,
  denn die -- ser schö -- ne Tag lässt kei -- nen ru -- hig sein.
  Ver -- folgt den Trieb, den Trieb nur fort,
  ihr treu -- en Mu -- sen -- söh -- ne,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  und lie -- fert itzt den Zoll in from -- men Wün -- schen ein,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  und lie -- fert itzt den Zoll in from -- men Wün -- schen ein.
  Die Freu -- de re -- get sich, die Freu -- de re -- get sich, re -- get sich,
  er -- hebt die mun -- tern Tö -- ne,
  denn die -- ser schö -- ne Tag lässt kei -- nen ru -- hig sein.
  Ver -- folgt den Trieb, den Trieb,
  ver -- folgt nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  und lie -- fert itzt den Zoll in from -- men Wün -- schen ein.
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  und lie -- fert itzt den Zoll, den Zoll in from -- men Wün -- schen ein.
}

tenorMusic = \relative a {
  \clef "treble_8" \global
  \autoBeamOff
  R2.*13 | % 14
  a8 b16[( cis16] d16[ cis16]) b16[( a16]) g'16[( e16]) fis8-. | % 15
  fis2~ fis8 e8 | % 16
  e16[( cis16 d16 e16] fis16[ e16]) g16[( fis16]) e16[( cis16]) d8 | % 17
  d8 d8 e8 a,8 g'16[( e16]) fis8-. | % 18
  fis4 r4 r4 | % 19
  r8 d8 d8 a8 a'8 d,8 | % 20
  a'8[( e8]) cis2 | % 21
  R2. | % 22
  cis8 d16[( cis16] b16[ ais16]) gis16[( fis16]) e'16[( cis16]) d8 | % 23
  d2.~ | % 24
  d8 e16[( d16] cis16[ b16 a16 gis16] fis16[ gis16]) e8 | % 25
  e'8 b8 e8 d8 cis8 e8 | % 26
  e4 r4 r4 | % 27
  r8 cis8 dis8 eis8 fis16[( eis16]) dis16[( cis16]) | % 28
  a'8[( fis8]) cis4 r8 b8 | % 29
  cis8[( e16 d16] cis4) r8 a8 | % 30
  a'4 r8 fis8 fis8 d8 | % 31
  b8 gis16 a16 b16[( a16]) gis16[( fis16]) e8 e'8 | % 32
  e8 cis8 a8 b16[( cis16]) b8 cis16[( d16]) | % 33
  cis2 r4 | % 34
  R2.*8 | % 42
  r8 cis8 e8 e8 cis8 r8 | % 43
  R2. | % 44
  r8 b16[( d16]) fis8 r8 r8 fis8 | % 45
  g8 fis8 e8 dis8 e8 e8 | % 46
  e4 e4 r8 a,8 | % 47
  a8 c8 c8 b8 a8 d8 | % 48
  d4 d4 r4 | % 49
  r8 dis8 e8 fis8 g8 a8 | % 50
  g8 fis8 e8 e8 e8 e8 | % 51
  cis4 r4 r8 cis8 | % 52
  d8 e16[( cis16]) d8 e8 fis8 fis8 | % 53
  e8[( b8]) b4 r8 e8 | % 54
  e8 e8 e8 d8 a8 cis8 | % 55
  d8[( a8]) a4 r4 | % 56
  r4 r8 b8 e8 cis8 | % 57
  cis8 fis,8 fis'4 r8 fis8 | % 58
  fis8 d8 b8 cis16[( d16]) cis8 d16[( e16]) | % 59
  d4 r4 r4 | % 60
  R2.*3 | % 63
  fis,8 gis16[( ais16] b16[ ais16]) gis16[( fis16]) e'16[( cis16]) d8 | % 64
  d2. ~ | % 65
  d8 b8 e8 b8 gis8 e8 | % 66
  a2. ~ | % 67
  a8 a8 a'8 g8 fis8 a8 | % 68
  a8 a,8 b8 cis8 d16[( cis16]) b16[( a16]) | % 69
  g'8[( e8]) cis4 r8 ais8 | % 70
  b8[( d16 cis16] b4) r8 eis,8 | % 71
  cis'4 r8 cis8 fis8 eis8 | % 72
  fis8 cis8 r8 b8 d8 b8 | % 73
  gis8 cis16 b16 eis16[( fis16]) gis8 gis,8 cis8 | % 74
  cis8 a8 fis8 gis16[( a16]) gis8 a16[( b16]) | % 75
  a4 r4 r4 | % 76
  R2.*4 | % 80
  r8 a8 cis8 cis8 a8 r8 | % 81
  R2. | % 82
  r8 b16[( e16]) gis8 r8 r4 | % 83
  r8 e16[( cis16]) a8 r8 r8 e'8 | % 84
  d8 cis8 a8 cis8 d8 d8 | % 85
  d4 d4 r8 d8 | % 86
  g8 fis8 e8 dis8 e8 e8 | % 87
  e4 e4 r4 | % 88
  r8 d8 d8 fis8 e8 d8 | % 89
  d8 d16[( cis16]) d8 e8 d8 b8 | % 90
  cis4 r4 r8 a8 | % 91
  a8 a8 a8 a8 d8 fis8 | % 92
  fis8[( d8]) d4 r8 b8 | % 93
  b8 b8 b8 b8 e8 gis8 | % 94
  gis8[( e8]) e4 r4 | % 95
  r4 r8 e8 b16[( cis16 d16 e16] | % 96
  fis16[ g16]) a8 a,8 a8 e'8 e8 | % 97
  d8 a8 d8 e16[( fis16]) e8 fis16[( g16]) | % 98
  fis4 r4 r4 | % 99
  R2.*5
}

tenorLyrics = \lyricmode {
  Die Freu -- de re -- get sich, die Freu -- de re -- get sich,
  die Freu -- de re -- get sich,
  er -- hebt die mun -- tern Tö -- ne,
  die Freu -- de re -- get sich, re -- get sich, die Freu -- de re -- get sich,
  er -- hebt die mun -- tern Tö -- ne, er -- hebt,
  er -- hebt die mun -- tern Tö -- ne,
  denn die -- ser schö -- ne Tag lässt kei -- nen ru -- hig sein.
  Ver -- folgt den Trieb, den Trieb nur fort,
  ihr treu -- en Mu -- sen -- söh -- ne,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  und lie -- fert itzt den Zoll in from -- men Wün -- schen ein,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  und lie -- fert itzt den Zoll, den Zoll in from -- men Wün -- schen ein.
  Die Freu -- de re -- get sich, die Freu -- de re -- get sich,
  die Freu -- de re -- get sich, er -- hebt die mun -- tern Tö -- ne,
  er -- hebt, er -- hebt die mun -- tern Tö -- ne,
  die mun -- tern Tö -- ne,
  denn die -- ser schö -- ne Tag lässt kei -- nen ru -- hig sein.
  Ver -- folgt den Trieb, den Trieb, ver -- folgt nur fort,
  ihr treu -- en Mu -- sen -- söh -- ne,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  und lie -- fert itzt den Zoll in from -- men Wün -- schen ein,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  und lie -- fert itzt den Zoll, den Zoll in from -- men Wün -- schen ein.
}

bassMusic = \relative d {
  \clef "bass" \global
  \autoBeamOff
  R2.*12 | % 13
  d8 e16[( fis16] g16[ fis16]) e16[( d16]) b'16[( g16]) a8-. | % 14
  a2.~ | % 15
  a8 a8 d8 a8 fis16[( d16]) a'8-. | % 16
  a2.~ | % 17
  a8 d8 a8 fis8 d8 fis8 | % 18
  b4 r4 r4 | % 19
  r8 g8 fis8 a8 d8 b8 | % 20
  a16[( b16 cis8]) cis2 | % 21
  R2.*3 | % 24
  b8 cis16[( b16] a16[ gis16]) fis16[( e16]) d'16[( b16]) cis8 | % 25
  cis8 gis8 a8 d,8 e8 e8 | % 26
  e'8 e,8 fis8 gis8 a16[( gis16]) fis16[( e16]) | % 27
  d'8[( b8]) gis4 r8 eis8 | % 28
  fis8[( a16 gis16] fis4) r8 d8 | % 29
  a'4 r8 a8 d8 cis8 | % 30
  d8 d,8 r8 b8 cis8 d8 | % 31
  e8 b8 e16[( fis16 gis16 a16 b8]) gis8 | % 32
  a8 cis,8 fis16[( e16 d16 cis16 d8]) e8 | % 33
  a,2 r4 | % 34
  R2.*8 | % 42
  r8 a8 cis8 e8 a8 r8 | % 43
  R2. | % 44
  r8 b16[( fis16]) dis'8 r8 r8 b8 | % 45
  e8 b8 g8 fis8 e8 g8 | % 46
  a8[( e8]) a,4 r8 a'8 | % 47
  d,8 a'8 d8 e,8 fis8 d8 | % 48
  g8[( d8]) g,4 r4 | % 49
  r8 b8 g'8 fis8 e8 dis8 | % 50
  e8 fis8 g8 e8 cis8 e8 | % 51
  fis4 r4 r8 fis8 | % 52
  b8 fis8 d8 cis8 b8 d8 | % 53
  e8[( b'8]) e4 r8 e,8 | % 54
  a8 e8 a,8 b8 cis8 a8 | % 55
  d8[( a'8]) d4 r4 | % 56
  r4 r8 g,8 cis,8[( d16 e16] | % 57
  fis8) fis,8 fis'16[( gis16 ais16 b16 cis8]) ais8 | % 58
  b8 d,8 g16[( fis16]) e16[( d16]) e8 fis8 | % 59
  b,4 r4 r4 | % 60
  R2.*4 | % 64
  b8 cis16[( d16] e16[ d16]) cis16[( b16]) a'16[( fis16]) gis8-. | % 65
  gis2~ gis8 gis8 | % 66
  a16[( cis,16 d16 e16] fis16[ e16]) g16[( fis16]) e16[( cis16]) d8 | % 67
  d'8 cis8 d8 g,8 a8 a,8 | % 68
  a'4 r4 r4 | % 69
  r8 fis8 gis8 ais8 b16[( ais16]) gis16[( fis16]) | % 70
  d'8[( b8]) fis4 r8 b8 | % 71
  eis,8[( gis16 fis16] eis4) r8 cis8 | % 72
  fis4 r8 gis8 a8 b8 | % 73
  cis8 gis8 cis,16[( dis16 eis16 fis16 gis8]) eis8 | % 74
  fis8 a8 d16[( cis16 b16 a16 b8]) cis8 | % 75
  fis,4 r4 r4 | % 76
  R2.*4 | % 80
  r8 fis8 a8 cis8 fis,8 r8 | % 81
  R2. | % 82
  r8 gis32[( fis32 e16]) e'8 r8 r4 | % 83
  r8 a,16[( cis16]) e8 r8 r8 a,8 | % 84
  fis8 g16[( e16]) fis8 a8 d,8 fis8 | % 85
  g8[( d8]) g,4 r8 b'8 | % 86
  g8 a16[( fis16]) g8 b8 e,8 g8 | % 87
  a8[( e8]) a,4 r4 | % 88
  r8 a'8 g16[( fis16]) e16[( d16]) e8 fis8 | % 89
  g8 g,8 g'8 e8 fis8 g8 | % 90
  a4 r4 r8 cis,8 | % 91
  d8 a'8 d8 c8 b8 a8 | % 92
  g4 g,4 r8 g'8 | % 93
  e8 b'8 e8 d8 cis8 b8 | % 94
  a4 a,4 r4 | % 95
  r4 r4 r8 a'8 | % 96
  d,16[( e16 fis16 g16] a16[ b16]) cis16[( d16]) e8 cis8 | % 97
  d8 fis,8 b16[( a16]) g16[( fis16]) g8 a8 | % 98
  d,4 r4 r4 | % 99
  R2.*5
}

bassLyrics = \lyricmode {
  Die Freu -- de re -- get sich, die Freu -- de re -- get sich,
  die Freu -- de re -- get sich, er -- hebt die mun -- tern Tö -- ne,
  die Freu -- de re -- get sich, die Freu -- de re -- get sich,
  er -- hebt die mun -- tern Tö -- ne, er -- hebt,
  er -- hebt die mun -- tern Tö -- ne,
  denn die -- ser schö -- ne Tag lässt kei -- net ru -- hig sein.
  Ver -- folgt den Trieb, den Trieb nur fort,
  ihr treu -- en Mu -- sen -- söh -- ne,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  und lie -- fert itzt den Zoll in from -- men Wün -- schen ein,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  und lie -- fert itzt den Zoll in from -- men Wün -- schen ein.
  Die Freu -- de re -- get sich, die Freu -- de re -- get sich,
  die Freu -- de re -- get sich, er -- hebt die mun -- tern Tö -- ne,
  er -- hebt, er -- hebt,
  denn die -- ser schö -- ne Tag lässt kei -- net ru -- hig sein.
  Ver -- folgt den Trieb, den Trieb, ver -- folgt
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  und lie -- fert itzt den Zoll in from -- men Wün -- schen ein,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  nur fort, ihr treu -- en Mu -- sen -- söh -- ne,
  und lie -- fert itzt den Zoll in from -- men Wün -- schen ein.
}

continuoMusic = \relative d' {
  \clef "bass" \global
  d8-. d,8-. r4 r4 | % 2
  d8-. d,8-. r4 r4 | % 3
  r8 d'16 e16 fis8 cis8 d8 b'8 | % 4
  a8 a,8 r8 e'8 cis8 a8 | % 5
  a'8 a,8 r4 r4 | % 6
  ais'8 ais,8 r4 r8 fis'8 | % 7
  b8 b,8 r4 r4 | % 8
  fis'8 d8 r4 r8 fis8 | % 9
  g8 g,8 r8 e'8 fis8 gis8 | % 10
  a8 a,8 g8 fis8 e8 cis''8 | % 11
  d8 fis,8 b16( a16) g16( fis16) g8 a8 | % 12
  d,8 d'16 cis16 d8 d,8 a8 fis8 | % 13
  d8 d'8 r4 r4 | % 14
  cis8 a8 r4 r4 | % 15
  d8 d'8 r4 r4 | % 16
  a8 a,8 r4 r4 | % 17
  d8 d,8 r4 r4 | % 18
  b'8 b'8 r4 r4 | % 19
  r8 g8 fis8 a8 d8 b8 | % 20
  a8 a,8 r8 e'8 cis8 a8 | % 21
  a'8 a,8 r4 r4 | % 22
  ais'8 fis8 r4 r8 fis8 | % 23
  b8 b,8 r4 r4 | % 24
  gis'8 e8 r4 r8 e8 | % 25
  a8 gis8 a8 d,8 e8 e,8 | % 26
  e'8 e,8 r4 r4 | % 27
  eis'8 eis,8 r4 r8 eis'8 | % 28
  fis8 fis,8 r4 r4 | % 29
  cis'8 a8 r4 r8 cis8 | % 30
  d8 d,8 r8 b'8 cis8 d8 | % 31
  e8 e,8 e'16 fis16 gis16 a16 b8 gis8 | % 32
  a8 cis,8 fis16( e16) d16( cis16) d8 e8 | % 33
  a,8 a'16 gis16 a8 e8 cis8 a8 | % 34
  e'8 e,8 r4 r4 | % 35
  eis'8 eis,8 r4 r8 cis'8 | % 36
  fis8 fis,8 r4 r4 | % 37
  cis'8 a8 r4 r8 cis8 | % 38
  d8 d,8 r8 b'8 cis8 dis8 | % 39
  e8 e,8 d'8 cis8 b8 gis'8 | % 40
  a8 cis,8 fis16( e16) d16( cis16) d8 e8 | % 41
  a,8 a'16 gis16 a8 e8 cis8 a8 | % 42
  a'8 a,8 r4 r4 | % 43
  ais'8 ais,8 r4 r4 | % 44
  b'8 b,8 r4 r8 b'8 | % 45
  e,8 b8 g8 fis8 e8 g8 | % 46
  a8 a'8 r4 r8 a,8 | % 47
  d,8 a'8 d8 e8 fis8 d8 | % 48
  g,8 g'8 r4 r4 | % 49
  r8 b,8 g'8 fis8 e8 dis8 | % 50
  e8 fis8 g8 e8 cis8 e8 | % 51
  fis8 fis,8 r4 r8 fis'8 | % 52
  b8 fis8 d8 cis8 b8 d8 | % 53
  e8 e,8 r4 r8 e'8 | % 54
  a8 e8 a,8 b8 cis8 a8 | % 55
  d8 d,8 r4 r4 | % 56
  g'8 g,8 r8 g'8 cis,8 d16 e16 | % 57
  fis8 fis,8 fis'16 gis16 ais16 b16 cis8 ais8 | % 58
  b8 d,8 g16( fis16) e16( d16) e8 fis8 | % 59
  b,8 b'16 ais16 b8 fis8 d8 b8 | % 60
  b'8 b,8 r4 r4 | % 61
  b'8 b,8 r4 r4 | % 62
  r8 b16 cis16 d8 ais8 b8 g'8 | % 63
  fis8 fis,8 r4 r4 | % 64
  b'8 b,8 r4 r4 | % 65
  e8 e,8 r4 r4 | % 66
  a'8 a,8 r4 r4 | % 67
  d8 cis8 d8 g,8 a8 e'8 | % 68
  a8 a,8 r4 r4 | % 69
  ais'8 ais,8 r4 r8 fis'8 | % 70
  b8 b,8 r4 r4 | % 71
  eis8 cis8 r4 r8 eis8 | % 72
  fis8 fis,8 r8 gis8 a8 b8 | % 73
  cis8 cis,8 cis'16 dis16 eis16 fis16 gis8 eis8 | % 74
  fis8 a,8 d16( cis16) b16( a16) b8 cis8 | % 75
  fis,8 fis'16 eis16 fis8 a8 cis8 fis,8 | % 76
  b,8-. r8 cis8-. r8 d8-. r8 | % 77
  cis8-. r8 b8-. r8 a8-. r8 | % 78
  b8 r8 a8 r8 gis8 r8 | % 79
  a8 fis8 d'16( cis16) b16( a16) b8 cis8 | % 80
  fis,8 fis'8 r4 r4 | % 81
  b8 b,8 r4 r4 | % 82
  e,8 e'8 r4 r4 | % 83
  a8 a,8 r4 r8 a'8 | % 84
  fis8 g16( e16) fis8 a8 d,8 fis8 | % 85
  g8 g,8 r4 r8 b'8 | % 86
  g8 a16( fis16) g8 b8 e,8 g8 | % 87
  a8 a,8 r4 r4 | % 88
  fis'8 fis,8 r8 d'8 e8 fis8 | % 89
  g8 g,8 r8 e'8 fis8 g8 | % 90
  a8 a,8 r8 a8 b8 cis8 | % 91
  d8 a'8 d8 c8 b8 a8 | % 92
  g8 g,8 r4 r8 g'16 fis16 | % 93
  e8 b'8 e8 d8 cis8 b8 | % 94
  a8 a,8 r4 r4 | % 95
  g'8 g,8 r4 r4 | % 96
  fis'8 fis,8 r8 fis'8 e8 cis8 | % 97
  d8 fis,8 b16( a16) g16( fis16) g8 a8 | % 98
  d,8 d'16 cis16 d8 fis8 a8 d,8 | % 99
  g,8 r8 a8 r8 b8 r8 | % 100
  a8 r8 g8 r8 fis8 r8 | % 101
  g8 r8 fis8 r8 e8 r8 | % 102
  fis8 d8 b'16( a16) g16( fis16) g8 a8 | % 103
  d,4 r4 r4
}

trebKeybA = \relative fis'' {
  \clef treble \global
  \tuplet 3/2 { \modBeam #5 #5.5 fis16[ e d_~ } \modStem #1 <d fis a>8] r4 r | % 2
  \tuplet 3/2 { fis16[ e d } <fis a d>8] r4 r | % 3
  a,8 <fis b>16 <g cis> d' e fis d g fis e d | % 4
  e16 gis a8 a,[ \tuplet 3/2 8 { cis16 b \modTie a_~ ]
  \modStemShift #2 \modBeam #4.5 #4 <a e'> d \modTie cis_~
  \modStemShift #2.5 \modBeam #6 #5.5 <cis a'> gis' fis } | % 5
  \tuplet 3/2 { \modBeam #4.5 #6 e16[ d \modTie cis_~ }
  \modStemShift #2.5 <cis a'>8] d16 cis b a fis' d e8 | % 6
  \tuplet 3/2 { e16 d \modTie cis_~ } \modStemShift #2 \modBeam #5 #4.5
  \tuplet 3/2 8 { <cis g'> fis e fis e d e d cis d cis b e d cis } | % 7
  \tuplet 3/2 { \modBeam #4 #4.5 d16[ cis b_~ } \modStem #2 <b d fis>8] r4 r | % 8
  \tuplet 3/2 { <a c>16[ b a } <d a'>8] \tuplet 3/2 { g,16 a b }
  \tuplet 3/2 8 { a16 b cis b cis d a b cis } | % 9
  \tuplet 3/2 { b16[ a g } g'8] s4 s | % 10
  \tuplet 3/2 { \modBeam #4 #5.5 \modStem #1 <a, cis>16[ b \modTie a_~ }
  \modStem #1 <a cis e a>8] <a cis>16 <b d> <cis e> <d fis>
  \tuplet 3/2 8 { g16 fis e~ e fis g } | % 11
  \tuplet 3/2 { \modBeam #5.5 #6 fis16[ e d~ } \modStem #2 <d a'>8]
  g16 fis e d e cis d8 | % 12
  d8[ \tuplet 3/2 8 { fis,16 e \modTie d_~] \modStemShift #2 \modBeam #3 #2.5
  <d a'> g \modTie fis_~ } \modStemShift #2.5 \modBeam #4 #3
  <fis d'>16 \modTie a_~ \modStemShift #2.5 \modBeam #5.5 #6 <a fis'>
  \modTieTwo d16_~ \modStemShift #2 <d a'> fis_~ | % 13
  \tuplet 3/2 { \modStemShift #2.5 \modBeam #7.5 #6.5 <fis d'>16[ cis' b } a8] r4 r | % 14
  \tuplet 3/2 { g16[ fis e } e'8] r4 r | % 15
  \tuplet 3/2 { fis,16[ e d } d'8] r4 r | % 16
  \tuplet 3/2 { cis,16[ b a } g'8] r4 r | % 17
  \tuplet 3/2 { \modBeam #5 #5.5 fis16[ e \modTie d_~ } \modStem #2 <d fis a>8] r4 r | % 18
  \tuplet 3/2 { fis16[ e d } <fis d'>8] r4 r | % 19
  a,8 b16 cis d e fis e g fis e d | % 20
  e16 gis a8 a,[ \tuplet 3/2 8 { cis16 b \modTie a_~]
  \modStemShift #2 \modBeam #4.5 #4 <a e'> d \modTie cis_~
  \modStemShift #2.5 \modBeam #6 #5.5 <cis a'> gis' fis } | % 21
  \tuplet 3/2 { \modBeam #5 #6 e16[ d \modTie cis_~ }
  \modStemShift #2.5 <cis a'>8] \voiceOne r4 r | % 22
  \tuplet 3/2 { \modBeam #5 #6 e16[ d \modTie cis_~ }
  \modStemShift #2.5 <cis ais'>8] r4 r4 | % 23
  \tuplet 3/2 { \modBeam #5.5 #6.5 fis16[ e \modTie d_~ }
  \modStemShift #2.5 <d b'>8] r4 r4 | % 24
  \tuplet 3/2 { \modBeam #4.5 #5.5 d16[ cis \modTie b_~ }
  \modStemShift #2.5 <b gis'>8] r4 r8 e8~ | % 25
  <cis e>8 <d fis>16 <cis e> <b d> <a cis> <gis b> a <cis a'>
  <a fis'> <b gis'>8 | % 26
  \tuplet 3/2 { \modBeam #5.5 #6 gis'16[ fis \modTie e_~ }
  \modStemShift #2 <e b'>8] r4 r | % 27
  \tuplet 3/2 { gis16[ fis eis } <gis b>8] r4
  r8 \tuplet 3/2 { b,16 a gis } | % 28
  \tuplet 3/2 { \modBeam #3 #4.5 a16[ gis \modTieTwo fis_~ }
  \modStem #1 <fis a cis fis>8] r4 r | % 29
  \tuplet 3/2 { g16[ fis e } e'8] r4 r8 \tuplet 3/2 { e,16 fis g } | % 30
  \tuplet 3/2 { fis16[ e d } d'8] d,16 e fis gis
  \tuplet 3/2 { \modBeam #3.5 #4 a[ gis \modTieTwo fis_~ }
  \modStem #1.5 <fis b>8] | % 31
  \tuplet 3/2 { \modBeam #3 #4 gis16[ fis \modTie e_~ }
  \modStem #1 <e gis b d>8] gis16 a b cis
  \tuplet 3/2 { \modBeam #3.5 #4 d16[ cis b_~ }
  \modStem #1.5 <b e>8] | % 32
  \tuplet 3/2 { cis16[ b a } a'8] d,16 cis b a b gis a8 | % 33
  a8[ \tuplet 3/2 8 { cis,16 b \modTie a_~] \modBeam #1 #0.5 \modStemShift #2
  <a e'> d \modTie cis_~ } \modBeam #2.5 #2 \modStemShift #2.5 <cis a'>16
  \modTie e16_~ \modBeam #3.5 #3 \modStemShift #2.5
  \tuplet 3/2 { <e cis'>16 b' \modTie a_~ } \modBeam #4 #3.5 \modStemShift #2
  \tuplet 3/2 { <a e'>16 d cis } | % 34
  \tuplet 3/2 { \modBeam #3.5 #4.5 b16[ a gis_~ }
  \modStemShift #2.5 <gis e'>8] r4 r | % 35
  \tuplet 3/2 8 { b16 a gis_~ \modStemShift #2 \modBeam #4 #3.5 <gis d'> cis b}
  \tuplet 3/2 8 { cis16 b a b a gis a gis fis b a gis } | % 36
  \tuplet 3/2 { a16[ gis \modTieTwo fis_~ } \modStem #1 \modBeam #2.5 #2.5
  <fis a cis>8] r4 r | % 37
  \tuplet 3/2 { g16[ fis e } e'8]
  \tuplet 3/2 8 { d,16 e fis e fis g fis g a e fis g } | % 38
  \tuplet 3/2 { fis16[ e d } d'8] d,16 e fis gis
  \tuplet 3/2 { \modBeam #2.5 #3 a16[ gis \modTieTwo fis_~ }
  \modStem #1.5 <fis b>8] | % 39
  \tuplet 3/2 { \modBeam #2.5 #3.5 gis16[ fis \modTie e_~ } \modStem #1
  <e gis b d>8] gis16 a b cis \modBeam #4 #4.5 \tuplet 3/2 { d16[ cis b_~ }
  \modStem #1.5 <b e>8] | % 40
  \tuplet 3/2 { \modBeam #3.5 #4 cis16[ b a~ } \modStem #2
  <a e'>8] d16 cis b a b gis a8 | % 41
  a8[ \tuplet 3/2 { cis,16 b \modTie a_~] } \modStemShift #2 \modBeam #1 #0.5
  \tuplet 3/2 { <a e'>16 d \modTie cis_~ } \modStemShift #2.5 \modBeam #2.5 #2
  <cis a'>16 \modTie e_~ \modStemShift #2.5 \modBeam #4 #3.5
  \tuplet 3/2 { <e cis'>16 b' \modTie a_~ } \modStemShift #2 \modBeam #4.5 #4
  \tuplet 3/2 { <a e'>16 d \modTie cis_~ } | % 42
  \tuplet 3/2 { \modStemShift #2.5 \modBeam #6.5 #5.5
  <cis a'>16[ gis' fis } e8] \oneVoice r4 r \voiceOne | % 43
  \tuplet 3/2 { e16[ d \modTie cis_~ } \oneVoice \modStem #1.5 <cis fis>8]
  b16 ais gis fis e' cis d8 | % 44
  \voiceOne \tuplet 3/2 { d16[ cis b } <fis' b>8] e16 dis cis b a' fis g8 | % 45
  <b, e g>8 <b dis fis> <b e g> <a, dis fis> <b e g> <b e> | % 46
  \tuplet 3/2 8 { e'16 d c d c b c b a e' d c g' fis e } a16 e | % 47
  fis4. g8 d4~ | % 48
  \tuplet 3/2 8 { d16 c b c b a b a g d' c b fis' e d } g16 dis | % 49
  e8 dis e d c4~ | % 50
  c8 e16 dis e8 b g e | % 51
  \tuplet 3/2 { \modBeam #4 #5 cis'16[ b \modTie ais_~ } \modStemShift #2.5
  <ais fis'>8] b16 ais gis fis fis' d e8 | % 52
  d8 cis d ais b b | % 53
  \tuplet 3/2 { b16[ a g_~ } <g b e>8] r4 r8 b8 | % 54
  g'4 cis,8 d e a, | % 55
  \tuplet 3/2 { a16[ g fis_~ } <fis a d>8] r4 r | % 56
  r16 b16 cis d e fis g ais \tuplet 3/2 { b16 ais gis } cis16 gis | % 57
  \tuplet 3/2 { ais16[ b cis } <ais, cis fis>8] ais16 b cis d \modBeam #4.5 #5
  \tuplet 3/2 { e16[ d \modTie cis_~ } \modStem #1.5 <cis fis>8] | % 58
  \tuplet 3/2 { d16[ cis b } <fis' b>8] e16 d cis b cis ais b8 | % 59
  b8[ \tuplet 3/2 8 { d,16 cis b_~] \modStemShift #2 \modBeam #2 #1.5
  <b fis'> e d_~ } \modStemShift #2.5 \modBeam #3 #2 <d b'>16 fis_~
  \tuplet 3/2 { \modStemShift #2.5 \modBeam #4 #3.5 <fis d'>16 cis' b_~ }
  \tuplet 3/2 { \modStemShift #2 \modBeam #5 #4.5 <b fis'>16 e d } | % 60
  \tuplet 3/2 { b'16[ ais gis } fis8] r4 r | % 61
  \tuplet 3/2 { d16[ cis b } <d fis b>8] r4 r | % 62
  fis,8 gis16 ais b cis d cis e d cis b | % 63
  cis16 eis fis8 fis,4 r4 | % 64
  \voiceOne \tuplet 3/2 { d'16[ cis b } a'8] \oneVoice r4 r | % 65
  \voiceOne \tuplet 3/2 { gis16[ fis e } d'8] \oneVoice r4 r | % 66
  \voiceOne \tuplet 3/2 { cis,16[ b a } g'8] \oneVoice r4 r | % 67
  \voiceOne a,8 b16 a g fis e d d' <gis, b> <a cis>8 | % 68
  \tuplet 3/2 { cis16[ b a } a'8] r4 r | % 69
  <g, e'>8[ \tuplet 3/2 8 { g'16 fis e] fis e d e d cis d cis b e d cis } | % 70
  \tuplet 3/2 { d16[ cis b } <fis' b>8] r4 r | % 71
  \tuplet 3/2 { gis16[ fis eis } <gis cis>8]
  \tuplet 3/2 8 { fis,16 gis a gis a b a b cis gis a b } | % 72
  \tuplet 3/2 { a16[ gis fis } cis'8] b16 cis dis eis
  \tuplet 3/2 { \modBeam #5 #5.5 fis16[ eis dis_~ }
  \modStem #1.5 <dis gis>8] | % 73
  \tuplet 3/2 { eis16[ dis cis } <eis gis b>8] eis,16 fis gis a
  \tuplet 3/2 { \modBeam #3.5 #3.5 b16[ a gis_~ }
  \modStem #1.5 <gis cis>8] | % 74
  \tuplet 3/2 { a16[ gis fis } <cis' fis>8] b16 a gis fis gis eis fis8 | % 75
  fis8[ \tuplet 3/2 { a16 gis fis_~] } \modStemShift #2 \modBeam #3.5 #3
  \tuplet 3/2 8 { <fis cis'>16 b a } fis'16 cis
  \tuplet 3/2 { a'16 gis fis } cis'16 e, | % 76
  \tuplet 3/2 { d16 cis b } b'16 d, \tuplet 3/2 { cis16 b a } a'16 cis,
  \tuplet 3/2 { b16 a gis } gis'16 b, | % 77
  \tuplet 3/2 { a16 gis fis } fis'16 a,
  \tuplet 3/2 8 { gis16 fis eis d' cis b cis b a e' d cis } | % 78
  \tuplet 3/2 8 { d16 cis b gis' fis eis fis eis dis cis' b a }
  \tuplet 3/2 8 { b a gis d' cis b } | % 79
  \tuplet 3/2 { cis16 b a } d,16 cis b a gis fis gis eis fis8 | % 80
  <cis fis>4 r4 r8 \tuplet 3/2 { e'16 dis cis } | % 81
  \tuplet 3/2 { <b dis>16[ cis b } <dis fis a>8] r4
  r8 \tuplet 3/2 { e16 d cis } | % 82
  \tuplet 3/2 { d16[ cis b_~ } <b d gis>8] r4 r8 \tuplet 3/2 { a16 g fis } | % 83
  cis'8. d32 e d16 cis b a g' e fis8 | % 84
  fis8 e16 cis d8 e fis8[ \tuplet 3/2 { a,16 b c] } | % 85
  \tuplet 3/2 { b16[ a g } d'8] r4 r8 b8 | % 86
  g'8 fis16 dis e8 fis g[ \tuplet 3/2 { b,16 cis d] } | % 87
  \tuplet 3/2 { cis16[ b a } e'8] s4 s4 | % 88
  <d a'>4 r8 c4 c8~ | % 89
  c8 b r8 cis8 d e | % 90
  \tuplet 3/2 { <a, cis>16[ b a } <cis e a>8] r8 cis8 d e | % 91
  <d, fis>4 r4 r8 \tuplet 3/2 { c'16 b a } | % 92
  \tuplet 3/2 { fis'16[ e d } g8] r4 r8 d,8 | % 93
  gis4 r4 r8 \tuplet 3/2 { d'16 cis b_~ } | % 94
  \tuplet 3/2 { \modStemShift #2.5 \modBeam #5.5 #6 <b gis'>16[ fis' e } a8] r4 r | % 95
  <a, cis>4 r4 r8 <cis e>8 | % 96
  <a e'>8 a16 b cis d a' fis \tuplet 3/2 { g16 fis e } a16 e | % 97
  \tuplet 3/2 { fis16[ e d_~ } \modStem #1.5 <d a'>8] g16 fis e d e cis d8 | % 98
  d8[ \tuplet 3/2 { fis16 e \modTie d_~] } \modStemShift #2 \modBeam #6 #5.5
  \tuplet 3/2 { <d a'>16 g fis } d'16 a \tuplet 3/2 { fis16 e d_~ }
  \modStem #2 \modBeam #5.5 #4.5 <d a'>16 c | % 99
  \tuplet 3/2 { b16 a g } g'16 b, \tuplet 3/2 { a16 g fis } fis'16 a,
  \tuplet 3/2 { g16 fis e } e'16 g, | % 100
  \tuplet 3/2 { fis16 e d } d'16 fis,
  \tuplet 3/2 8 { e16 d cis b' a g a g fis c' b a } | % 101
  \tuplet 3/2 8 { b16 a g e' d cis d cis b a' g fis g fis e b' a g } | % 102
  \tuplet 3/2 { a16 g fis_~ } \modStem #1.5 \modBeam #7 #6.5 <fis b d>16 a
  <d, g> <cis fis> <b e> <a d> e' cis <a d>8 | % 103
  <a d>4 \oneVoice r4 r
}

trebKeybB = \relative a' {
  \clef treble \global
  a8 d g,16 fis e d b' g a8 | % 2
  a8 \stemUp \change Staff = "bass" b16 a g fis e d
  \change Staff = "treb" \stemDown g16 b a8 | % 3
  r8 fis16 \stemUp \change Staff = "bass" e
  \stemDown \change Staff = "treb" a8 a a gis | % 4
  <a cis>8 <cis e> <cis, e> <e a> <a cis> <cis e> | % 5
  <a cis>8 <cis e> r4 r | % 6
  <fis, cis'>8 <cis' e> r4 r8 <ais cis>8 | % 7
  <fis b>8 b16 cis d e fis g a b, c8 | % 8
  d,8[ \tuplet 3/2 { fis16 g a] } r4 r8 <d, a'>8 | % 9
  d8 b' g16 a b cis \tuplet 3/2 8 { d16 cis b~ b cis d } | % 10
  <e, a>8 a16 b r8 a8 <b e> a | % 11
  <a d>8 <a d> d16 cis b a b8 a | % 12
  <fis a>8  <a, d> <d fis> <fis a> <a d> <d fis> | % 13
  <fis a>8 <d fis> r4 r | % 14
  <a e>8 g' r4 r | % 15
  <a, d>8 a' r4 r | % 16
  <e, a>8 e' r4 r | % 17
  <a, d>8 <d fis> g,16 fis e d b' g a8 | % 18
  <fis a d>8 s8 s4 g16 b a8 | % 19
  r8 g8 a cis d gis, | % 20
  cis16 d e8 <cis, e> <e a> <a cis> <cis e> | % 21
  <a cis>8 <cis e> s4 s | % 22
  <fis, cis'>8 <cis' fis> r4 r8 <ais cis e>8 | % 23
  <fis b d>8 <d' fis> r4 r | % 24
  <e, b'>8 <b' e> r4 r8 gis8 | % 25
  a8 \stemUp \change Staff = "bass" b, e d cis s8 | % 26
  \stemDown \change Staff = "treb" <b' e>8 <e gis>
  a,16 gis fis e cis' a b8 | % 27
  <b d>8[ \tuplet 3/2 8 { d16 cis b] cis b a b a gis}
  \tuplet 3/2 { a gis fis } <cis gis'>8 | % 28
  <cis fis>8 fis16 gis a b cis d e fis, g8 | % 29
  <a, e'>8 a' s4 s8 a,8 | % 30
  <a d>8 fis' r8 d4 \tuplet 3/2 { fis16 gis a } | % 31
  <b, e>8 e16 fis r4 r8 \tuplet 3/2 { b16 cis d } | % 32
  <e, a>8 <cis' e>16 d32 e a,16 gis fis e fis8 e | % 33
  <cis e>8 \stemUp \change Staff = "bass" <e, a>
  \stemDown \change Staff = "treb" <a cis>8 <cis e> <e a> <a cis> | % 34
  <e gis>8 <gis b> a16 gis fis e cis' a b8 | % 35
  <d, gis>8 <gis b> r4 r8 <eis gis>8 | % 36
  <cis fis>8 fis16 gis a b cis d e fis, g8 | % 37
  <a, e'>8 a' r4 r8 <a, e'>8 | % 38
  <a d>8 fis' r8 d8[ e \tuplet 3/2 { fis16 gis a] } | % 39
  <b, e>8 e16 fis b,8 e gis[ \tuplet 3/2 { b16 cis d] } | % 40
  <e, a>8 <e a> a16 gis fis e fis8 e | % 41
  <cis e>8 s8 <a cis>8 <cis e> <e a> <a cis> | % 42
  <cis e>8 <a cis> s4 s4 | % 43
  <fis cis'>8 cis' s4 s4 | % 44
  <fis, b>8 d'16 e32 fis r4 r8 <b, dis>8 | % 45
  s2. | % 46
  e,8 a r4 r8 <a~ c~ e>8 | % 47
  <a c>4. <g b>8 a8 c, | % 48
  d8 g r4 r | % 49
  r8 <fis b>8 <e b'> <fis a> g <fis a> | % 50
  g8 <fis a> <e b'> <e g> <b e> <g b> | % 51
  <fis' ais>8 <ais cis> r4 r8 <fis ais>8 | % 52
  <fis b>8 <fis ais> <fis b> e <d fis> <b fis'> | % 53
  <e g b>8 cis'16 dis e dis cis b a' fis g8 | % 54
  cis,8 <b d>16 <gis b> a8 g16 fis g8 <cis, e> | % 55
  <d fis a>8 b'16 cis d cis b a g' e fis8 | % 56
  fis4 r8 <b, fis'>8 <b e> ais16 gis | % 57
  <cis e>8 fis,16 gis r4 r8 \tuplet 3/2 { cis16 d e } | % 58
  <fis, b>8 d'16 e32 fis b,16 a g fis g8 fis | % 59
  <d fis>8 <fis, b> <b d> <d fis> <fis b> <b d> | % 60
  <d fis>8 <b d> s4 g16 e fis8 | % 61
  <fis b>8 \stemUp \change Staff = "bass" g16 fis e d cis b
  \stemDown \change Staff = "treb" e16 g fis8 | % 62
  r8 d16 e fis8 fis fis e | % 63
  <fis ais>8 <ais cis> <ais, cis>4 s4 | % 64
  <fis' b>8 <d' fis> s4 s4 | % 65
  <b e>8 b' s4 s4 | % 66
  <e,, a>8 <cis' e> s4 s4 | % 67
  fis,8 e a <b, g'> fis'16 d e8 | % 68
  <e a>8 <cis' e> d16 cis b a fis' d e8 | % 69
  \tuplet 3/2 { cis16[ b ais } <cis e>8] r4 r8 <fis, ais cis>8 | % 70
  <fis b>8 d'16 e32 fis e16 d cis b d b cis8 | % 71
  <gis cis>8 \stemUp \change Staff = "bass" \tuplet 3/2 { eis16 fis gis }
  \stemDown \change Staff = "treb" r4 r8 cis,8 | % 72
  <cis fis>8 gis'16 a r8 b16 cis d8[ \tuplet 3/2 { dis16 e fis] } | % 73
  <gis, cis>8 \stemUp \change Staff = "bass" cis,16 dis s8 cis8[
  eis8 \stemDown \change Staff = "treb" \tuplet 3/2 { gis16 a b] } | % 74
  a8. b32 cis fis,16 e d cis d8 cis | % 75
  <a cis>8 <cis fis> <fis a> <fis cis'> fis' cis | % 76
  <fis, b>8 r8 <fis a>8 r8 <b, fis'>8 r8 | % 77
  <cis fis>8 r8 <d fis>8 r8 <cis fis>8 r8 | % 78
  <fis gis>8 r8 <fis cis'>8 r8 d'8 r8 | % 79
  cis8 <fis, a> fis16 e d cis d8 cis | % 80
  a4 s4 s8 <a' cis>8 | % 81
  fis4 e16 dis cis b a' fis gis8 | % 82
  gis8. a32 b a16 gis fis e d' b cis8 | % 83
  \tuplet 3/2 { g16[ fis e } <g cis e>8] r4 r8 a8 | % 84
  a8 a a a a a | % 85
  \stemUp \change Staff = "bass" d,8 \stemDown \change Staff = "treb" b'16 cis
  d e fis g a fis g8 | % 86
  b,8 b b b b b | % 87
  \stemUp \change Staff = "bass" e,8 \stemDown \change Staff = "treb" cis'16 d
  e16 fis g a b g a8 | % 88
  a,4 s8 fis8 g <d a'> | % 89
  <d g>4 s8 g8 a b | % 90
  e,4 s8 g8~ g16 e fis8 | % 91
  a,4 r8 <a e' g>8 <d fis a> <fis a> | % 92
  <a c>8 b g16 fis e d c' a b8 | % 93
  e,4 r8 <b fis' a>8 <e gis b> <gis b> | % 94
  <b d>8 a a16 gis fis e d' b cis8 | % 95
  e,8 a,16 b cis d e fis \tuplet 3/2 { g fis e } a16 e | % 96
  \tuplet 3/2 { fis16 \stemUp \change Staff = "bass" e d } \stemDown
  \change Staff = "treb" \tuplet 3/2 8 { a'16 g fis cis' b a e' d cis~ }
  cis8 <a g'> | % 97
  <a d>8 d d16 cis b a b8 a | % 98
  <fis a>8 <a d> <d fis> <d a'> d <fis, d'> | % 99
  <d g>8 r8 <d fis>8 r8 d8 r8 | % 100
  a8 r8 b8 r8 d8 r8 | % 101
  e8 s8 s4 s4 | % 102
  d'8 fis d e,16 fis <e b'>8 fis16 g | % 103
  fis4 s4 s4
}

bassKeybA = \relative d' {
  \clef bass \global
  \voiceOne
  s2.*2 | % 3
  s4 d8 a d d | % 4
  s2.*5 | % 9
  r8 e16 fis s4 s | % 10
  s2.*8 | % 18
  s8 b16 a g fis e d s4 | % 19
  s8 d8 d a' a b | % 20
  s2.*9 | % 29
  r8 \tuplet 3/2 { cis,16 d e } \stemDown \change Staff = "treb"
  \tuplet 3/2 8 { d16 e fis e fis g }
  \tuplet 3/2 { fis16 g a } \stemUp \change Staff = "bass" s8 | % 30
  r8 b,16 cis s4 s4 | % 31
  s2. | % 32
  s4 a8 b16 cis b8 cis16 d | % 33
  s2.*4 | % 37
  r8 \tuplet 3/2 { cis16 d e } s4 s4 | % 38
  r8 b16 cis s4 s4 | % 39
  s4 e,16 fis gis a b cis d b | % 40
  s2.*6 | % 46
  \tuplet 3/2 { c16[ b a } g'8] s4 s4 | % 47
  s2. | % 48
  \tuplet 3/2 { b,16[ a g } fis'8] s4 s | % 49
  s2.*4 | % 53
  s4 s4 s8 e8 | % 54
  e4 r4 a,8 r8 | % 55
  s2.*3 | % 58
  s4 b8 cis16 d cis8 d16 e | % 59
  s2. | % 60
  fis4 e16 d cis b s4 | % 61
  s2. | % 62
  s4 b8 fis b b | % 63
  s2.*4 | % 67
  d8 a d r8 r4 | % 68
  s2.*5 | % 73
  s4 r8 s8 s4 | % 74
  s4 fis,8 gis16 a gis8 a16 b | % 75
  s4 s4 fis'8 a | % 76
  s2.*2 | % 78
  s4 s fis8 s8 | % 79
  fis8 r8 fis,8 gis16 a gis8 a16 b | % 80
  s2.*3 | % 83
  s4 s4 s8 cis8 | % 84
  d8 cis16 e d8 cis d d | % 85
  s4 s4 s8 d8 | % 86
  e8 dis16 fis e8 d e e | % 87
  s2.*2 | % 89
  s4 s8 e8 d b | % 90
  s4 d16 cis b a~ a4 | % 91
  s2. | % 92
  d8.[ e32 fis] s4 s8 b,8 | % 93
  b4 s4 s4 | % 94
  e8.[ fis32 gis] s4 s4 | % 95
  s2.*2 | % 97
  r8 a,8 d e16 fis e8 fis16 g | % 98
  s2.*3 | % 101
  e8 s8 a,8 s8 e'8 s8 | % 102
  s2.*2
}

bassKeybB = \relative d' {
  \clef bass \global
  \oneVoice
  d8 d, r4 r | % 2
  d,4 r4 r | % 3
  r8 \voiceTwo d'16 e fis8 cis d b' | % 4
  \oneVoice a8 a, r8 e' cis a | % 5
  a'8 a, r4 r | % 6
  ais'8 ais, r4 r8 fis'8 | % 7
  b8 b, r4 r | % 8
  fis'8 d r4 r8 fis8 | % 9
  \voiceTwo g4 \oneVoice r8 e8 fis gis | % 10
  a8 a, g fis e cis'' | % 11
  d8 fis, b16 a g fis g8 a | % 12
  d,8 d16 cis d8 d a fis | % 13
  d8 d' r4 r | % 14
  cis8 <a cis'> r4 r | % 15
  d,8 <d' fis'> r4 r | % 16
  a'8 <a, cis'> r4 r | % 17
  d8 d, r4 r | % 18
  b'8 b' r4 r | % 19
  r8 g8 fis8 a8 d8 b8 | % 20
  a8 a,8 r8 e'8 cis8 a8 | % 21
  a'8 a,8 r4 r4 | % 22
  ais'8 fis8 r4 r8 fis8 | % 23
  b8 b,8 r4 r4 | % 24
  gis'8 e8 r4 r8 e8 | % 25
  \stemDown a8 gis8 a8 d,8 e8 e,8 \stemUp | % 26
  e'8 e,8 r4 r4 | % 27
  eis'8 eis,8 r4 r8 eis'8 | % 28
  fis8 fis,8 r4 r4 | % 29
  \voiceTwo cis'8 a8 r4 r8 \oneVoice cis8 | % 30
  \voiceTwo d4 \oneVoice r8 b8 cis8 d8 | % 31
  e8 e,8 e'16 fis16 gis16 a16 b8 gis8 | % 32
  a8 cis,8 \voiceTwo fis16 e16 d16 cis16 d8 e8 | % 33
  a,8 a16 gis16 \oneVoice a8 e'8 cis8 a8 | % 34
  e'8 e,8 r4 r4 | % 35
  eis'8 eis,8 r4 r8 cis'8 | % 36
  fis8 fis,8 r4 r4 | % 37
  \voiceTwo cis'8 a'8 \oneVoice r4 r8 cis,8 | % 38
  \voiceTwo d4 \oneVoice r8 b8 cis8 dis8 | % 39
  e8 e,8 \voiceTwo d'8 cis8 b8 gis'8 \oneVoice | % 40
  a8 cis,8 fis16 e16 d16 cis16 d8 e8 | % 41
  a,8 a'16 gis16 a8 e8 cis8 a8 | % 42
  a'8 a,8 r4 r4 | % 43
  ais'8 ais,8 r4 r4 | % 44
  b'8 b,8 r4 r8 b'8 | % 45
  e,8 b8 g8 fis8 e8 g'8 | % 46
  \voiceTwo a4 \oneVoice r4 r8 a,8 | % 47
  d,8 a'8 d8 e8 fis8 d8 | % 48
  \voiceTwo g4 \oneVoice r4 r4 | % 49
  r8 b,8 g'8 fis8 e8 dis8 | % 50
  e8 fis8 g8 e8 cis8 e8 | % 51
  fis8 fis,8 r4 r8 fis'8 | % 52
  b8 fis8 d8 cis8 b8 d8 | % 53
  e8 e,8 r4 r8 e'8 | % 54
  a8 e8 a,8 b8 cis8 a8 | % 55
  d8 d,8 r4 r4 | % 56
  g'8 g,8 r8 g'8 cis,8 d16 e16 | % 57
  fis8 fis,8 fis'16 gis16 ais16 b16 cis8 ais8 | % 58
  b8 d,8 \voiceTwo g16 fis16 e16 d16 e8 fis8 \oneVoice | % 59
  b,8 b16 ais16 b8 fis8 d8 b8 | % 60
  b''8 b,8 r4 r4 | % 61
  b'8 b,8 r4 r4 | % 62
  r8 b16 cis16 \voiceTwo d8 ais8 b8 g'8 \oneVoice | % 63
  fis8 fis,8 r4 r4 | % 64
  b'8 b,8 r4 r4 | % 65
  e8 e,8 r4 r4 | % 66
  a'8 a,8 r4 r4 | % 67
  \voiceTwo d8 cis8 d8 g,8 a8 e'8 \oneVoice | % 68
  a8 a,8 r4 r4 | % 69
  ais'8 ais,8 r4 r8 fis'8 | % 70
  b8 b,8 r4 r4 | % 71
  eis8 cis8 r4 r8 eis8 | % 72
  fis8 fis,8 r8 gis8 a8 b8 | % 73
  cis4 cis16 dis16 eis16 fis16 gis8 eis8 | % 74
  fis8 a,8 \voiceTwo d16 cis16 b16 a16 b8 cis8 \oneVoice | % 75
  fis,8 fis'16 eis16 fis8 a8 \voiceTwo cis8 fis,8 \oneVoice | % 76
  b,8 r8 cis8 r8 d8 r8 | % 77
  cis8 r8 b8 r8 a8 r8 | % 78
  b8 r8 a8 r8 gis'8 r8 | % 79
  \voiceTwo a8 fis,8 d'16 cis16 b16 a16 b8 cis8 \oneVoice | % 80
  fis,8 fis'8 r4 r4 | % 81
  b8 b,8 r4 r8 b'8 | % 82
  e,,8 e'8 r4 r8 e8 | % 83
  a8 a,8 r4 r8 a'8 | % 84
  fis8 g16 e16 fis8 a8 d,8 fis8 | % 85
  \voiceTwo g8 g,8 \oneVoice r4 r8 b'8 | % 86
  g8 a16 fis16 g8 b8 e,8 g8 | % 87
  a8 a,8 r4 r4 | % 88
  fis'8 fis,8 r8 d'8 e8 fis8 | % 89
  g8 g,8 r8 e'8 fis8 g8 | % 90
  a8 a,8 r4 \voiceTwo b8 cis8 \oneVoice | % 91
  d,8 a'8 d8 c8 b8 a8 | % 92
  \voiceTwo g'8 g,8 \oneVoice r4 r8 g'16 fis16 | % 93
  e8 b8 e8 d8 cis8 b8 | % 94
  a'8 a,8 r4 r4 | % 95
  g'8 g,8 r4 r8 g'8 | % 96
  \voiceTwo fis8 fis,8 \oneVoice r8 fis'8 e8 cis8 | % 97
  \voiceTwo d8 fis8 b16 a16 g16 fis16 g8 a8 \oneVoice | % 98
  d,,8 d'16 cis16 d8 fis8 a8 d,8 | % 99
  g,8 r8 a8 r8 b8 r8 | % 100
  a8 r8 g8 r8 fis8 r8 | % 101
  g'8 r8 fis8 r8 e8 r8 | % 102
  fis8 d,8 b'16 a16 g16 fis16 g8 a8 | % 103
  d,4 r4 r4
}

