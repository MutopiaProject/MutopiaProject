cello = \relative c {
  \barNumberCheck #1
  \solo
  R2.*11 |

  \barNumberCheck #12
  \tutti
  fis8 \p r r fis8 r r |
  fis8 r r gis8 r r |
  a8 r r a,8 r r |
  b8 r r b'8 r r |
  cis8 r r fis,8 \f r r |
  bis,8 r r b8 r r |
  ais4. b8( g' fis) |
  eis8( cis fis) d8( b cis) |

  \barNumberCheck #20
  \solo
  fis,4 r8 r4 r8 |
  R2.*4 |
  gis'2. \p |
  a4.( cis,4.) |
  d4.( dis4.) |
  e8 r r e8 r r |
  e8 r r e8 r r |
  e8 r r e8 r r |
  f8 \f r r f8 \p r r |
  e2.~ |
  e2.~ |
  e4 r8 r4 r8 |

  \barNumberCheck #35
  \tutti
  a4 a8 a4 a8 |
  gis4 gis8 gis4 e8 |
  a4 r8 r4 r8 |

  \barNumberCheck #38
  e8 e e << { s16 \solo } e8 >> r r |
  R2. |
  r4 r8 r8 r e8( \p |
  fis8) r r d8 r r |
  e4.( a,8) r r |
  R2. |
  R2. |
  r8 d( e) a,8 r r |
  r8 gis( a) e'8 r r |
  a,8( cis e) fis8 r r |
  d4.( dis4.) |
  e4 r8 e4 r8 |
  e4 r8 e4 r8 |

  \barNumberCheck #51
  a,8 \tutti r r b8 r r |
  cis8 r r cis8 r r |

  \barNumberCheck #53
  \solo
  fis4 r8 r4 r8 |
  R2.*14 |

  \barNumberCheck #68
  \tutti
  fis8 \p r r fis8 r r |
  fis8 r r gis8 r r |
  a8 r r a,8 r r |
  b8 r r b'8 r r |
  cis8 r r fis,8 \f r r |
  bis,8 r r b8 r r |
  ais4.( b8)( g' fis) |
  eis8( cis fis) d8( b cis) |

  \barNumberCheck #76
  \solo
  fis,8 r r fis'8 \p r r |
  fis8 r r gis8 r r |
  a8 r r a8 r r |
  b8 r r b,8 r r |
  cis2.~ |
  cis2.~ |
  cis2.~ |
  cis2. |

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
  fis8 r r \set Staff.midiInstrument = "cello" a,8-\arco r r |
  b8 r r cis8 r r |
  a8 r r d8 r r |
  b8 r r cis8 r r |
  a8 r r bis8 r r |
  cis8 r r cis8 r r |
  fis8 r r fis8 \pp r r |
  fis8 r r r4 r8 |
  \bar "|."

  \barNumberCheck #100
}
