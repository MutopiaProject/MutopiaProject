#(ly:set-point-and-click 'line-column )

\include "header.ly"

\version "2.18.0"
violone =  \relative c {
  \clef bass
  \key d \major
  \time 2/4

  \commonSettings

  \tripletsHide
  % --Bar 1-- %
  \repeat unfold 28 R2|

  % --Bar 28-- %
  r4 fis,8 r |
  g r a r |
  b r cis r |
  d r e r |

  % --Bar 33-- %
  fis r fis r |
  g r a r |
  b r a r |
  b r cis r |
  d r r4 |
  R2 |
  r8 r16 a d8. a16 |
  \tripletsShow
  \tuplet 3/2 { b8( a) g  fis ( g) a } |
  \tripletsHide
  % --Bar 41-- %
  d, r e r |
  fis r fis, r |
  g r a r |
  b r cis r |
  d r e r |
  fis r g r |

  % --Bar 47-- %
  a r b r |
  cis8.\noBeam a16  d8. a16 |
  \tuplet 3/2 {
    b8( a) g fis( g) a |
    d,( fis) e d(e ) fis |
  }
  g r a r |
  b r g, r |
  r4 b'8 r |

  % --Bar 54-- %
  fis r fis, r |
  r4 fis'8 r |
  gis r gis, r |
  r4 gis'8 r |
  a r r4 |
  R2*2|

  % --Bar 61-- %
  R2 |
  r8 r16 a, d8. a16 |
  \tuplet 3/2 { b8( a) g  }  a8. a16 |
  d,8 r fis r |
  R2 |
  r8. g16 d'8. a16 |
  \tuplet 3/2 { b8( a) g  fis( gis) a  } |

  % --Bar 68-- %
  gis' r gis, r |
  r4 gis'8 r |
  gis r gis, r |
  r4 gis'8 r |
  a r r r16 fis |
  b8 r r r16 g |
  cis 8 r r r16 a |
  d8 r fis, r |

  % --Bar 76-- %
  g r a r |
  \tuplet 3/2 { b( a) g  } a8. a,16 |
  \tuplet 3/2 { d8( fis) e  d( e fis )}|
  b, r r4 |
  \repeat unfold 6 {R2 |}

  % --Bar 86 -- %
  R2*8|
  % --Bar 93 -- %
  R2*5|
  % --Bar 99 -- %
  fis'8_\pianoissimoB r r4 |
  fis,8 r r4 |
  \repeat unfold 6{fis8 r r4 |}

  % --Bar 107 -- %
  %switch staff rests
  R2*21 |

  % --Bar 128 -- %

  r4 a8_\forteB r |
  b r cis r |
  d r dis r |
  e r fis r |
  g r gis r |
  a r b r |
  cis r cis, r  |

  % --Bar 135 -- %
  d r cis r |
  fis r fis, r |
  gis r gis' r |
  a r a, r |
  b r b' r |
  cis r cis, r |
  d r d' r |
  d r cis r |

  % 143
  d r e r |
  \tuplet 3/2 { fis(e) d cis( dis) e }
  dis4 r8 b |
  e8. d!16 cis8. fis,16 |
  e8. d16 e8. e,16 |
  a8-\pianoB r r4 |
  \repeat unfold 6 { a8 r r4 |}

  %155
  a8 r r4 |
  R2 * 22|

  %178
  r4 b |
  e, r |
  r a |
  d r |
  R2 * 16  |

  %198
  \repeat unfold 5 { cis2~|}
  cis8 r r4|
  %204
  R2*13 |
  %217
  fis,2~|
  \repeat unfold 4 { fis~|}

  %222
  fis8. \noBeam b16 fis'8. a,16 |
  %should beam down
  \tuplet 3/2 {b8( a) g ais(b) cis }|
  fis,4 ~ fis8. e16 |
  d8 r r4 |

  %226
  R2*4 |
  r8 r16 g' d8. e16|
  fis8. e16 fis8. fis,16 |
  b4 r |
  d r |

  %261
  R2 * 27 |
  r4 fis,8 r |
  g r a r |
  b r cis r |
  d r e r |
  fis r fis r |
  g r a r |

  %267
  b r a r |
  b r cis r |
  d r r4 |
  R2 |
  r8 r16 a d8. a16 |
  \tuplet 3/2 {b8( a) g fis( a ) b } |
  d, r e r |
  fis r fis, r |

  %275
  g r a r |
  b r cis r |
  d r e r |
  fis r g r |
  a r b r |

  %280
  cis8. \noBeam  a16 d8. a16 |
  \tuplet 3/2 {
    b8(a) g fis (g) a |
    d,( fis ) e d(e) fis
  }|
  g r a r |
  b r b, r |
  r4 b'8 r |
  fis r fis, r |
  r4 fis'8 r |

  %288
  gis r gis, r |
  r4 gis'8 r |
  a r r4 |
  R2*3|

  %294
  r8 r16 a, d8. a16 |
  \tuplet 3/2 {b8 (a ) fis } a8. a16|
  d,8 r r4 |
  r2 |
  r8 r16 g'16 d'8. a16 |
  \tuplet 3/2 {b8(a) g fis( gis) a }|
  gis r gis, r |
  r4 gis'8 r |

  %302
  gis r gis, r |
  r4 gis'8 r |
  a r r r16 fis |
  b8 r r r16 g |
  cis8 r r r16 a |
  d8 r fis, r |
  g r a r |
  \tuplet 3/2 {b(a ) g} a8. a,16 |
  d2-\fermata \bar "|."
}

