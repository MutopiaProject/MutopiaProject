pieceName = "5. ARIE."
instInfo = #(format "~A, ~A, ~A, ~A"
  #'altoName #'fluteName #'stringsName #'continuoName )

globalNoTimeSig = {
  \key d \major
  \set Staff.beatStructure = 1,1,1
  \set Staff.beamExceptions = \beamExceptions {
    8[ 8 8 8] 8[ 8 8 8] |
    \repeat unfold 4 { 16[ 16 16 16] } |
    \repeat unfold 8 { \tuplet 3/2 { 16[ 16 16] } }
  }
  \override TupletBracket.bracket-visibility = #'if-no-beam
}

global = {
  \time 4/4
  \globalNoTimeSig
}

globalMarksBreaks = {
  s1*55 \bar "|."
}

fluteMusic = \relative a' {
  \clef "treble" \global
  \tempo 4=75 | % 1
  r4 r8 a8 d16( cis16 d8) r8 d,8 | % 2
  e8 e8 e16 fis16 g16 e16 fis16( g16 a8) r8 fis8 | % 3
  g16 d16 a'16 d,16 b'16 cis16 d16 b16
  cis16 a16 d16 a16 e'16 fis16 g16 e16 | % 4
  fis16 d16 g16 d16 a'16 d,16 b'8-. cis,8\trill b16 cis16 a8 e'8 | % 5
  \tuplet 3/2 { fis16( g16 fis16) } b8-. \tuplet 3/2 { e,16( fis16 e16) } a8-.
  \tuplet 3/2 { d,16( e16 d16) } fis8-.
  \tuplet 3/2 { b,16( cis16 b16) } d8-. | % 6
  \tuplet 3/2 8 { e,16( fis16 e16) fis16( gis16 fis16) }
  \tuplet 3/2 8 { gis16( a16 gis16) a16( b16 a16) }
  \tuplet 3/2 8 { b16( cis16 b16) cis16( d16 cis16) }
  \tuplet 3/2 { d16( e16 d16) } e16 b16 | % 7
  \tuplet 3/2 { cis16( d16 cis16) } a'16 cis,16
  \tuplet 3/2 { d16( e16 d16) } b'16 d,16
  cis16 a'16 e16 cis16 d16 b32( cis32 d16) b32( cis32 | % 8
  d16) fis32( e32 d16) fis32( e32 d16) gis32( a32 b16) gis32( a32
  b16) d,16 cis16 e16 cis8\trill b16( a16) | % 9
  a4 r4 r8 a8_\markup { \italic "piano" } d16( cis16 d8) | % 10
  r2 r8 a8 d16( cis16 d8) | % 11
  r2 r8 d,16( e16 fis16 g16 a16 fis16) | % 12
  g16 d16 a'16 d,16 b'16( cis16 d16 b16)
  cis16 a16 d16 a16 e'16( fis16 g16 e16) | % 13
  fis16 d16 g16 d16 a'16 d,16 b'8-. cis,8\trill b16 cis16 a8 r8 | % 14
  r8 a8 g'16( fis16 g8) r8 c,8 a'16( g16 a8) | % 15
  r8 d,8 g16( fis16 g8) r8 b,8 gis'16( fis16 gis8) | % 16
  r8 d8 b'16( a16 b8) r8 e,8 a16( gis16 a16 e16) | % 17
  \tuplet 3/2 { fis16( g16 fis16) } b8-.
  \tuplet 3/2 { e,16( fis16 e16) } a8-.
  \tuplet 3/2 { d,16( e16 d16) } fis8-.
  \tuplet 3/2 { b,16( cis16 b16) } d8-. | % 18
  \tuplet 3/2 8 { e,16( fis16 e16) fis16( gis16 fis16) }
  \tuplet 3/2 8 { gis16( a16 gis16) a16( b16 a16) }
  \tuplet 3/2 8 { b16( cis16 b16) cis16( d16 cis16) }
  \tuplet 3/2 { d16( e16 d16) } e16 b16 | % 19
  \tuplet 3/2 { cis16( d16 cis16) } a'16 cis,16
  \tuplet 3/2 { d16( e16 d16) } b'16 d,16
  cis16 a'16 e16 cis16 d16 b32( cis32 d16) b32( cis32 | % 20
  d16) fis32( e32 d16) fis32( e32 d16) gis32( a32 b16) gis32( a32
  b16) d,16 cis16 e16 cis8\trill b16( a16) | % 21
  a4 r8 e'8_\markup{ \italic "forte" } a16( gis16 a8) r8 a,8 | % 22
  b8 b8 b16( cis16 d16 b16) cis16( d16 e8) r8 cis8 | % 23
  d16 a16 e'16 a,16 fis'16 gis16 a16 fis16
  gis16 e16 a16 e16 b'16 cis16 d16 b16 | % 24
  cis16( b32 a32) d16( cis32 b32) cis16 a16 e16 gis16 a4 r4 | % 25
  r8 fis,8_\markup{ \italic "piano" } e'16( d16 e8)
  r8 fis,8 e'16( d16 e8) | % 26
  r8 fis,8 e'16( d16 e8) r4 r8 fis8 | % 27
  b16( ais16 b8) r8 b,8 cis8 cis8 cis16( d16 e16 cis16) | % 28
  d16( e16 fis8) r4 r2 | % 29
  r4 r8 fis16_\markup{ \italic "forte"} cis16
  \tuplet 3/2 { d16( e16 d16) } b'16 d,16
  \tuplet 3/2 { e16( fis16 e16) } cis'16 e,16 | % 30
  d16 b'16 fis16 d16 e16 cis32( d32 e16) cis32( d32
  e16) g32( fis32 e16) g32( fis32 e16) ais32( b32 cis16) ais32( b32 | % 31
  cis16) e,16 d16 fis16 d8\trill cis16 b16
  b8 fis'8_\markup{ \italic "piano" } d'16( cis16 d8) | % 32
  r2 r8 a,8 d16( cis16 d8) | % 33
  r2 r8 d,16( e16 fis16 g16 a16 fis16) | % 34
  g16 d16 a'16 d,16 b'16( cis16 d16 b16)
  cis16 a16 d16 a16 e'16( fis16 g16 e16) | % 35
  fis16 d16 g16 d16 a'16 d,16 b'8-. cis,8\trill b16 cis16 a8 r8 | % 36
  r8 a8 a'16( g16 a8) r8 b,8 fis'16( e16 fis8) | % 37
  r8 b,8 g'16( fis16 g8)
  r16 e16 cis16 a16 g'16 e32( fis32 g16) e32( fis32 | % 38
  g16) b32( a32 g16) b32( a32 g16) cis32( d32 e16) cis32( d32 e8) r8 r4 | % 39
  r2 r4 r8 a,,8 | % 40
  d16( cis16 d8) r8 d,8 e8 e8 e16( fis16 g16 e16) | % 41
  fis16( g16 a8) r8 fis8 g8 g8 g16( a16 b16 g16) | % 42
  a16( b16 c8) r8 a8 \tuplet 3/2 { b16( a16 b16) } e8-.
  \tuplet 3/2 { a,16( g16 a16) } d8-. | % 43
  \tuplet 3/2 { g,16( fis16 g16) } b8-.
  \tuplet 3/2 { e,16( d16 e16) } g8-. g2~ | % 44
  g4. a16 e16 \tuplet 3/2 { fis16( g16 fis16) } d'16 fis,16
  \tuplet 3/2 { g16( a16 g16) } e'16 g,16 | % 45
  fis16 d'16 a16 fis16 g16 e32( fis32 g16) e32( fis32
  g16) b32( a32 g16) b32( a32 g16) cis32( d32 e16) cis32( d32 | % 46
  e16) g16 fis16 a16 fis8\trill e16 d16
  d4 r8 a'8_\markup{ \italic "forte" } | % 47
  d16( cis16 d8) r8 d,8 e8 e8 e16( fis16 g16 e16) | % 48
  fis16( g16 a8) r8 c,8 b8 b8 b16( cis16 d16 b16) | % 49
  cis16( d16 e8) r8 g,8 fis8 fis8 fis16( g16 a16 fis16) | % 50
  g16 d16 a'16 d,16 b'16( cis16 d16 b16)
  cis16 a16 d16 a16 e'16( fis16 g16 e16) | % 51
  fis16 d16 g16 d16 a'16 d,16 b'8-. cis,8\trill b16 cis16 a8 e'8 | % 52
  \tuplet 3/2 { fis16( g16 fis16) } b8-.
  \tuplet 3/2 { e,16( fis16 e16) } a8-.
  \tuplet 3/2 { d,16( e16 d16) } g8-.
  \tuplet 3/2 { cis,16( d16 cis16) } fis8-. | % 53
  \tuplet 3/2 { b,16( cis16 b16) } e8-.
  \tuplet 3/2 { a,16( b16 a16) } d8-. g,16 e32( fis32 g16) e32( fis32
  g16) b32( a32 g16) b32( a32 | % 54
  g16) cis32( d32 e16) cis32( \tempo 4=69 d32
  e16) g32( \tempo 4=68 fis32 e16) \tempo 4=66 g32( \tempo 4=65 fis32
  \tempo 4=64 e16) \tempo 4=62 cis16 \tempo 4=60 d16 \tempo 4=56
  a'16 \tempo 4=53 fis8\trill \tempo 4=43 e16 \tempo 4=37 d16 \tempo 4=60 | % 55
  d4 r4 r2
}

violinIMusic = \relative a' {
  \clef "treble" \global
  r4 r8 a8 d16( cis16 d8) r8 d,8 | % 2
  e8 e8 e16 fis16 g16 e16 fis16( g16 a8) r8 fis8 | % 3
  g16 d16 a'16 d,16 b'16 cis16 d16 b16
  cis16 a16 d16 a16 e'16 fis16 g16 e16 | % 4
  fis16 d16 g16 d16 a'16 d,16 b'8 cis,8\trill b16 cis16 a8 e'8 | % 5
  \tuplet 3/2 { fis16 g16 fis16 } b8-.
  \tuplet 3/2 { e,16 fis16 e16 } a8-.
  \tuplet 3/2 { d,16 e16 d16 } fis8-.
  \tuplet 3/2 { b,16 cis16 b16 } d8-. | % 6
  \tuplet 3/2 8 { e,16 fis16 e16 fis16 gis16 fis16 }
  \tuplet 3/2 8 { gis16 a16 gis16 a16 b16 a16 }
  \tuplet 3/2 8 { b16 cis16 b16 cis16 d16 cis16 }
  \tuplet 3/2 { d16 e16 d16 } e16 b16 | % 7
  \tuplet 3/2 { cis16 d16 cis16 } a'16 cis,16
  \tuplet 3/2 { d16 e16 d16 } b'16 d,16
  cis16 a'16 e16 cis16 d16 b32( cis32 d16) b32( cis32 | % 8
  d16) fis32( e32 d16) fis32( e32 d16) gis32( a32 b16) gis32( a32
  b16) d,16 cis16 e16 cis8\trill b16 a16 | % 9
  a4 r4 r8 a8_\markup{ \italic "piano" } d16 cis16 d8 | % 10
  r2 r8 a8 d16 cis16 d8 | % 11
  r2 r8 d,16 e16 fis16 g16 a16 fis16 | % 12
  g16 d16 a'16 d,16 b'16 cis16 d16 b16
  cis16 a16 d16 a16 e'16 fis16 g16 e16 | % 13
  fis16 d16 g16 d16 a'16 d,16 b'8 cis,8\trill b16 cis16 a4-. | % 14
  r8 a8 g'16 fis16 g8 r8 c,8 a'16 g16 a8 | % 15
  r8 d,8 g16 fis16 g8 r8 b,8 gis'16 fis16 gis8 | % 16
  r8 d8 b'16 a16 b8 r8 e,8 a16 gis16 a16 e16 | % 17
  \tuplet 3/2 { fis16( g16 fis16) } b8-.
  \tuplet 3/2 { e,16( fis16 e16) } a8-.
  \tuplet 3/2 { d,16( e16 d16) } fis8-.
  \tuplet 3/2 { b,16( cis16 b16) } d8-. | % 18
  \tuplet 3/2 8 { e,16 fis16 e16 fis16 gis16 fis16 }
  \tuplet 3/2 8 { gis16 a16 gis16 a16 b16 a16 }
  \tuplet 3/2 8 { b16 cis16 b16 cis16 d16 cis16 }
  \tuplet 3/2 { d16 e16 d16 } e16 b16 | % 19
  \tuplet 3/2 { cis16 d16 cis16 } a'16 cis,16
  \tuplet 3/2 { d16 e16 d16 } b'16 d,16
  cis16 a'16 e16 cis16 d16 b32( cis32 d16) b32( cis32 | % 20
  d16) fis32( e32 d16) fis32( e32 d16) gis32( a32 b16) gis32( a32
  b16) d,16 cis16 e16 cis8\trill b16 a16 | % 21
  a4 r8 e'8_\markup{ \italic "forte" } a16( gis16 a8) r8 a,8 | % 22
  b8 b8 b16 cis16 d16 b16 cis16 d16 e8 r8 cis8 | % 23
  d16 a16 e'16 a,16 fis'16 gis16 a16 fis16
  gis16 e16 a16 e16 b'16 cis16 d16 b16 | % 24
  cis16 b32 a32 d16 cis32 b32 cis16 a16 e16 gis16 a4 r4 | % 25
  r8 fis,8_\markup{ \italic "piano" } e'16 d16 e8 r8 fis,8 e'16 d16 e8 | % 26
  r8 fis,8 e'16 d16 e8 r4 r8 fis8 | % 27
  b16 ais16 b8 r8 b,8 cis8 cis8 cis16 d16 e16 cis16 | % 28
  d16 e16 fis8 r4 r2 | % 29
  r4 r8 fis16_\markup{ \italic "forte" } cis16
  \tuplet 3/2 { d16 e16 d16 } b'16 d,16
  \tuplet 3/2 { e16 fis16 e16 } cis'16 e,16 | % 30
  d16 b'16 fis16 d16 e16 cis32( d32 e16) cis32( d32
  e16) g32( fis32 e16) g32( fis32 e16) ais32( b32 cis16) ais32( b32 | % 31
  cis16) e,16 d16 fis16 d8\trill cis16 b16
  b8 fis'8_\markup{ \italic "piano" } d'16( cis16 d8) | % 32
  r2 r8 a,8 d16( cis16 d8) | % 33
  r2 r8 d,16 e16 fis16 g16 a16 fis16 | % 34
  g16 d16 a'16 d,16 b'16 cis16 d16 b16
  cis16 a16 d16 a16 e'16 fis16 g16 e16 | % 35
  fis16 d16 g16 d16 a'16 d,16 b'8 cis,8\trill b16 cis16 a8 r8 | % 36
  r8 a8 a'16 g16 a8 r8 b,8 fis'16( e16 fis8) | % 37
  r8 b,8 g'16 fis16 g8 r16 e,16 cis16 a16 g'16 e32( fis32 g16) e32( fis32 | % 38
  g16) b32( a32 g16) b32( a32 g16) cis32( d32 e16) cis32( d32 e8) r8 r4 | % 39
  r2 r4 r8 a,8 | % 40
  d16( cis16 d8) r8 d,8 e8 e8 e16 fis16 g16 e16 | % 41
  fis16 g16 a8 r8 fis8 g8 g8 g16 a16 b16 g16 | % 42
  a16( b16 c8) r8 a8
  \tuplet 3/2 { b16 a16 b16 } e8 \tuplet 3/2 { a,16 g16 a16 } d8 | % 43
  \tuplet 3/2 { g,16 fis16 g16 } b8
  \tuplet 3/2 { e,16 d16 e16 } g8
  \tuplet 3/2 { a,16 b16 a16 } \tuplet 3/2 { b16 cis16 b16 }
  \tuplet 3/2 { cis16 d16 cis16 } \tuplet 3/2 { d16 e16 d16 } | % 44
  \tuplet 3/2 { e16 fis16 e16 } \tuplet 3/2 { fis16 g16 fis16 }
  \tuplet 3/2 { g16 a16 g16 } a16 e16
  \tuplet 3/2 { fis16 g16 fis16 } d'16 fis,16
  \tuplet 3/2 { g16 a16 g16 } e'16 g,16 | % 45
  fis16 d'16 a16 fis16 g16 e32( fis32 g16) e32( fis32
  g16) b32( a32 g16) b32( a32 g16) cis32( d32 e16) cis32( d32 | % 46
  e16) g16 fis16 a16 fis8\trill e16 d16
  d4 r8 a'8_\markup{ \italic "forte" } | % 47
  d16( cis16 d8) r8 d,8 e8 e8 e16 fis16 g16 e16 | % 48
  fis16( g16 a8) r8 c,8 b8 b8 b16 cis16 d16 b16 | % 49
  cis16( d16 e8) r8 g,8 fis8 fis8 fis16 g16 a16 fis16 | % 50
  g16 d16 a'16 d,16 b'16 cis16 d16 b16
  cis16 a16 d16 a16 e'16 fis16 g16 e16 | % 51
  fis16 d16 g16 d16 a'16 d,16 b'8 cis,8\trill b16 cis16 a8 e'8 | % 52
  \tuplet 3/2 { fis16 g16 fis16 } b8
  \tuplet 3/2 { e,16 fis16 e16 } a8
  \tuplet 3/2 { d,16 e16 d16 } g8
  \tuplet 3/2 { cis,16 d16 cis16 } fis8 | % 53
  \tuplet 3/2 { b,16 cis16 b16 } e8 \tuplet 3/2 { a,16 b16 a16 } d8
  g,16 e32( fis32 g16) e32( fis32 g16) b32( a32 g16) b32( a32 | % 54
  g16) cis32( d32 e16) cis32( d32 e16) g32( fis32 e16) g32( fis32
  e16) cis16 d16 a'16 fis8\trill e16 d16 | % 55
  d4 r4 r2
}

violinIIMusic = \relative fis' {
  \clef "treble" \global
  r4 r8 fis8 a16( g16 a8) r8 d,8 | % 2
  d8 d8 cis8 cis8 d16( e16 fis8) r8 d8 | % 3
  d8 d8 d8 g8 e8 a8 a8 a8 | % 4
  a8 b8 d8 d8 a4 e8 cis'8 | % 5
  d8 fis8-. r8 e8-. r8 d8-. r8 b8-. | % 6
  d2.~ d8 b8 | % 7
  a8 cis8 b8 d8 cis8 a8 gis8 e8 | % 8
  gis8 b8 gis8 e'8 e8 a,8 a8 gis8 | % 9
  e4 r4 r8 fis8_\markup{ \italic "piano" } a16( g16 a8) | % 10
  r2 r8 fis8 a16( g16 a8) | % 11
  r2 r8 fis16 g16 a8 fis8 | % 12
  d8 fis8 g8 b8 a8 g16 fis16 g8 e'8 | % 13
  d8 d8 d8 b8 a8 gis8 e8 r8 | % 14
  R1 | % 15
  r8 b'8 d16( c16 d8) r2 | % 16
  r2 r8 cis8 e16( d16 e8) | % 17
  r8 fis,8-. r8 a8-. r8 b8-. r8 d8-. | % 18
  d2.~ d8 b8 | % 19
  a8 cis8 b8 d8 cis8 a8 gis8 e8 | % 20
  gis8 b8 gis8 e8 e8 a8 a8 gis8 | % 21
  e4 r8 cis'8_\markup{ \italic "forte" } e16( d16 e8) r8 a,8 | % 22
  a8 a8 gis8 gis8 a16( b16 cis8) r8 a8 | % 23
  a8 a8 a8 d8 b8 e8 e8 e8 | % 24
  e8 fis8 fis8 b,8 cis4 r4 | % 25
  R1 | % 26
  r2 r4 r8 d8_\markup{ \italic "piano" } | % 27
  g16( fis16 g8) r8 b,8 b8 b8 ais8 ais8 | % 28
  b16( cis16 d8) r4 r2 | % 29
  r4 r8 cis8_\markup{ \italic "forte" } b8 d8 cis8 e8 | % 30
  d8 b8 ais8 fis8 ais8 cis8 ais8 fis'8 | % 31
  fis8 b,8 b8 ais8 b8 d8_\markup{ \italic "piano" } fis16( e16 fis8) | % 32
  r2 r8 fis,8 a16( g16 a8) | % 33
  r2 r8 fis16 g16 a8 fis8 | % 34
  d8 fis8 g8 b8 a8 g16 fis16 g8 e'8 | % 35
  d8 d8 d8 b8 a8 gis8 e8 r8 | % 36
  R1 | % 37
  r8 g8 e'16( dis16 e8) r2 | % 38
  R1 | % 39
  r2 r4 r8 fis,8 | % 40
  b16( a16 b8) r8 d,8 d8 d8 cis8 cis8 | % 41
  d16( e16 fis8) r8 d8 d8 d8 g8 g8 | % 42
  fis16( g16 a8) r8 fis8 g8 b8-. r8 a8-. | % 43
  r8 e'8-. r8 e,8-. g2~ | % 44
  g4. e8 d8 fis8 e8 a8 | % 45
  a8 d,8 cis8 a8 cis8 e8 cis8 a'8 | % 46
  a8 d8 d8 cis8 a4 r8 d8_\markup{ \italic "forte" } | % 47
  fis16( e16 fis8) r8 d8 d8 d8 cis8 cis8 | % 48
  d16( e16 fis8) r8 a,8 g8 g8 g16( a16 b16 g16) | % 49
  e16( fis16 g8) r8 e8 d8 d8 d8 fis8 | % 50
  d8 d8 d8 g8 e8 a8 a8 a8 | % 51
  a8 b8 d8 d8 a4 e8 cis'8 | % 52
  d8 fis8-. r8 e8-. r8 d8-. r8 cis8-. | % 53
  r8 b8-. r8 a8-. cis,8 cis8 d8 d8 | % 54
  e8 a8 cis16( b16 cis8) r8 a16 d16 d8 cis8 | % 55
  a4 r4 r2
}

violaMusic = \relative d' {
  \clef "alto" \global
  r4 r8 d8 fis16( e16 fis8) r8 a,8 | % 2
  b8 g8 a8 a8 a16( b16 c8) r8 a8 | % 3
  b8 a8 g8 b8 a8 a8 g'8 cis,8 | % 4
  d8 d8 fis8 fis8 e4 a,8 a'8 | % 5
  a8 d8-. r8 a8-. r8 b8-. r8 fis8-. | % 6
  b2.~ b8 e,8 | % 7
  e8 e8 e8 e8 e8 e8 e8 e8 | % 8
  e8 e8 e8 gis8 e8 e8 e8 e8 | % 9
  cis4 r4 r8 d8_\markup{ \italic "piano"} fis16( e16 fis8) | % 10
  r2 r8 d8 fis16( e16 fis8) | % 11
  r2 r8 c16 b16 a8 a8 | % 12
  b8 c8 d8 b8 e8 a,8 g'8 cis,8 | % 13
  a'8 a8 a8 d,8 a'8 e8 a,8 r8 | % 14
  R1 | % 15
  r8 g'8 b16( a16 b8) r2 | % 16
  r2 r8 a8 cis16( b16 cis8) | % 17
  r8 d,8-. r8 e8-. r8 fis8-. r8 b8-. | % 18
  b2.~ b8 e,8 | % 19
  e8 e8 e8 e8 e8 e8 e8 e8 | % 20
  e8 e8 e8 gis8 b,8 a8 cis8 e8 | % 21
  cis4 r8 a'8_\markup{ \italic "forte"} cis16( b16 cis8) r8 e,8 | % 22
  fis8 d8 e8 e8 e16( fis16 g8) r8 e8 | % 23
  fis8 e8 d8 fis8 e8 e8 d'8 gis,8 | % 24
  a8 a8 a8 gis8 e4 r4 | % 25
  R1 | % 26
  r2 r4 r8 b'8_\markup{ \italic "piano"} | % 27
  d16( cis16 d8) r8 g,8 g8 g8 fis8 fis8 | % 28
  fis8 b8 r4 r2 | % 29
  r4 r8 fis8_\markup{ \italic "forte"} fis8 fis8 fis8 fis8 | % 30
  fis8 fis8 fis8 fis8 fis8 fis8 fis8 ais8 | % 31
  fis8 fis8 fis8 fis8 d8 b'8_\markup{ \italic "piano"} b16( g16 a8) | % 32
  r2 r8 d,8 fis16( e16 fis8) | % 33
  r2 r8 c16 b16 a8 a8 | % 34
  b8 c8 d8 b8 e8 a,8 g'8 e8 | % 35
  a8 a8 a8 d,8 a'8 e8 a,4-. | % 36
  R1 | % 37
  r8 e'8 b'16( a16 b8) r2 | % 38
  R1 | % 39
  r2 r4 r8 d,8 | % 40
  fis16( e16 fis8) r8 fis,8 a8 b8 a8 a8 | % 41
  a16( b16 c8) r8 a8 b8 b8 d8 d8 | % 42
  d16( g16 fis8) r8 d8 d8 e8-. r8 fis8-. | % 43
  r8 g8-. r8 b,8-. e2~ | % 44
  e4. a,8 a8 a8 a8 a8 | % 45
  a8 a8 a8 a8 a8 a8 a8 cis8 | % 46
  e8 d8 fis8 a8 fis4 r8 fis8_\markup{ \italic "forte"} | % 47
  a16( g16 a8) r8 a8 b8 g8 a8 a8 | % 48
  a16( b16 c8) r8 fis,8 d8 d8 d8 g8 | % 49
  a16( b16 cis8) r8 cis,8 a8 a8 a8 d8 | % 50
  d8 a8 g8 b8 a8 a8 g'8 cis,8 | % 51
  d8 d8 fis8 fis8 e4 a,8 a'8 | % 52
  a8 d8-. r8 a8-. r8 b8-. r8 fis8-. | % 53
  r8 g8-. r8 d8-. e8 e8 b8 b8 | % 54
  a8 cis8 e16( d16 e8) r8 d16 fis16 a8 g8 | % 55
  fis4 r4 r2
}

altoMusic = \relative a' {
  \clef "treble" \global
  \autoBeamOff
  R1*8 | % 9
  r4 r8 a8 d16[( cis16]) d8 r8 d,8 | % 10
  e8 e4 fis16[( g16]) fis16[( g16 a8]) r8 fis8 | % 11
  g8 g4 a16[( b16]) a16[( b16 c8]) r8 d8 | % 12
  b8[( a8]) g8[( fis8]) e8[( d8]) cis8 a8 | % 13
  a'16[( g16]) fis16[( e16]) d8 g8 \appoggiatura fis8 e4 r8 e8 | % 14
  cis'16[( b16]) cis8 r8 a8 d8 a16[( g16] fis16[ a16]) c8 | % 15
  c8[( b8]) r8 b8 e16[( d16]) e8 r8 b8 | % 16
  gis8 cis16[( b16] d16[ cis16]) d8 d8[( cis8]) r8 cis8 | % 17
  cis8[( b8]) b8[( a8]) a8 d8 r8 fis,8 | % 18
  b8 cis8 d8 cis8 b8 a8 gis16[( a16]) b16[( gis16]) | % 19
  e8 e8 e8 e8 a16[( gis16 a8]) r8 e8 | % 20
  b'16[( a16 b8]) r8 e,8 d'16[( cis32 b32] e4) d16[( cis16]) | % 21
  \appoggiatura b8 a4 r4 r2 | % 22
  R1*2 | % 24
  r2 r4 r8 cis8 | % 25
  cis8[( ais8]) fis4 d'8 cis8 cis16[( d32 e32]) cis8 | % 26
  ais4 r8 fis8 b16[( ais16]) b8 b4~ | % 27
  b8 b8 e16[( d16]) e8 e,16[( fis16 g8]) r8 fis16[( e16]) | % 28
  d16[( fis16]) b16[( d16]) cis16[( d32 cis32 b16 cis16
  d8]) cis16[( b16]) e8 cis8 | % 29
  ais8 b8 fis8 ais8 b4 r4 | % 30
  R1 | % 31
  r4 r8 fis8 d'16[( cis16]) d8 r8 d,8 | % 32
  e8 e4 fis16[( g16]) fis16[( g16 a8]) r8 fis8 | % 33
  g8 g4 a16[( b16]) a16[( b16 c8]) r8 d8 | % 34
  b8[( a8]) g8[( fis8]) e8[( d8]) cis8 a8 | % 35
  a'16[( g16]) fis16[( e16]) d8 g8 \appoggiatura fis8 e4 r8 a8 | % 36
  a8[( fis8]) dis4 b'8 a8 a16[( b32 c32]) b8 | % 37
  g4 r8 e8 cis'16[( b16]) cis8 cis8 r8 | % 38
  r4 r8 e,8 cis8 a8 cis8 e8 | % 39
  g16[( a16] b4) a8 fis8 a8 d16[( cis16]) d8 | % 40
  d8 d,8 b'16[( g16]) a8 a4 r4 | % 41
  r8 a8 fis8 d8 g4~\melisma g16[ a16 b16 g16] | % 42
  a8\melismaEnd a8 a16[( b16]) c16[( a16])
  b8 g16 e16 a16[( fis16]) e16[( d16]) | % 43
  g16[\melisma fis16 e16 fis16] g16[ fis16 g8]~
  g16[ fis16 e16 fis16] g16[ a16 b16 cis16] | % 44
  d16[ b16]\melismaEnd cis8 cis8 r8 r4 r8 a,8 | % 45
  d16[( cis16 d8]) r8 a8 e'16[( d16 e8]) r8 e16[( fis16]) | % 46
  g16[( fis32 e32] a4) g16[( fis16]) \appoggiatura e8 d4 r4 | % 47
  R1*9
}

altoLyrics = \lyricmode {
  Das Gu -- te, das dein Gott be -- schert,
  das dein Gott be -- schert und was dir heu -- te,
  dir heu -- te wi -- der -- fährt,
  das Gu -- te, das dein Gott be -- schert,
  das Gu -- te, das dein Gott be -- schert und was dir heu -- te,
  dir heu -- te wi -- der -- fährt,
  macht dein er -- wünsch -- tes Wohl -- er -- gehn, er -- gehn,
  vor uns auch schön.
  Das Gu -- te, das dein Gott be -- schert
  und was dir heu -- te wi -- der -- fährt,
  macht dein er -- wünsch -- tes Wohl -- er -- gehn vor uns auch schön.
  Das Gu -- te, das dein Gott be -- schert,
  das dein Gott be -- schert und was dir heu -- te,
  dir heu -- te wi -- der -- fährt,
  macht dein er -- wünsch -- tes Wohl -- er -- gehn vor uns auch schön,
  das Gu -- te, das dein Gott be -- schert
  und was dir heu -- te wi -- der -- fährt,
  macht dein er -- wünsch -- tes Wohl -- er -- gehn,
  dein er -- wünsch -- tes Wohl -- er -- gehn vor uns auch schön,
  vor uns auch schön.
}

continuoMusic = \relative d {
  \clef "bass" \global
  r8 d8 d'16( cis16 d8) r8 d16 cis16 b8 fis8 | % 2
  g8 e8 a8 a,8 d,8 d'8 c'16( b16 c8) | % 3
  b8 fis8 g8 e8 a8 fis8 cis8 a8 | % 4
  d8 b8 fis8 g8 a8 b8 cis8 a8 | % 5
  d8 d'8 cis,8 cis'8 b,8 b'8 a,8 a'8 | % 6
  gis8( a8) b8( a8) gis8( fis8) e8( gis8) | % 7
  a8 e8 gis16( fis16 gis8) r8 e8 b'16( a16 b8) | % 8
  r8 e,8 e'16( cis16 d8) gis,8 a8 e8 e,8 | % 9
  a8 a'16_\markup{ \italic "piano" }( g16) fis16( g16) fis16( e16)
  d8 d'16 cis16 b8 fis8 | % 10
  g8 e8 a8 a,8 d16( e16 fis16 e16) d8 c8 | % 11
  b16( c16 d16 c16) b8 g8 fis16( g16 a16 g16) fis8 d8 | % 12
  g4 r8 g8 a4 r8 cis8 | % 13
  d8 e8 fis8 g8 a8( b8) cis8( b8) | % 14
  a16( gis16) a16( b16) cis8 a8 fis16( g16) fis16( e16) d8 fis8 | % 15
  g16( a16) b16( a16) g8 fis8 e16( fis16) gis16( fis16) e8 d8 | % 16
  cis16( d16) e16( d16) cis8 b8 a16( b16) cis16( b16) a8 a'8 | % 17
  d,8 d'8 cis,8 cis'8 b,8 b'8 a,8 a'8 | % 18
  gis8( a8) b8( a8) gis8( fis8) e8( gis8) | % 19
  a8 e8 gis16( fis16 gis8) r8 e8 b'16( a16 b8) | % 20
  r8 e,8 e'16( cis16 d8) gis,8 a8 e8 e,8 | % 21
  r8 a8_\markup{ \italic "forte" } a'16( gis16 a8)
  r8 a16 gis16 fis8 cis8 | % 22
  d8 b8 e8 e,8 a'8 a,8 g'16( fis16 g8) | % 23
  fis8 cis8 d8 b8 e8 cis8 gis8 e8 | % 24
  a8 fis8 d8 e8 a8 b8_\markup{ \italic "piano" } cis8 b8 | % 25
  ais16( gis16 fis16 gis16) ais8 fis8 b8 a8 g8 e8 | % 26
  fis8 fis'16 gis16 ais8 fis8 d16( cis16 b16 cis16) d8 b8 | % 27
  e,8 g'16 fis16 e8 d8 cis8 d16 e16 fis8 fis,8 | % 28
  b8 b'8 ais8 fis8 b8 a8 g16( fis16 e16 g16) | % 29
  fis16( e16 d16 e16) fis8 fis,8_\markup{ \italic "forte" }
  b8 fis'8 ais16( gis16 ais8) | % 30
  r8 fis8 cis'16( b16 cis8) r8 fis,8 fis'16( d16 e8) | % 31
  ais,8 b8 fis8 fis,8 b8 d'16_\markup{ \italic "piano" } cis16 b8 fis8 | % 32
  g8 e8 a8 a,8 d16( e16 fis16 e16) d8 c8 | % 33
  b16( c16 d16 c16) b8 g8 fis16( g16 a16 g16) fis8 d8 | % 34
  g4 r8 g8 a4 r8 cis8 | % 35
  d8 e8 fis8 g8 a16( b16 cis16 b16) a8 g8 | % 36
  fis16( g16 a16 g16) fis8 e8 dis16( e16 fis16 e16) dis8 b8 | % 37
  e16( fis16 g16 fis16) e8 e,8 a8 e'8 a16( g16 a8) | % 38
  r8 e8 cis'16( b16 cis8) r8 a8 e'16( d16 e8) | % 39
  r8 e,16 d16 cis8 a8 d16( e16 fis16 e16) d8 cis8 | % 40
  b8 b'16( a16) g16( fis16 e16 d16) a'16( g16 fis16 g16) a8 a,8 | % 41
  d,8 d'8 c'16( b16 c8) b16( c16 d16 c16) b8 g8 | % 42
  d'8 d,16 e16 fis8 d8 g,8 g'8 fis,8 fis'8 | % 43
  e,8 e'8 d,8 d'8 cis8( d8) e8( d8) | % 44
  cis8( b8) a8( cis8) d8 a8 cis16( b16 cis8) | % 45
  r8 a8 e'16( d16 e8) r8 a,8 a'16( fis16 g8) | % 46
  cis,8 d8 a'8 a,8 d,8 d'8 d'16_\markup{ \italic "forte" }( cis16 d8) | % 47
  r8 d16 cis16 b8 fis8 g8 e8 a8 a,8 | % 48
  d,8 d'16 e16 fis8 d8 g16( a16 b16 a16) g8 g,8 | % 49
  g'8 cis,16 b16 cis8 a8 d,8 d'8 c'16( b16 c8) | % 50
  b8 fis8 g8 e8 a8 fis8 cis8 a8 | % 51
  d8 b8 fis8 g8 a8 b8 cis8 a8 | % 52
  d8 d'8 cis,8 cis'8 b,8 b'8 a,8 a'8 | % 53
  g,8 g'8 fis,8 fis'8 e,8 e'8 d,8 d'8 | % 54
  cis8 a8 g'16( fis16 g8) r8 fis16 d16 a'8 a,8 | % 55
  d,4\fermata r4 r2
}

trebKeybA = \relative fis' {
  \oneVoice
  r4 r8 \voiceOne <fis a>8
  <a d>16 <g cis> <a d>8 \oneVoice r8 \voiceOne d,8 | % 2
  e8 e e16 fis g e <d fis> <e g> <fis a>8 \oneVoice r8 \voiceOne fis8 | % 3
  g16 d a' d, b' cis d b cis a d a e' fis g e | % 4
  fis16 d g d a' d, g8 cis,\trill b16 cis a8 e' | % 5
  \tuplet 3/2 { fis16 g fis } <fis b>8-. \tuplet 3/2 { e16 fis e } <e a>8-.
  \tuplet 3/2 { d16 e d } fis8-. \tuplet 3/2 { b,16 cis b } d8-. | % 6
  \tuplet 3/2 8 { e,16 fis e fis gis fis gis a gis a b a }
  \tuplet 3/2 8 { b16 cis b cis d cis d e d } e16 b | % 7
  \tuplet 3/2 { cis16 d cis } a'16 cis, \tuplet 3/2 { d16 e d } b'16 d,
  cis16 a' e cis d b32 cis d16 b32 cis | % 8
  d16 fis32 e d16 fis32 e d16 gis32 a b16 gis32 a
  b16 d, cis e cis8\trill b16 a | % 9
  <e a>4 d8 <cis e> <d fis> <fis a> <b d>16 <g cis> <a d>8 | % 10
  e8 e e fis16 g fis g a8 <a d>16 <g cis> <a d>8 | % 11
  g8 g g <fis a>16 <g b> <d a'> e <d fis> <e g> a g a fis | % 12
  g16 d a' d, b' cis d b cis a d a e' fis g e | % 13
  fis16 d g d a' d, b'8 cis, b16 cis a8 \oneVoice r8 | % 14
  \voiceOne e8 a e'16 d e8 \oneVoice r8 c8 a'16 g a8 | % 15
  r8 \voiceOne d,8 g16 fis g8 r8 gis,8 d'16 cis <b d>8 | % 16
  cis8 d b'16 a b8 \oneVoice r8 \voiceOne e,8 a16 gis a e | % 17
  \tuplet 3/2 { fis16 g fis } <fis b>8-. \tuplet 3/2 { e16 fis e } <e a>8-.
  \tuplet 3/2 { d16 e d } fis8-. \tuplet 3/2 { b,16 cis b } d8-. | % 18
  \tuplet 3/2 8 { e,16 fis e fis gis fis gis a gis a b a }
  \tuplet 3/2 8 { b16 cis b cis d cis d e d } e16 b | % 19
  \tuplet 3/2 { cis16 d cis } a'16 cis, \tuplet 3/2 { d16 e d } b'16 d,
  cis16 a' e cis d b32 cis d16 b32 cis | % 20
  d16 fis32 e d16 fis32 e d16 gis32 a b16 gis32 a
  b16 d, cis e cis8\trill b16 a | % 21
  <e a>4 \oneVoice r8 \voiceOne <cis' e>8
  <e a>16 <d gis> <e a>8 \oneVoice r8 \voiceOne a,8 | % 22
  b8 b b16 cis d b
  <a cis> <b d> <cis e>8 \oneVoice r8 \voiceOne <a cis>8 | % 23
  d16 a e' a, fis' gis a fis gis e a e b' cis d b | % 24
  cis16 b32 a d16 cis32 b cis16 a e gis a4 a,8 e | % 25
  fis8 fis <cis' e>16 <b d> <cis e>8 b8 fis <cis' e>16 <b d> <cis e>8 | % 26
  ais8 fis <cis' e>16 <b d> <cis e>8 b8 fis b fis' | % 27
  b16 ais b8 \oneVoice r8 \voiceOne b,8 cis cis cis16 d e cis | % 28
  <b d>16 <cis e> <d fis>8 cis8 ais b fis cis'16 d e8 | % 29
  <fis, ais>8 <fis b>8~ <fis b> fis'16 cis \tuplet 3/2 { d16 e d } b'16 d,
  \tuplet 3/2 { e16 fis e } cis'16 e, | % 30
  d16 b' fis d e cis32 d e16 cis32 d
  e16 g32 fis e16 g32 fis e16 cis'32 d e16 cis32 d | % 31
  cis16 e, d fis d8\trill cis16 b b8 fis' <b d>16 <ais cis> <b d>8 | % 32
  e,,8 e e fis16 g fis g a8 <a d>16 <g cis> <a d>8 | % 33
  g8 g g <fis a>16 <g b> <d a'> e <d fis> <e g> a g a fis | % 34
  g16 d a' d, b' cis d b cis a d a e' fis g e | % 35
  fis16 d g d a' d, b'8 cis, b16 cis a8 \oneVoice r8 \voiceOne | % 36
  r8 a <fis' a>16 <e g> <fis a>8 r8 b,8 <d fis>16 <cis e> <d fis>8 | % 37
  r8 b8 g'16 fis g8 r16 e16 cis a g' e32 fis g16 e32 fis | % 38
  g16 b32 a g16 b32 a g16 cis32 d
  e16 cis32 d e8 <e,, a> <a cis>4 | % 39
  \oneVoice r8 \voiceOne b8 <g a>4 fis16 g a g fis8 a | % 40
  d16 cis d8 \oneVoice r8 \voiceOne d,8 e e e16 fis g e | % 41
  fis16 g a8 \oneVoice r8 \voiceOne fis8 g g g16 a b g | % 42
  a16 b c8 \oneVoice r8 \voiceOne a8 \tuplet 3/2 { b16 a b } e8-.
  \tuplet 3/2 { a,16 g a } d8-. | % 43
  \tuplet 3/2 { g,16 fis g } b8-. \tuplet 3/2 { e,16 d e } g8-. g2~ | % 44
  g4. \voiceOne a16 e
  \tuplet 3/2 { fis16 g fis } d'16 fis, \tuplet 3/2 { g16 a g } e'16 g, | % 45
  fis16 d' a fis g e32 fis g16 e32 fis
  g16 b32 a g16 b32 a g16 cis32 d e16 cis32 d | % 46
  e16 g fis a fis8 e16 d d4 \oneVoice r8 \voiceOne a'8 | % 47
  d16 cis d8 \oneVoice r8 \voiceOne d,8 e e e16 fis g e | % 48
  <d fis>16 <e g> <fis a>8 \oneVoice r8 \voiceOne <a, c>8
  <g b>8 <g b> b16 dis e b | % 49
  cis16 d e8 e, g fis fis fis16 g a fis | % 50
  g16 d a' d, b' cis d b cis a d a e' fis g e | % 51
  fis16 d g d a' d, b'8 cis,8\trill b16 cis a8 e' | % 52
  \tuplet 3/2 { fis16 g fis } <fis b>8-.
  \tuplet 3/2 { e16 fis e } <e a>8-.
  \tuplet 3/2 { d16 e d } <d g>8-.
  \tuplet 3/2 { cis16 d cis } <cis fis>8-. | % 53
  \tuplet 3/2 { b16 cis b } <b e>8-. \tuplet 3/2 { a16 b a } <a d>8-.
  g16 e32 fis g16 e32 fis g16 b32 a g16 b32 a | % 54
  g16 cis32 d e16 cis32 d e16 g32 fis e16 g32 fis
  e16 cis d a' fis8\trill e16 d | % 55
  d4 \oneVoice r4 r2
}

trebKeybB = \relative fis' {
  \voiceTwo
  s2 fis16 e fis8 s8 a,8 | % 2
  <b d>8 <g d'> <a cis> <a cis> a16 b c8 s8 d8~ | % 3
  d16 d8 d16~ d8 g e16 a8 a16~ a8 a | % 4
  a16 d8 d8 d8. cis4 s8 <a cis>8 | % 5
  a8 b4 a8 r8 <fis d'>8 r8 <fis b>8 | % 6
  <e b' d>2. a8 e | % 7
  <e a>8 <cis' e> b~ <b d> <e, a> <e a> <e gis> <e gis> | % 8
  <e gis>8 <gis b> b e~ e a, <e a> <e gis> | % 9
  cis4 a8 g a d fis16 e fis8 | % 10
  <b, d>8 <g d'> <a cis> <a cis> <a d> d fis16 e fis8 | % 11
  <b, d>4 c c8 c16 b <c d>8 d | % 12
  b8 <c fis> <d g> <fis b> e g16 fis e8 a | % 13
  a8 <a cis> a d <e, a> <d gis> <e a> s8 | % 14
  cis16 b cis b a'8 r8 s2 | % 15
  s8 g8 <b d>16 <a c> <b d>8 e,16 d e8 gis8 e16 fis | % 16
  gis16 fis <gis d'~>8 d'4 s8 a8 <cis e>16 <b d> <cis e>8 | % 17
  a8 b4 a8 r8 <fis d'>8 r8 <fis b>8 | % 18
  <e b' d>2. a8 e | % 19
  <e a>8 <cis' e> b~ <b d> <e, a> <e a> <e gis> <e gis> | % 20
  <e gis>8 <gis b> b e~ e a, <e a> <e gis> | % 21
  cis4 s8 a'8 cis16 b cis8 s8 e,8 | % 22
  <fis a>8 <d a'> <e gis> <e gis> e16 fis g8 s8 e8 | % 23
  a16 a8 a16~ a8 fis' b,16 e8 e16 d8 e8 | % 24
  e8 d fis <gis, b> cis4 e,8 a, | % 25
  cis16 b ais8 ais'4 <d, fis>8 d g4 | % 26
  cis,8 ais fis' ais fis d fis d' | % 27
  <d g>16 <cis fis> <d g>8 s8 <g, b>8 <g b> <g b> <fis ais> <fis ais> | % 28
  fis8 b fis cis <d fis> <b d> <e g> <g cis> | % 29
  cis,8 d cis <fis cis'> <fis b> d' cis e | % 30
  d8 b <fis ais> fis ais cis ais fis' | % 31
  fis8 <fis, b> <fis b> <fis ais> d <b' d> fis'16 e fis8 | % 32
  <b,, d>8 <g d'> <a cis> <a cis> <a d> d fis16 e fis8 | % 33
  <b, d>4 c c8 c16 b <c d>8 d | % 34
  b8 <c fis> <d g> <fis b> e g16 fis e8 a | % 35
  a8 <a cis> a d <e, a> <d gis> <e a> s8 | % 36
  <a, dis>8 <dis fis> dis'4 <b, dis fis>8 <dis fis> b'4 | % 37
  <e, g>8 <e g> <b' e>16 <a dis> <b e>8 <a cis>8 <e a> <a cis>4 | % 38
  r8 <cis e>8 <cis e>16 <d g> <e a>8 s2 | % 39
  s8 g,16 fis e8 <cis e> d <d fis> d <d fis> | % 40
  <fis b>16 <e a> <fis b>8 s8 <fis, d'>8 <a d> <b d> <a cis> <a cis> | % 41
  <a d>16 <b e> <c fis>8 s8 <a d>8 <b d> <b d> <d g> <d g> | % 42
  <d fis>16 g <fis a>8 s8 <d fis>8 <d g> <e b'>-. r8 <fis a>-. | % 43
  r8 <g e'>8-. r8 <b, e>8-. <e g>2~ | % 44
  <e g>4. <cis e>8 <a d> <fis' a> <a, e'> <g' a> | % 45
  fis8 d cis cis <a cis> <cis e> <cis e> <a' cis> | % 46
  <e a>8 d' <fis, d'> <a e> <fis a>4 s8 d'8 | % 47
  fis16 e fis8 s8 a,8 <b d> <g d'> <a cis> <a cis> | % 48
  a16 b c8 s8 fis,8 d d <d g>16 <fis a> <g b>8 | % 49
  e16 fis g8 a, <cis e> <a d> <a d> d <d fis> | % 50
  r16 d8 d16~ d8 g e16 a8 a16~ a8 a | % 51
  a16 d8 d d16 b8 <e, a>4 <e a>8 <a cis> | % 52
  <a d>8 b4 a g fis8~ | % 53
  fis8 e4 d8 cis cis <b d> <b d> | % 54
  <a e'>8 <a' cis> cis16 b <cis e>8 r8 <a d>8 <a d> <g cis> | % 55
  <fis a>4 s4 s2
}

bassKeybA = \relative b {
  \clef "bass"
  \voiceOne
  s1*2 | % 3
  b8 a g b a a cis cis | % 4
  d8 d fis e e4~ e8 r8 | % 5
  s1 | % 6
  e2~ e4 s4 | % 7
  s4 e8 e s2 | % 8
  s4 gis8 gis e e r4 | % 9
  s1*2 | % 11
  s2 s4 r8 fis,8 | % 12
  s2 r8 a8 d16 cis b a | % 13
  s4 s8 e'8 s4 s8 <e, a>8 | % 14
  s8 s16 d'16 cis d cis b <a d>4 <fis a>8 <c' d> | % 15
  <c d>8 b r8 b8 gis b4 r8 | % 16
  r4 e8 gis, <d' e> cis r4 | % 17
  s1 | % 18
  e2~ e4 s4 | % 19
  s4 e8 e s2 | % 20
  s4 gis8 gis e e r4 | % 21
  s1*2 | % 23
  r8 e,8 d d' e4 e8 <gis b> | % 24
  a2 e,4 r4 | % 25
  s1*8 | % 33
  s2 s4 r8 fis8 | % 34
  s2 r8 a8 d16 cis b a | % 35
  s4 s8 e'8 s4 s8 <e, a>8 | % 36
  s1*2 | % 38
  s8 g8 e'16 d e8 s8 cis8 e16 d e8 | % 39
  s1*6 | % 45
  a,8 a a a s2 | % 46
  r8 d8 s4 s4 r8 fis8 | % 47
  a16 g a8 s4 s2 | % 48
  s4 d,8 r8 s2 | % 49
  s1 | % 50
  b8 a g b a a cis cis | % 51
  d8 d fis~ fis16 e s2 | % 52
  s1*2 | % 54
  s4 e16 d e8 s2 | % 55
  s1 \bar "|."
}

bassKeybB = \relative d {
  \clef "bass"
  \oneVoice
  r8 d8 d'16( cis16 d8) r8 d16 cis16 b8 fis8 | % 2
  g8 e8 a8 a,8 d,8 d'8 c'16( b16 c8) | % 3
  \voiceTwo
  b8 fis8 g8 e8 a8 fis8 cis8 a'8 | % 4
  d,8 b'8 fis8 g8 a8 b8 cis8 a8 | % 5
  \oneVoice
  d,8 d'8 cis,8 cis'8 b,8 b'8 a,8 a'8 | % 6
  \voiceTwo
  gis8( a8) b8( a8) gis8( fis8) e8( gis8) | % 7
  a8 e8 gis16( fis16 gis8) \oneVoice r8 e8 b'16( a16 b8) | % 8
  r8 e,8 \voiceTwo e'16( cis16 d8) gis,8 a8 e8 e,8 | % 9
  \oneVoice a8 a'16( g16) fis16( g16) fis16( e16)
  d8 d'16 cis16 b8 fis8 | % 10
  g8 e8 a8 a,8 d16( e16 fis16 e16) d8 c8 | % 11
  b16( c16 d16 c16) b8 g8 fis16( g16 a16 g16) \voiceTwo fis8 d8 | % 12
  \oneVoice g4 r8 g8 \voiceTwo a4 r8 cis8 | % 13
  d8 e8 fis8 g8 a,8( b8) cis8( b8) | % 14
  a'16( gis16) a16( b16) cis8 a8 fis16( g16) fis16( e16) d8 fis8 | % 15
  g16( a16) b16( a16) g8 fis8 e16( fis16) gis16( fis16) e8 d8 | % 16
  cis'16( d16) e16( d16) cis8 b8 a16( b16) cis16( b16) a4 | % 17
  d,8 d'8 cis,8 cis'8 b,8 b'8 a,8 a'8 | % 18
  gis8( a8) b8( a8) gis8( fis8) e8( gis8) | % 19
  a8 e8 gis16( fis16 gis8) \oneVoice r8 \voiceTwo e8 b'16( a16 b8) | % 20
  \oneVoice r8 \voiceTwo e,8 e'16( cis16 d8) gis,8 a8 e8 e,8 | % 21
  \oneVoice r8 \voiceTwo a8 a'16( gis16 a8)
  \oneVoice r8 \voiceTwo a16 gis16 fis8 cis8 | % 22
  d8 b8 e8 e,8 a'8 a,8 g'16( fis16 g8) | % 23
  fis8 cis8 d8 b'8 e8 cis8 gis8 e'8 | % 24
  a,8 fis8 d8 e8 a,8 b8 cis8 b8 | % 25
  \oneVoice
  ais16( gis16 fis16 gis16) ais8 fis8 b8 a8 g8 e8 | % 26
  fis8 fis'16 gis16 ais8 fis8 d16( cis16 b16 cis16) d8 b8 | % 27
  e,8 g'16 fis16 e8 d8 cis8 d16 e16 fis8 fis,8 | % 28
  b8 b'8 ais8 fis8 b8 a8 g16( fis16 e16 g16) | % 29
  fis16( e16 d16 e16) fis8 fis,8 b8 fis'8 ais16( gis16 ais8) | % 30
  r8 fis8 cis'16( b16 cis8) r8 fis,8 fis'16( d16 e8) | % 31
  ais,8 b8 fis8 fis,8 b8 d'16 cis16 b8 fis8 | % 32
  g8 e8 a8 a,8 d16( e16 fis16 e16) d8 c8 | % 33
  b16( c16 d16 c16) b8 g8 fis16( g16 a16 g16) \voiceTwo fis8 d'8 | % 34
  \oneVoice g,4 r8 g8 \voiceTwo a4 r8 cis8 | % 35
  d8 e8 fis8 g8 a16( b16 cis16 b16) a8 g8 | % 36
  fis16( g16 a16 g16) fis8 e8 dis16( e16 fis16 e16) dis8 b8 | % 37
  e16( fis16 g16 fis16) e8 e,8 a8 e'8 a16( g16 a8) | % 38
  \oneVoice r8 \voiceTwo e8 cis'16( b16 cis8)
  \oneVoice r8 \voiceTwo a8 cis16( b16 cis8) | % 39
  \oneVoice r8 \voiceTwo e,16 d16 cis8 a8 d16( e16 fis16 e16) d8 cis8 | % 40
  b8 b'16( a16) g16( fis16 e16 d16) a'16( g16 fis16 g16) a8 a,8 | % 41
  d,8 d'8 c'16( b16 c8) b16( c16 d16 c16) b8 g8 | % 42
  d'8 d,16 e16 fis8 d8 g,8 g'8 fis,8 fis'8 | % 43
  e,8 e'8 d,8 d'8 cis8( d8) e8( d8) | % 44
  cis8( b8) a8( cis8) d8 a8 cis16( b16 cis8) | % 45
  \voiceTwo r8 a8 e'16( d16 e8) \oneVoice r8 a,8 a'16( fis16 g8) | % 46
  \voiceTwo cis,8 d8 \oneVoice a'8 a,8 d,8 d'8 \voiceTwo d'16( cis16 d8) | % 47
  r8 d16 cis16 \oneVoice b8 fis8 g8 e8 a8 a,8 | % 48
  d,8 d'16 e16 \voiceTwo fis8 d8 \oneVoice g16( a16 b16 a16) g8 g,8 | % 49
  g'8 cis,16 b16 cis8 a8 d,8 d'8 c'16( b16 c8) | % 50
  \voiceTwo b8 fis8 g8 e8 a8 fis8 cis'8 a8 | % 51
  d8 b8 fis8 g8 \oneVoice a,8 b8 cis8 a8 | % 52
  d8 d'8 cis,8 cis'8 b,8 b'8 a,8 a'8 | % 53
  g,8 g'8 fis,8 fis'8 e,8 e'8 d,8 d'8 | % 54
  cis8 a8 \voiceTwo g'16( fis16 g8) \oneVoice r8 fis16 d16 a'8 a,8 | % 55
  d,4 r4 r2
}

keybDynamics = {
  s1*8 | % 9
  s8 s16\p s16 s4 s2 | % 10
  s1*11 | % 21
  s8 s8\f s4 s2 | % 22
  s1*2 | % 24
  s2 s8 s8\p s4 | % 25
  s1*4 | % 29
  s4 s8 s8\f s2 | % 30
  s1 | % 31
  s2 s8 s16\p s16 s4 | % 32
  s1*14 | % 46
  s2 s4 s16\f s16 s8 | % 47
}

