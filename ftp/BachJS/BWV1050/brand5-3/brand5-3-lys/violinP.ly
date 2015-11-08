\version "2.18.2"
\include "header.ly"

violinP = \relative c'' {
  \tempo "Allegro."
  \clef violin
  \key d \major
  \time 2/4

  \repeat unfold 2 {
    % --Bar 1-- %
    r8 r16 a d8. a16 |
    \undo \omit TupletNumber
    \tuplet 3/2 { b8( a) g fis( g) a } |
    d,8 r cis r |
    d8 r e r |
    \tuplet 3/2 { fis8( a) d d( cis) d } |
    \tuplet 3/2 { b8( e) d cis( fis) e } |
    d8 r a r |
    b8 r cis r |

    % --Bar 9-- %
    \tuplet 3/2 { d8( fis) e d( fis) e } |
    \omit TupletNumber
    d4 ~ d8. cis16 |
    \tuplet 3/2 { d8( e) fis e( fis) g } |
    \tuplet 3/2 { fis8( g) fis e( fis) d } |
    \tuplet 3/2 { cis8( e) d cis( d) e } |
    b8 r cis r |
    d2 ~ |
    d2 ~ |

    % --Bar 17-- %
    \tuplet 3/2 { d8 e d cis( d) e } |
    a,8. fis'16 e8. d16 |
    \tuplet 3/2 { cis8( e) d cis( e) d } |
    cis2 ~ |
    \tuplet 3/2 { cis8 e, d cis( e) d } |
    cis2 |
    b2 |
    fis''2 ~ |
    fis4
    \onceShowTupletNumber
    \tuplet 3/2 { e8 fis gis } |

    % --Bar 26-- %
    a4 ~ \tuplet 3/2 { a8 b a } |
    \tuplet 3/2 { gis8( fis) e } a4 ~ |
    a4 gis |
    a4 ~ \tuplet 3/2 { a8 g! fis } |
    e4 ~ \tuplet 3/2 { e8 d cis } |
    \tuplet 3/2 { d8( cis) b a( e') g } |
    fis8 r gis r |

    % --Bar 33-- %
    a8. \noBeam a16 d8. a16 |
    \tuplet 3/2 { b8( a) g fis( g) a } |
    d,8 r cis r |
    b8 r e r |
    \tuplet 3/2 { d8( fis) a a( g) a } |
    \tuplet 3/2 { fis8( b) a gis( cis) b } |
    a4 ~ \tuplet 3/2 { a8 b cis } |
    \tuplet 3/2 { d8( cis) b a( b) g } |

    %--Bar 41--%
    fis8 r g r |
    a8 r c, r |
    b8 r cis! r |
    d8 r \tuplet 3/2 { e,( a cis) } |
    \tuplet 3/2 { fis,8( a d) e,( a cis) } |
    d8 r g r |

    %--Bar 47--%
    fis8 r d r |
    a8 r a8. g16 |
    fis8. g16 a4 ~ |
    \tuplet 3/2 { a8 a g fis( g) a } |
    d,8. b'16 a8. g16 |
    \tuplet 3/2 { fis8( a) g fis( a) g } |
    fis2 ~ |

    %--Bar 54--%
    \tuplet 3/2 { fis8 \noBeam fis' e d( fis) e } |
    d2 ~ |
    d2 ~ |
    d2 |
    \tuplet 3/2 { cis8( b) a } a'4 ~ |
    \tuplet 3/2 { a8 b a } g4 ~ |
    \tuplet 3/2 { g8 a g } fis4 ~ |

    %--Bar 61--%
    \tuplet 3/2 { fis8 b, d e( fis) g } |
    \tuplet 3/2 { cis,8( e) cis a( b) cis } |
    fis,8. g16 e8. d16 |
    d2 ~ |
    d2 ~ |
    d2 ~ |
    d4 ~ \tuplet 3/2 { d8 e fis } |

    %--Bar 68--%
    e2 ~ |
    e2 ~ |
    e2 ~ |
    e4 e' ~ |
    e4 fis ~ |
    fis4 g ~ |
    g4 a ~ |
    a8. \noBeam a16 d8. a16 |

    %--Bar 76--%
    \tuplet 3/2 { b8( a) g fis( g) a } |
    d,8. e16 cis8. d16 |


  }
  \alternative {
    {
      d2 |

      \tuplet 3/2 {
        b8(-\piano d fis) fis( e fis) |
        b,8( d fis) fis( e fis) |
        b,8( dis e) e( dis e) |
        ais,8( cis e) e( d! e) |
        b8( d fis) fis( e fis) |
        cis8( e g) g( fis g) |
      }

      %--Bar 85--%
      \tuplet 3/2 { ais,8( fis) e' d( e)cis } |
      b8 r fis r |
      b8 r \tuplet 3/2 { cis d e } |
      \tuplet 3/2 { fis8( e) d cis( b) ais } |
      b8. fis'16-\forte b8. fis16 |
      g2 ~ |
      g8. g16 \tuplet 3/2 { a8( fis) g } |
      fis2 ~ |

      %--Bar 93 --%
      fis8. fis16 b8. g16 |

      % \tuplet 3/2 { } |
      \appoggiatura fis16 e2 ~ |
      \tuplet 3/2 {
        e8 fis g fis( g) e |
        d8( b cis) d( fis eis) |
        fis8( gis) a gis( a) fis |
        eis8( gis) cis b( a) gis  |
      }
      fis8. \noBeam cis16-\piano
      \tuplet 3/2 {
        cis8( b cis) |
        fis,8( a cis) cis( b cis)  |
        fis,8( ais b) b( ais b)  |
        eis,8( gis b) b( a b)  |
        fis8( a cis) cis( b cis)  |
        gis8 b d d cis d  |
        eis,8 cis b' a b gis  |
      }
      fis8 r r4 |
      \tuplet 3/2 { r8 fis-\forte gis a cis b } |
      cis4 r |
      \tuplet 3/2 { r8 e, fis gis b a } |
      b2\trill |
      a2\trill |
      gis2 ~ |
      \tuplet 3/2 { gis8 eis fis gis( eis) fis } |
      gis4 gis' ~ |
      gis4 fis ~ |
      fis4 b ~ |
      b4 a ~ |
      a4 d ~ |
      d4 cis8. b16 |
      a2 ~ |
      a4 gis8. fis16 |
      eis4 e ~ |
      e8. \noBeam cis16 fis8. cis16 |
      \tuplet 3/2 { d8( cis) b a( b) cis } |
      fis,4 b ~ |
      \tuplet 3/2 { b8 a gis a( b) cis } |
      \tuplet 3/2 { d8( b) a } gis8. fis16 |
      fis2 ~ |
      fis2 |
      r8 r16 fis' b8. fis16 |
      \tuplet 3/2 { g!8( fis) e dis( e) fis |}
      \tuplet 3/2 { b,8( e) g b( a) b } |
      \tuplet 3/2 { e,8( d) cis } d4 ~ |
      \tuplet 3/2 { d8 cis e } a8. e16 |
      \tuplet 3/2 { fis8( e) d cis d e } |
      a,8. gis16
      \tuplet 3/2 { fis8( a) d } |
      d8. \tuplet 3/2 16 { cis32 b a } \tuplet 3/2 { gis8 b e } |
      e8. \tuplet 3/2 16 { d32 cis b } \tuplet 3/2 { a8( cis) fis } |
      fis8. \tuplet 3/2 16 { e32 d cis } \tuplet 3/2 { b8( d) gis } |
      gis8. \tuplet 3/2 16 { fis32 e d } \tuplet 3/2 { cis8( e) a } |
      a8. \tuplet 3/2 { g32 fis e } \tuplet 3/2 { d8 fis b } |
      \tuplet 3/2 { e,8( fis ) gis } a4 ~ |
      a2 ~ |
      a2 ~ |
      \tuplet 3/2 { a8 gis fis b( cis) a } |
      \tuplet 3/2 { gis8( fis) e } a8. d,16 |
      cis8 r b\trill r |
      a8.-\piano cis16
      \tuplet 3/2 {
        cis8 b cis  |
        e,8( a cis) cis( b cis)  |
        fis,8( g! a) b( cis a)  |
        d,8( gis b) b( a b)  |
        e,8( a cis) cis( b cis)  |
        d,8( fis b) b( gis a)  |
        b8( gis ) a e( a) gis  |
      }
      a8 r r4 |
      R2 |
      r8 r16 b-\piano e8. b16 |
      \tuplet 3/2 { c8( b) a g a b } |
      e,4 r |
      R2 |
      r8 r16 fis b8. fis16 |
      \tuplet 3/2 { g8( fis) e d( e) fis } |
      b,4 r |
      R2*13 |
      r8 r16 a' cis8. a16 |
      fis4 r |
      r8 r16 g b8. g16 |
      e4 r |
      r8 r16 a d8. a16 |
      \tuplet 3/2 { b8( a) g fis( g) a } |
      d,4 r |
      R2 |
      r8 r16 e a8. e16 |
      \tuplet 3/2 { fis8( e) d cis( d) e } |
      a,4 r |
      R2 |
      \tuplet 3/2 { cis'8-\piano( a) b cis( a) b } |
      cis2 ~ |
      \tuplet 3/2 { cis8 \noBeam e d cis( e) d } |
      cis4 r |
      r4 r8 r16 b |
      e4 ~ e8. a,16 |
      d4 ~ d8. e16 |
      cis4 ~ cis8. cis16 |
      \tuplet 3/2 { \onceShowTupletNumber d8( cis) b \onceShowTupletNumber a( gis) fis } |
      e8. cis'16 gis'4 ~ |
      \tuplet 3/2 { gis8 fis eis fis( gis) a } |
      b2 ~ |
      \tuplet 3/2 { b8 a gis a b cis } |
      d2 ~ |
      \tuplet 3/2 { d8 cis b cis( d) e } |
      ais,4 b ~ |
      \tuplet 3/2 { b8 a! gis a b c } |
      dis,4 e ~ |
      \tuplet 3/2 { e8 fis e dis cis b } |
      g'2 ~ |
      \tuplet 3/2 { g8 fis, g a b c } |
      d2 ~ |
      \tuplet 3/2 { d8 c b } c4 ~ |
      \tuplet 3/2 { c8 b a b( c) a } |
      a4 a' ~ |
      \tuplet 3/2 { a8 g fis g( a) g } |
      fis2 ~ |
      \tuplet 3/2 { fis8 e d } e4 ~ |
      \tuplet 3/2 { e8 fis e d( cis) b } |
      \tuplet 3/2 { ais8( gis ais) b( cis d) } |
      \tuplet 3/2 { e8( fis e) d( cis b) } |
      ais4 ~
      \tuplet 3/2 { ais8 b cis } |
      \tuplet 3/2 { b8( cis d) cis( d e) } |
      ais,8. b16
      \onceShowTupletNumber \tuplet 3/2 { cis8( d e) } |
      \onceShowTupletNumber \tuplet 3/2 { fis8( ais,) b } fis'8. cis16 |
      \tuplet 3/2 { d8( cis) b ais( b) cis } |
      fis,2 |
      gis2 |
      ais2 |
      b2 |
      cis2 |
      d8. e16 fis8. g16 |
      d8 r d\trill r |
      b4 r |
    }
    {
      d2\fermata \bar "|."
    }
  }
}
