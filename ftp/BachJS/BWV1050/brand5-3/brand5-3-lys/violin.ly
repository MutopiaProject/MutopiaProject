\version "2.18.2"
\include "header.ly"

violin = \relative c'' {
  \tempo "Allegro."
  \clef violin
  \key d \major
  \time 2/4

  \repeat unfold 2 {
    R2*30 |
    r8 r16 d a'8. e16 |
    \tuplet 3/2 { fis8( e) d cis( d) e } |
    \omit TupletNumber

    % --Bar 33-- %
    \tuplet 3/2 { a,8( b) cis d( e) fis } |
    b,8 r cis r |
    \tuplet 3/2 { b8( d) fis fis( e) fis } |
    \tuplet 3/2 { d8( g) fis e( a) g } |
    fis8 r e r |
    e8 r d r |
    \tuplet 3/2 { cis8( d) e fis( g) a } |
    d,4 ~ d8. cis16 |

    % --Bar 41-- %
    d8 r cis r |
    d8 r a r |
    g8 r fis r |
    b8 r \tuplet 3/2 { cis,( e a) } |
    \tuplet 3/2 { d,8( fis a) a,( cis e) } |
    d8 r d' r |

    % --Bar 47-- %
    cis8 r b r |
    e8 r d8. cis16 |
    b8. d,16 fis8. e16 |
    d8 r a' r |
    g8 r cis, r |
    \tuplet 3/2 { fis8( d) e fis( d) e } |
    fis2 ~ |

    % --Bar 54-- %
    \tuplet 3/2 { fis8 \noBeam d e fis( d) e } |
    fis8. a16 \tuplet 3/2 { d8( cis) d } |
    b2 ~ |
    b2 |
    cis8 r cis r |
    b8 r b r |
    a8 r a r |

    % --Bar 61-- %
    b4 r |
    r8 r16 cis d8. cis16 |
    b8. b16 a8. a16 |
    a8 r r4 |
    r8 r16 g d'8. a16 |
    \tuplet 3/2 { b8( a) g fis( g) a } |
    d,8 r a' r |

    % --Bar 68-- %
    e2 ~ |
    \tuplet 3/2 { e8 \noBeam gis a b( gis) a } |
    b2 ~ |
    \tuplet 3/2 { b8 \noBeam gis a } b8. b16 |
    cis8 r r r16 fis |
    d8 r r r16 g |
    e8 r r r16 a |
    fis8 r a r |
    d,8 r cis r |
    b8. b16 a8. a16 |
  }
  \alternative {
    {
      a2 |
      R2*8 |

      % --Bar 87-- %
      r8 r16 b fis'8. cis16 |
      \tuplet 3/2 {
        d8( cis) b ais( b) cis |
        fis,8(-\pianissimo^"Solo" b d) d( cis d) | %\italics
        fis,8( b d ) d( cis d ) |
        g,!8( ais b) cis( ais b) |
        e,8( ais cis) cis( b cis) |
      }


      % \tuplet 3/2 { } |

      % --Bar 93 -- %
      % Bar 93
      \tuplet 3/2 { fis,8( b d) d( cis d) } |
      \tuplet 3/2 { e,8( g cis) cis( ais) b } |
      \tuplet 3/2 { cis8( ais) b fis( b) ais } |
      b8 r r4 |
      r8 r16 fis-\forte cis'8. gis16 |
      \tuplet 3/2 { a8( gis) fis eis( fis) gis } |
      \tuplet 3/2 { cis,8-\pianissimo^"Solo"( fis a) a( gis a) } |
      \tuplet 3/2 { cis,8( fis a) a( gis) a } |
      \tuplet 3/2 { d,!8( eis fis) gis( eis fis) } |
      \tuplet 3/2 { b,8( eis gis) gis( fis gis) } |
      \tuplet 3/2 { cis,8( fis a) a( gis a) } |
      \tuplet 3/2 { b,8( d gis) gis( eis fis) } |
      \tuplet 3/2 { gis8( eis fis) cis( fis ) eis } |
      fis8 r r4 |
      r4 a8-\forte r |
      gis8 r r4 |
      r4 gis8 r |
      fis8 r r4 |
      R2*3 |
      r4 cis'8 r |
      r4 d8 r |
      r4 e8 r |
      r4 fis8 r |
      R2*10 |
      r8 r16 cis fis8. cis16 |
      \tuplet 3/2 { d8( cis) b ais( b) cis } |
      \tuplet 3/2 { fis,8( b) d fis( e) fis } |
      \tuplet 3/2 { b,8( a) g } a4 ~ |
      \tuplet 3/2 { a8 g b } e8. b16 |
      \tuplet 3/2 { cis8( b) a gis( a) b } |
      \tuplet 3/2 { e,8( a) cis e( d) e } |
      \tuplet 3/2 { a,8( gis) fis } gis4 ~ |
      \tuplet 3/2 { gis8 fis a } d8. a16 |
      \tuplet 3/2 { b8( gis) b } e8. b16 |
      \tuplet 3/2 { cis8( a) cis } fis8. cis16 |
      \tuplet 3/2 { d8( b) d } gis8. d16 |
      \tuplet 3/2 { e8( cis) e } a8. e16 |
      \tuplet 3/2 { fis8 d fis } b8. fis16 |
      \tuplet 3/2 { gis8 fis e } a8. e16 |
      \tuplet 3/2 { fis8( e) d cis( d) e } |
      a,8 r cis r |
      b8 r r dis |
      e8. b16
      \tuplet 3/2 { e8( cis) a } |
      a8 r gis r |
      a8. \noBeam e16_\cantabile a8. e16 | \appoggiatura
      e16

      fis2 ~ |
      fis8. fis16
      \tuplet 3/2 { g!8( e) fis } |
      \appoggiatura

      fis16

      e2 ~ |
      e8. e16 a8. fis16 |
      \appoggiatura

      e16

      d2 ~ |
      \tuplet 3/2 { d8 e fis e( fis) d } |
      cis8 r r4 |
      R2 |
      r8 r16 b'_\piano e8. b16 |
      \tuplet 3/2 { c8( b) a g( a) b } |
      e,8 r r4 |
      R2 |
      r8 r16 fis b8. fis16 |
      \tuplet 3/2 { g8( fis) e d( e) fis } |
      b,8 r r4 |
      R2*13
      r8 r16 fis' a8. fis16 |
      b,4 r |
      r8 r16 e g8. e16 |
      a,4 r |
      r8 r16 a' d8. a16 |
      \tuplet 3/2 { b8( a) g fis( g) a } |
      d,4 r |
      R2 |
      r8 r16 e a8. e16 |
      \tuplet 3/2 { fis8( e) d cis( d) e } |
      a,4 r |
      R2 |
      r8 r16 e' a8. e16 |
      cis2 ~ |
      \tuplet 3/2 { cis8 \noBeam cis d e( cis) d } |
      a8 r r4 |
      R2*5
      b'8 r r4 |
      a8 r r4 |
      eis'8 r r4 |
      fis8 r r4 |
      fis8 r r4 |
      gis8 r r4 |
      R2*16
      r8 r16 cis, fis8. cis16 |
      \tuplet 3/2 { d8( cis) b ais( b) cis } |
      fis,4 ~ fis8. e16 |
      d8. d'16
      \tuplet 3/2 { cis8( d) b } |
      ais8. b16
      \tuplet 3/2 { cis8( d) e } |
      fis8 r r4 |
      R2*4
      r8 r16 b, b8. b16 |
      b8 r ais r |
      fis4 r |
    }
    {
      a2-\fermata \bar "|."
    }
  }




}
