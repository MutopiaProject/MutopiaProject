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
  R2. |
}
