violinII = \relative c'' {
  \barNumberCheck #1
  \solo
  R2.*11 |

  \barNumberCheck #12
  \tutti
  r16 a,( \p cis fis cis a) r16 a( cis fis cis a) |
  r16 a( cis fis cis a) r16 b( cis eis cis b) |
  r16 b( cis eis cis b) r16 a( cis fis cis a) |
  r16 d( fis b fis d) r16 b( d fis d b) |
  r16 b( cis gis' cis, b) r16 a( \f cis fis cis a) |
  r16 dis( fis gis fis dis) r16 gis( b d! b gis) |
  r16 cis,( e fis e cis) r16 b( d g d b) |
  r16 cis( eis gis! fis cis) r16 fis( d fis eis b) |

  \barNumberCheck #20
  \solo
  a4 r8 r4 r8 |
  R2.*4 |
  b'2. \p |
  a2.~ |
  a2. |
  a4( gis8) r4 r8 |
  r8 c,8( a') c8 r r |
  r8 b,( gis') gis8 r r |
  a4.( \fp dis,4.) |
  e4 r8 r4 r8 |
  R2. |
  R2. |

  \barNumberCheck #35
  \tutti
  R2.*3 |

  \barNumberCheck #38
  << { s4 s8 s16 \solo } R2. >> |
  R2. |
  r4 r8 r r gis( \p |
  a8) r r fis8 r r |
  r8 e( d) cis8 r r |
  R2. |
  R2. |
  r8 d'16( b) b( gis) a8 r r |
  b,4( a8) gis8 r r |
  cis4( b8) a8 r r |
  r16 a( fis' a, fis' a,) r16 a( fis' a, fis' a,) |
  a8 a' a a8 a a |
  a8 a a gis8 gis gis |

  \barNumberCheck #51
  << { s8 \tutti } a4 >> r8 r4 r8 |
  R2. |

  \barNumberCheck #53
  \solo
  R2.*15 |

  \barNumberCheck #68
  \tutti
  r16 a,( \p cis fis cis a) r16 a( cis fis cis a) |
  r16 a( cis fis cis a) r16 b( cis eis cis b) |
  r16 b( cis eis cis b) r16 a( cis fis cis a) |
  r16 d( fis b fis d) r16 b( d fis d b) |
  r16 b( cis gis' cis, b) r16 a( \f cis fis cis a) |
  r16 dis( fis gis fis dis) r16 gis( b d! b gis) |
  r16 cis,( e fis e cis) r16 b( d g! d b) |
  r16 cis( eis gis! fis cis) r16 fis( d fis eis b) |

  \barNumberCheck #76
  \solo
  a4 r8 r4 r8 |
  a'4.( \p gis4.~) |
  gis8 cis,( b a b cis) |
  b4. gis'4. |
  eis4 r8 r4 r8 |
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
  fis4 r8 r4 r8 |
  \set Staff.midiInstrument = "violin"
  d'4.-\arco b,4.~ |
  b8( a) a-. r4 r8 |
  d'4. b,4.~ |
  b8( a) a-. r4 r8 |
  a'4.( gis4.) |
  fis8 r r a8 \pp r r |
  cis8 r r r4 r8 |
  \bar "|."

  \barNumberCheck #100
}
