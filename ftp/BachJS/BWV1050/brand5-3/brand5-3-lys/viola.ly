\version "2.18.0"
\include "header.ly"

viola = \relative c'' {
  \clef alto  
  \key d \major
  \time 2/4

  % --Bar 1-- %
  R2*28 |

  % --Bar 29-- %
  r8 r16 a16 d8. a16 |
  \tuplet 3/2 { b8(a) g fis( g) a } |
  d, r e r |
  a, r e' r |

  % --Bar 33-- %
  \tuplet 3/2 { cis(  d) e fis( g) a | }
  \omit TupletNumber
  d, r a' r |
  fis r \tuplet 3/2 { a( g) a | }
  \tuplet 3/2 { fis( e) d } a' r |
  a r cis, r |
  d r e r |
  fis8. cis'16 a8. g16 |
  fis8. g16 a8. a16 |

  % --Bar 41-- %
  a8 r g r |
  fis r d r |
  d r a' r |
  fis r \tuplet 3/2 { e( cis a) | }
  \tuplet 3/2 { fis'( d a) g'(e cis) }
  fis r d r |


  % --Bar 47-- %
  fis r fis r |
  e r fis8. e16 |
  d8. g16 e8. a,16 |
  a8 r d r |
  d r fis r |
  b,2 ~ |
  b |

  % --Bar 54-- %
  a ~ |
  a |
  e' ~ |
  e |
  e8 r fis r |
  fis r e r |
  e r d r |

  %61
  d4 r |
  r8 r16 a' fis8. d16 |
  \tuplet 3/2 { d8( cis) b e( fis) g | }
  fis8. \noBeam a16 d8. a16 |
  \tuplet 3/2 { b8( a) g fis( g) a | }
  d, r d r |
  \tuplet 3/2 { d(c) b a(b) cis| }

  % --Bar 68-- %
  \tuplet 3/2 { b(d)cis b(d)cis | }
  b2 ~ |
  \tuplet 3/2 { b8 \noBeam gis a b gis a| }
  b4 ~ b8. gis'16 |
  a8. e16 a8 r |
  r8 r16 fis b8 r |
  r r16 a cis8 r |
  r4 d,8 r |

  %76
  d r a' r |
  fis8. g16 e8. fis16 |
  fis2 |
  R2*6 |

  %85
  R2 |
  R2 |
  r8 r16 b fis8. cis'16 |
  \tuplet 3/2 { d8( cis) b ais( b) cis| }
  a r r4 |
  R2*3 |

  %93
  R2*4 |


  % Bar 97

  r8 r16 fis cis'8. gis16 |
  \tuplet 3/2 { a8( gis) fis eis( fis) gis | }
  cis,8 r fis,_\pianissimoB r |
  \repeat unfold 6 { r4 fis8 r | }
  R2 |
  r4 fis'8_\forteB r |
  cis8 r r4 |
  r e8 r |
  b8 r r4 |
  R2*17 |
  r4 r8 r16 fis' |
  \tuplet 3/2 { fis8 e d } e4 ~ |
  \tuplet 3/2 { e8 d cis } b r |
  b r fis'4 ~ |
  \tuplet 3/2 { fis8 b, e } e r |
  e8 r b'4 ~ |
  \tuplet 3/2 { b8 e, a } a r |
  a8 r e4 ~ |
  \tuplet 3/2 { e8 a, d } a' r |
  e8 r b' r |
  a8 r cis r |
  fis,8 r d' r |
  cis8 r e r |
  a,8 r fis r |
  b8 r a r |
  d8 r gis, r |
  \tuplet 3/2 { a8( gis) fis e( fis) gis | }
  fis4 r8 b |
  b8. gis16 a8. a,16 |
  e'8 r e r |
  e8. \noBeam e16_\cantabile a8. e16 |
  \appoggiatura e( fis2) ~ |
  fis8. fis16
  \tuplet 3/2 { g!8( e) fis | } 
  \appoggiatura fis16( e2) ~ |
  e8. e16 a8. fis16 |
  \appoggiatura e( d2) ~ |
  \tuplet 3/2 { d8 e fis e( fis) d | }
  cis8 r r4 |
  R2 |
  r8 r16 b'_\piano e8. b16 |
  \tuplet 3/2 { c8( b) a g( a) b | }
  e,8 r r4 |
  R2 |
  r8 r16 fis b8. fis16 |
  \tuplet 3/2 { g8( fis) e d( e) fis | }
  b,8 r r4 |
  R2*13 |
  r4 fis |
  b4 r |
  r4 e, |
  a4 r |
  r8 r16 a' d8. a16 |
  \tuplet 3/2 { b8( a) g fis( g) a | }
  d,4 r |
  R2 |
  r8 r16 e a8. e16 |
  \tuplet 3/2 { fis8( e) d cis( d) e | }
  a,4 r |
  R2 |
  r8 r16 e' a8. e16 |
  cis2 ~ |
  \tuplet 3/2 { cis8 \noBeam cis d e( cis) d | }
  a8 r r4 |
  R2*5 |
  eis'8 r r4 |
  cis8 r r4 |
  b'8 r r4 |
  a8 r r4 |
  fis8 r r4 |
  cis8 r r4 |
  R2*17 |
  r8 r16 b fis'8. cis16 |
  \tuplet 3/2 { d8( cis) b ais( b) cis | }
  a8. fis'16
  \tuplet 3/2 { fis8( d) e | }
  \tuplet 3/2 { fis8( e) d e( d) cis | }
  b8 r r4 |
  R2*4 |
  r8 r16 g' fis8. e16 |
  d8 r fis r |
  d4 r |
  R2*28 |
  r8 r16 a' d8. a16 | 
  \undo \omit TupletNumber
  \tuplet 3/2 { b8( a) g fis( g) a | }
  d,8 r e r |
  a,8 r e' r |
  \tuplet 3/2 { cis8( d) e fis( g) a | } 
  \omit TupletNumber
  d,8 r a' r |
  fis8 r
  \tuplet 3/2 { a( g) a | }
  \tuplet 3/2 { fis8( e) d } a'8 r |
  a8 r cis, r |
  d8 r e r |

  %Bar 271
  fis8. cis'16 a8. g16 |
  fis8. g16 a8. a16 |
  a8 r g r |
  fis8 r d r |
  d8 r a' r |
  fis8 r
  \tuplet 3/2 { e( cis a) | }
  \tuplet 3/2 { fis'8( d a) g'( e cis) | }
  fis8 r d r |
  fis8 r fis r |
  e8 r fis8. e16 |
  d8. g16 e8. a,16 |
  a8 r d r |
  d8 r fis r |
  b,2 ~ |
  b |
  a ~ |
  a |
  e' ~ |
  e |
  e8 r fis r |
  fis8 r e r |
  e8 r d r |
  d4 r |
  r8 r16 a' fis8. e16 |
  \tuplet 3/2 { d8( cis) b e( fis) g | }
  fis8. \noBeam a16 d8. a16 |
  \tuplet 3/2 { b8( a) g fis( g) a | }
  d,8 r d r |
  \tuplet 3/2 { d8( c) b a( b) cis | }
  \tuplet 3/2 { b8( d) cis b( d) cis | }
  b2 ~ |
  \tuplet 3/2 { b8 \noBeam gis a b gis a | }
  b4 ~ b8. gis'16 |
  a8. e16 a8 r |
  r8 r16 fis b8 r |
  r8 r16 a cis8 r |
  r4 d,8 r |
  d8 r a' r |
  fis8. g16 e8. fis16 |
  fis2\fermata\bar "|."
}
