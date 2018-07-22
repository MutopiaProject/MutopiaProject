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
}
