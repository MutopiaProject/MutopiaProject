pianoTreble = \relative c' {
  \barNumberCheck #1
  \solo

  cis'8. d16 cis8 cis8( fis a) |
  a8( b,) gis'-. r8 b,4~( |
  b16 a) fis'4~ fis8( gis, d') |
  fis,4( eis32 fis gis fis eis8) r r |

  d'8. e16 d8 \grace { d32( e) } fis8. e16 d8 |
  bis4.( cis8) r r |
  cis16( b!) ais( b) ais( b) a'!( gis) fis( eis) d( cis) |
  b4( ais8) a8 r r |

  g8. a16 g8 g4 g8 |
  g8-. b-. d-. g-. b-. d-. |
  fis,,8. gis!16 fis8 <fis a>4( <eis gis>8) |

  \barNumberCheck #12
  \tutti
  fis4 r8 r4 r8 |
  R2.*7 |

  \barNumberCheck #20
  \solo
  % Note: In the source score, the slurs in bars 20 and 24 start 3/32
  % into the measure (on the cis32), while the slur in bar 22 starts
  % exactly on beat 2 (on the d32). We reproduce this notation here
  % despite the inconsistency.
  r8 r16. cis'32( \noBeam d cis bis cis a'8. gis16 fis8) |
  eis8(-. e-. dis-. d-. cis-. cis-.) |
  cis8[ r16. cis32] d( cis bis cis a'8. gis16 fis8) |
  fis16( eis) eis-. e-. dis-. d-. d( cis) cis-. cis-. cis-. cis-. |
  cis8[ r16. cis32]( d cis bis cis a'8. gis16 fis8) |
  fis16( e!) e8 e e8( fis d) |
  cis8[ r e] e8. d16 cis8 |
  b8( d fis a8)[ r cis,] |
  e8.( cis16 b8) r16 e,( gis b e b |
  d8 c) r r16 e,( a c e c |
  ais8 b) r r8 e, e'' |
  e4( dis8) r8 r16 a,( c a |
  e'4) r8 r r16 a( c a |
  e'4) r8 r r16 a,,( c a) |
  e'8(-. e-. e-.) dis16( e fis! e d b) |

  \barNumberCheck #35
  \tutti
  a4 r8 r4 r8 |
  R2. |
  R2. |

  \barNumberCheck #38
  r4 r8 r16 \solo ais( b cis d! dis |
  e4.) cis4 d!32( cis b cis |
  d8) d d d8 r r |
  r8 cis( a') r16 b,16( cis d e fis) |
  a,4( cis16 b a4) r8 |

  r4 r8 r32 b'32([ d cis] b[ a gis fis] e[ d cis b]) |
  r4 r8 r32 cis'32([ e d] cis[ b a gis] fis[ e d cis] |
  b8 d gis, a16) a( gis a b cis |
  e16 dis) d8( cis b8) r r |

  <<
    { e8~( e16 fis64 e d! e fis16 d cis8) } \\
    { cis4 b8 a } \\
  >>
  r8 r8 |
  b4( fis'8) fis8.( gis32 a gis16) fis-. |
  e8
  \shape #'((0 . -0.5) (2 . 2) (0 . 1) (0 . 0)) Slur
  e'4~( e16 cis a e cis a) |
  \afterGrace { b2. \startTrillSpan } { a32 \stopTrillSpan b } |

  \barNumberCheck #51
  << { s8 \tutti } a4 >> r8 r4 r8 |
  R2. |

  \barNumberCheck #53
  \solo
  cis8. d16 cis8 cis8( fis a) |
  a8( b,) gis'-. r8 b,4~( |
  b16 a) fis'4~ fis8 gis,( d') |
  fis,4( eis32 fis gis fis eis8) r r |

  d'8. e16 d8 \grace { d32 e } fis8. e16 d8 |
  bis4.( cis8) r r |
  cis16( b!) ais( b) ais( b) a'!( gis) fis( eis) d( cis) |
  b4( ais8 a8) r r |

  g8. a16 g8 g4 g8 |
  g8-. b-. d-. g-. b-. d-. |
  fis,,8.( gis!16 fis8) <fis a>4( <eis gis>8) |
  fis2. |
  g8. a16 g8 g g, g |
  g4. d'''4 g,,8 |
  fis8. gis!16 fis8 <fis a>4 <eis gis>8 |

  \barNumberCheck #68
  \tutti
  fis4 r8 r4 r8 |
  R2.*7 |

  \barNumberCheck #76
  \solo
  r4 r8 \grace a32 a'4. |
  b16( a) a( gis) gis( fis) fis( eis) eis( fis) fis( gis) |
  cis,4. cis'4.~ |
  % This is notated as a ``delayed turn'' between gis8 and a8 in the
  % original score, but it is not clear how to typeset that such that it
  % both appears correctly in print and plays correctly on MIDI.
  % Instead, we simply expand the turn to a sequence of 64th-notes.
  cis16( d32 cis b8 a gis16 a64 gis fis gis a8 b) |
  eis,4 cis8 a'4. |
  dis4. gis,4 r8 |
  cis4. fis,4 r8 |
  b8.[( cis32 d] cis[ b a gis] fis16 eis b'8 eis, |

  \barNumberCheck #84
  fis4) r8 r4 r8 |
  fis4. a,4. |
  gis4.~ gis4 d''8 |
  cis4. eis,4. |
  fis4 r8 r4 r8 |
  fis4. a,,4. |
  g4.~ g4 d'''8 |
  cis4. eis,4. |

  fis4 r8 r4 r8 |
  r4 r8 r16 cis16( cis') cis-. cis-. cis-. |
  cis8.( a16 fis8) r4 r8 |
  r4 r8 r16 cis16( cis') cis-. cis-. cis-. |
  cis8.( a16 fis8) r4 r8 |
  r16 cis16( cis') cis-. cis-. cis-. cis-. cis-. cis-. cis-. cis-. cis-. |
  fis,8 r <a cis,>( <fis a,>8) r <a cis,>( |
  <fis a,>8) r r r4 r8 |
  \bar "|."

  \barNumberCheck #100
}

pianoBass = \relative c {
  \barNumberCheck #1
  \solo

  <fis a>4 q8 q4 <fis cis'>8 |
  <fis d'>4. eis,8 r <eis' cis'>8 |
  <fis cis'>4 <a, cis>8 << { d4 b'8 } \\ b,4. >> |
  <cis a'>4.( <cis gis'>8) r r |

  <fis a>4 q8 <gis b>4 q8 |
  <a e'>4 q8 <fis a>4 q8 |
  <dis a'>4 q8 <eis gis>4 q8 |
  <fis cis'>4 q8 <d! fis>4 <d fis>8 |

  <g d b>4 q8 q4 q8 |
  q4 r8 r4 r8 |
  <a cis,>4 q8 <cis cis,>4 <b cis,>8 |

  \barNumberCheck #12
  \tutti
  <fis a>4 r8 r4 r8 |
  R2.*7 |

  \barNumberCheck #20
  \solo
  fis,8 r <fis' a>8 q4 q8 |
  <gis b>4 <fis a>8 <eis gis>4 q8 |
  <fis a>4 q8 q4 q8 |
  <gis b>4 <fis a>8 <eis gis>4 q8 |
  <fis a>4 q8 q4 q8 |
  <gis b>4 q8 q4 q8 |
  a4 a8 <a cis,>4 q8 |
  <d, fis>4 q8 <dis fis>4 q8 |
  <e a>4 <e gis>8 q4 q8 |
  <e a>4 q8 q4 q8 |
  <e gis>4 q8 q4 q8 |
  <f a>4 q8 q4 q8 |
  e8( gis b e, a c |
  e,8 gis b e, a c |
  e,4) r8 r4 r8 |

  \barNumberCheck #35
  \tutti
  R2.*3 |

  \barNumberCheck #38
  R2. |
  \tuplet 3/2 8 {
    % Alternately, each triplet (of which six per measure) can be
    % manually beamed together (e.g., `e[ cis a]`). This is done in the
    % original score, but I think that it's harder to read.
    e16( a cis e cis a e a cis e,16 a cis e cis a e a cis |
    e,16 gis b e b gis e gis b e,16 gis b e b gis e gis b) |
  }
  <a fis>4 r8 <b fis d>4 r8 |
  <<
    { cis4( d8) cis4 } \\
    { e,4. a4 } \\
  >> r8 |

  R2. |
  r4 r8 r8 r <fis a> |
  <d fis>4 <e d'>8 <a cis>4 r8 |
  r8 << e'8 { gis,8( a) } >> <gis e>8 r8 r8 |
  <a, cis>8( <cis e> <e gis>) <fis a>8 r r |
  d4 r8 dis4 r8 |
  e4 r8 e4 r8 |
  e4 r8 e4 r8 |

  \barNumberCheck #51
  a,8 \tutti r r r4 r8 |
  R2. |

  \barNumberCheck #53
  \solo
  <fis' a>4 q8 q4 <fis cis'>8 |
  <fis d'>4. eis,8 r <eis' cis'> |
  <fis cis'>4 <a, cis>8 << { d4 b'8 } \\ b,4. >> |
  <cis a'>4.( <cis gis'>8) r r |

  <fis a>4 q8 <gis b>4 q8 |
  <a e'>4 q8 <fis a>4 q8 |
  <dis a'>4 q8 <eis gis>4 q8 |
  <fis cis'>4 q8 <d! fis>4 <d fis>8 |

  <g d b>4 q8 q4 q8 |
  q4 r8 r4 r8 |
  <cis, a'>4 q8 <cis cis'>4 <cis b'>8 |
  <d a'>2. |
  <b d>4 q8 q4 q8 |
  q4 r8 r4 r8 |
  <cis a'>4 q8 <cis cis'>4 <cis b'>8 |

  \barNumberCheck #68
  \tutti
  <fis a>4 r8 r4 r8 |
  R2.*7 |

  \barNumberCheck #76
  \solo
  fis16^\legato a cis a cis a fis16 a cis a cis a |
  fis16 a cis a cis a gis b cis b cis b |
  a16 b eis b eis b a16 cis fis cis fis cis |
  b16 d fis d fis d b16 d gis d gis d |

  r16 cis,( eis gis cis cis, cis'4) r8 |
  r16 cis,,16( dis fis cis' cis, cis'4) r8 |
  r16 cis16( fis ais cis cis, cis'4) r8 |
  r16 cis,,16( fis gis cis cis, cis'4) r8 |

  \barNumberCheck #84
  fis4 r8 r4 r8 |
  d4 r8 r4 r8 |
  b4 r8 r4 r8 |
  cis4 r8 r4 r8 |
  fis4 r8 r4 r8 |
  d4 r8 r4 r8 |
  b4 r8 r4 r8 |
  cis4 r8 r4 r8 |

  fis4 r8 r4 r8 |
  r4 r8 cis4 r8 |
  a4 r8 r4 r8 |
  r4 r8 cis4 r8 |
  a4 r8 bis4 r8 |
  cis4 r8 cis4 r8 |
  fis8 r r fis8 r r |
  fis8 r r r4 r8 |
  \bar "|."

  \barNumberCheck #100
}
