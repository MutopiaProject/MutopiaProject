violinI = \relative c'' {
  \barNumberCheck #1
  \solo
  R2.*11 |

  \barNumberCheck #12
  \tutti
  r4 r8 a4.~ \p |
  a8( gis fis eis fis gis) |
  cis,4. cis'4.~ |
  cis8( b a gis a b) |
  eis,4. a'4.~ \f |
  a8( gis fis eis fis gis) |
  cis,4.~ cis8 b4~ |
  b8( cis) a~( a8 b) gis |

  \barNumberCheck #20
  \solo
  fis4 r8 r4 r8 |
  R2.*4 |
  d'2. \p |
  cis2. |
  b4.( cis4.) |
  cis4( b8) r4 r8 |
  r8 a( c) e8 r r |
  r8 gis,( b) e8 r r |
  e4( \f dis8) \p c4( a8) |
  gis4 r8 r4 r8 |
  R2. |
  R2. |

  \barNumberCheck #35
  \tutti
  R2.*3 |

  \barNumberCheck #38
  << { s4 s8 s16 \solo } R2. >> |
  R2. |
  r4 r8 r r d'( \p |
  cis8) r r b r r |
  r8 e( gis,) a8 r r |
  R2. |
  R2. |
  r8 fis'16( d) d( b) a8 r r |
  d,4( cis8) b8 r r |
  e4( d8) cis8 r r |
  r16 fis( a fis a fis) r16 fis( a fis a fis) |
  e8 cis' cis cis8 cis cis |
  b8 b b b8 b b |

  \barNumberCheck #51
  << { s8 \tutti } a4 >> r8 r4 r8 |
  R2. |

  \barNumberCheck #53
  \solo
  R2.*15 |

  \barNumberCheck #68
  \tutti
  r4 r8 a4.~ \p |
  a8( gis fis eis8 fis gis) |
  cis,4. cis'4.~ |
  cis8( b a gis a b) |
  eis,4. a'4.~ \f |
  a8( gis fis eis8 fis gis) |
  cis,4.~ cis8 b4~ |
  b8( cis) a~( a8 b) gis |

  \barNumberCheck #76
  \solo
  fis4 r8 r4 r8 |
  cis'4.( \p b4.~) |
  b8 a( gis fis gis a) |
  d,4. d'4. |
  gis,4 r8 r4 r8 |
  R2.*3 |

  \barNumberCheck #84
  % These next eight measures shared across violins.
  \set Staff.midiInstrument = "pizzicato strings"
  r16-\pizz fis r a r cis r a r fis r cis |
  r16 d r fis r a r fis r d r a |
  r16 b r d r cis r b r a r gis |
  r16 cis r fis r a r cis, r eis r gis |
  r16 fis r a r cis r a r fis r cis |
  r16 d r fis r a r fis r d r a |
  r16 b r d r g r b r g r b, |
  % Note: In the original score, this gis has a courtesy accidental,
  % even though the corresponding gis in bar 87 does not. We reproduce
  % this despite the inconsistency.
  r16 cis r fis r a r cis, r eis r gis! |

  \barNumberCheck #92
  \set Staff.midiInstrument = "violin"
  r16 a,(-\arco cis fis cis a) r16 cis( fis a fis cis) |
  r16 d( fis gis fis d) r16 cis( eis gis eis cis) |
  r16 cis( fis a fis cis) r16 d( fis a fis d) |
  r16 d( fis gis fis d) r16 cis( eis gis eis cis) |
  r16 cis( fis a fis cis) r16 dis( fis a fis dis) |
  r16 cis( fis a fis cis) r16 cis( eis gis eis cis) |
  cis8 r r cis'8 \pp r r |
  fis8 r r r4 r8 |
  \bar "|."

  \barNumberCheck #100
}
