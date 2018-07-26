flute = \relative c''' {
  \barNumberCheck #1
  \solo
  R2.*11 |

  \barNumberCheck #12
  \tutti
  R2. |
  R2. |
  r4 r8 cis4.~ \p |
  cis8( b a gis8 a b) |
  eis,4. cis'4. \f |
  dis4.( d4.) |
  cis4.~ cis8 b4~ |
  b8( cis) a~( a8 b) gis |

  \barNumberCheck #20
  \solo
  fis4 r8 r4 r8 |
  R2.*14 |

  \barNumberCheck #35
  \tutti
  e4. \p cis!4 d32( cis b cis) |
  d8 d d d8 r r |
  r4 r8 r8 r16 cis'( d dis) |

  \barNumberCheck #38
  e16( dis e dis e cis << { s16 \solo } b8) >> r r |
  e4. cis4 d32( cis b cis) |
  d8-. d-. d-. d8 r r |
  R2.*5 |
  r4 r8 \tuplet 3/2 8 { r16 d cis b a gis fis e d } |
  r4 r8 \tuplet 3/2 8 { r16 e' d cis b a gis fis e } |
  R2.*3 |

  \barNumberCheck #51
  r8 \tutti cis( cis') r8 d,( d') |
  r16. cis,32 cis'8( fis,) r16. b,32 b'8( eis,) |

  \barNumberCheck #53
  \solo
  fis4 r8 r4 r8 |
}
