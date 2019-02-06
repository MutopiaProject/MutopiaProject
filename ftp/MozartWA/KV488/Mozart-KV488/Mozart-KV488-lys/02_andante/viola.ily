viola = \relative c' {
  \barNumberCheck #1
  \solo
  R2.*11 |

  \barNumberCheck #12
  \tutti
  cis,2.~ \p |
  cis2.~ |
  cis2. |
  fis4. gis4.~ |
  gis4. fis4. \f |
  bis4.( b4.) |
  ais4. b8( g fis) |
  eis8( cis fis) d'( b cis) |

  \barNumberCheck #20
  \solo
  fis,4 r8 r4 r8 |
  R2.*4 |
  e'2.~ \p |
  e2. |
  fis2. |
  e8 r r e8 r r |
  e8 r r e8 r r |
  e8 r r e8 r r |
  c4.( \fp a4.) |
  b4 r8 r4 r8 |
  R2. |
  R2. |

  \barNumberCheck #35
  \tutti
  R2.*3 |

  \barNumberCheck #38
  << { s4 s8 s16 \solo } R2.*2 >> |
  r4 r8 r8 r b( \p |
  a8) r r d8 r r |
  r8 cis( b) a8 r r |
  R2. |
  R2. |
  r8 fis'( e) e8 r r |
  e,2.~ |
  e4( gis8) a r r |
  b4.( c4.) |
  cis!8 e e e8 e e |
  e8 e e <e d>8 q q |

  \barNumberCheck #51
  << { s8 \tutti } <e cis>4 >> r8 r4 r8 |
  R2. |

  \barNumberCheck #53
  \solo
  R2.*15 |

  \barNumberCheck #68
  \tutti
  cis,2.~ \p |
  cis2.~ |
  cis2. |
  fis4. gis4.~ |
  gis4. fis4. \f |
  bis4.( b4.) |
  ais4. b8( g fis) |
  eis8( cis fis) d'( b cis) |

  \barNumberCheck #76
  \solo
  fis,4 r8 r4 r8 |
  cis'4.( \p eis~) |
  eis4.( fis4.) |
  fis,4. b4. |
  cis4 r8 r4 r8 |
  R2.*3 |

  \barNumberCheck #84
  \set Staff.midiInstrument = "pizzicato strings"
  fis8-\pizz a cis a8 fis cis |
  d8 fis a fis8 d a |
  b8 d cis b8 a gis |
  cis8 fis a cis,8 eis gis |
  fis8 a cis a8 fis cis |
  d8 fis a fis8 d a |
  b8 d g b8 g b, |
  % Note: In the original score, this gis has a courtesy accidental,
  % even though the corresponding gis in bar 87 does not. We reproduce
  % this despite the inconsistency.
  cis8 fis a cis,8 eis gis! |

  \barNumberCheck #92
  fis4 r8 r4 r8 |
  \set Staff.midiInstrument = "viola"
  b4.-\arco gis,4.~ |
  gis8( fis) fis-. r4 r8 |
  b'4. gis,4.~ |
  gis8( fis) fis-. r4 r8 |
  cis'4.( b4.) |
  a8 r r fis'8 \pp r r |
  a8 r r r4 r8 |
  \bar "|."

  \barNumberCheck #100
}
