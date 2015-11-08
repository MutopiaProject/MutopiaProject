\version "2.18.2"
\include "header.ly"

flute = \relative c'' {
  \tempo "Allegro."
  \clef treble
  \key d \major
  \time 2/4

  % --Bar 1-- %
  \repeat unfold 2 {
    R2 |
    R2 |
    r8 r16 d a'8. e16 |
    \onceShowTupletNumber
    \tuplet 3/2 { fis8 e d cis d e } |
    \omit TupletNumber

    %--Bar 5-- %
    a,8 r fis r |
    g8 r a r |
    \onceShowTupletNumber
    \tuplet 3/2 {
      b8 d fis fis e fis |
      d8 g fis e a g |
      fis8( a) g fis( a) g |
    }

    %--Bar 10--%
    fis8. b16 a8. g16 |
    fis 8. a,16 e'8. a,16 |
    fis'8 r gis r |
    a2 ~ |
    a2 ~ |
    a8 r gis r |
    a8 r b r |

    %--Bar 17--%
    e,8. e16 a8. e16 |
    \onceShowTupletNumber
    \tuplet 3/2 {
      fis8 e d cis d e |
      a,8( cis) b a( cis) b |
    }
    a2 ~ |
    \tuplet 3/2 { a8 cis b a( cis) b } |
    a2 ~ |
    a2 ~ |
    a2 |

    %--Bar 25--%
    \onceShowTupletNumber
    \tuplet 3/2 { gis8 a b } cis4 ~ |
    \tuplet 3/2 { cis8 fis e } d4 ~ |
    d8. b'16 cis,8. fis16 |
    \tuplet 3/2 { e8 d cis b cis d } |
    \tuplet 3/2 { cis8 b a } d4 ~ |
    \tuplet 3/2 { d8 cis b } a8. g16 |
    \tuplet 3/2 { fis8 e d } a' r |
    R2 |

    %--Bar 33--%
    r8 r16 a' d8. a16 |
    \tuplet 3/2 { b8 a g fis g a } |
    d,8 r cis r |
    d8 r e r |
    \tuplet 3/2 { d8 fis a a g a } |
    \tuplet 3/2 { fis8 b a gis cis b } |
    a4 ~ \tuplet 3/2 { a8 b cis } |
    \tuplet 3/2 { d8 cis b a b g } |

    %--Bar 41--%
    fis8 r g r |
    a8 r c, r |
    b8 r cis! r |
    d8 r \tuplet 3/2 { a( cis e) } |
    \tuplet 3/2 { a,8( d fis) cis( e g) } |
    a8 r b r |

    %--Bar 47--%
    a8 r g r |
    g8 r \tuplet 3/2 { fis g a } |
    d,4 ~ \onceShowTupletNumber \tuplet 3/2 { d8 e cis } |
    d8.\noBeam a'16 d8. a16 | % check beaming []
    \tuplet 3/2 {
      b8 a g fis g a |
      d,8 fis e d fis e |
    }
    d2 ~ |


    %--Bar 54--%
    \tuplet 3/2 { d8 \noBeam a' g fis a g } |
    fis2 |
    e2 ~ |
    e2 ~ |
    \undo \omit TupletNumber
    e4 ~ \tuplet 3/2 { e8 fis e } |
    d4 ~ \tuplet 3/2 { d8 e d } |
    cis4 \tuplet 3/2 { c8 d c } |

    %--Bar 61--%
    b4 g' ~ |
    \tuplet 3/2 { g8 cis, e fis g a } |
    \omit TupletNumber
    d,8. e16 cis8. d16 |
    d4 c |
    b4 a |
    \tuplet 3/2 { g8 a b a b \once \set suggestAccidentals = ##t c } |
    fis,4 d' ~ |

    %--Bar 68--%
    \tuplet 3/2 { d8 \noBeam fis e d fis e } |
    d2 ~ |
    \tuplet 3/2 { d8 \noBeam b cis d b cis } |
    d4 ~ d8. e16 |
    cis2 |
    d2 |
    e2 |
    fis8. \noBeam a16 d8. a16 |

    %--Bar 76-%
    \onceShowTupletNumber
    \tuplet 3/2 { b8( a) g fis( g) a } |
    d,8. e16 cis8. d16 |
  }
  \alternative {
    {
      d2 |
      r8 r16 fis-\cantabileB b8. fis16 | % \markup { }
      g2 ~ |
      g8. g16 \tuplet 3/2 { a8( fis) g } |
      fis2 ~ |
      fis8. fis16 b8. g16 |
      e2 ~ |

      %--Bar 85-%
      \tuplet 3/2 {
        e8 fis g fis g e |
        d8 b cis d fis e |
        fis8 e d cis d b |
        ais8 cis fis e d cis |
        \onceShowTupletNumber
        b8(^\piano d fis) fis(-\cantabileB e fis) |
        b,8( d fis) fis( e fis) |
        b,8( dis e) e( dis e) |
        ais,8( cis e) e( d! e) |
      }

      % --Bar 93-- %
      \tuplet 3/2 {
        b8( d fis) fis( e fis) |
        cis8( e g) g( fis g) |
        ais,8( fis) e' d( e) cis |
      }
      b8 r b r |
      cis8 r \tuplet 3/2 { b( a) b } |
      \tuplet 3/2 {
        cis8( b) a gis( fis) eis |
        fis8( cis' fis) fis( e fis) |
        a,8( cis fis) fis( eis fis) |
      }

      % --Bar 101-- %
      \tuplet 3/2 {
        b,8( cis d) b( cis a) |
        gis8( b eis) eis( dis eis) |
        a,8( cis fis) fis( eis fis) |
        d!8( b gis) eis( gis fis) |
        eis8( gis) fis eis( fis) gis |
      }
      a8 r r4 |
      \tuplet 3/2 { r8 a-\forte b cis e d } |
      e8 r r4 |
      \tuplet 3/2 { r8 gis, a b d cis | }

      %110
      d2\trill |
      cis2\trill |
      b2 ~ |
      \tuplet 3/2 { b8 \noBeam gis a b( gis) a }
      b2 |
      a4 a' ~ |
      a4 gis ~ |
      gis4 cis ~ |
      cis4 b8. a16 |

      %119
      gis2 ~ |
      gis4 fis8. e16 |
      d2 ~ |
      d4 cis 8. b16 |
      ais4 r |
      r8 r16 fis' cis'8. gis16 |
      \tuplet 3/2 { a8( gis) fis eis( fis) gis } |
      cis,4 fis ~ |
      %127
      fis8. gis16 eis8. fis16 |
      fis2 ~ |
      fis2 |
      r8 r16 fis b8. fis16 |
      \tuplet 3/2 {
        g!8( fis) e dis( e) fis |
        b,8( e) g b( a) b |
        e,8( d) a
      } d4 ~ |
      \tuplet 3/2 { d8 cis e } a8. e16 |

      %135
      \tuplet 3/2 { fis8 e d cis d e } |
      a,8. gis16 \tuplet 3/2 { fis8 a d } |
      d8. \tuplet 3/2 16 { cis32 b a } \tuplet 3/2 { gis8 b e } |
      e8. \tuplet 3/2 16 { d32 cis b } \tuplet 3/2 { a8 cis fis } |
      fis8. \tuplet 3/2 16 { e32 d cis } \tuplet 3/2 { b8 d gis } |
      gis8. \tuplet 3/2 16 { fis32 e d } \tuplet 3/2 { cis8 e a } |
      a8. \tuplet 3/2 16 { gis32 fis e } \tuplet 3/2 { d8 fis b } |
      \tuplet 3/2 { e,8 fis gis } a4 ~ |

      %143
      a2 ~ |
      a2 ~ |
      \tuplet 3/2 {
        a8 gis fis b cis a |
        gis8( fis e)
      } a8. d,16 |
      cis8 r b\trill r |
      \tuplet 3/2 {
        a8(-\piano cis e) e( d e) |
        a,8( cis e) e( d e) |
        a,8( cis d) d( cis d) |

        %151
        gis,8( b d) d( cis d) |
        a8( cis e) e( d e) |
        b8( d fis) fis( e fis) |
        gis,8( e) d' cis( d) b |
      }
      a8 r r4 |
      R2 |
      r8 r16 b-\pianoB e8. b16 |
      \tuplet 3/2 { c8 b a g a b } |

      %159
      e,8 r r4 |
      R2 |
      r8 r16 fis b8. fis16 |
      \tuplet 3/2 { g8( fis) e d( e) fis | }
      b8 r r4 |
      R2*13 |


      %177
      r8 r16 cis fis8. cis16 |
      dis4 r |
      r8 r16 b e8. b16 |
      cis4 r |
      r8 r16 a d8. a16 |
      \tuplet 3/2 { b8( a) g fis( g) a } |
      d,4 r |
      R2 * 5 |

      %189
      \tuplet 3/2 { e'8(-\piano cis) d e( cis) d } |
      e2 ~ |
      \tuplet 3/2 { e8 \noBeam g fis e( g) fis } |
      e8 r r4 |

      %193
      r8 r16 fis b4 ~ |
      b8. e,16 a4 ~ |
      a8. b16 gis4 ~ |
      gis8. a16 fis8. gis16 |
      eis8. fis16 fis8.\trill eis32 fis |
      gis4 ~ gis8. cis,16 |
      a'2 ~ |
      \tuplet 3/2 { a8 gis fis gis a b } |
      cis2 ~ |
      %202

      \tuplet 3/2 { cis8 b a b cis d } |
      eis,4 e ~ |
      \tuplet 3/2 { e8 d cis d e fis } |
      cis4 c ~ |
      \tuplet 3/2 { c8 b a g fis e } |
      fis2 ~ |
      \tuplet 3/2 { fis8 e fis g a b } |
      c2 ~ |
      \tuplet 3/2 { c8 b c d e fis } |

      %211
      g4 ~ \tuplet 3/2 { g8 a g } |
      fis4 g ~ |
      \tuplet 3/2 { g8 fis e fis g e } |
      dis4 e ~ |
      \tuplet 3/2 { e8 d! cis d e cis } |
      b4 ~ \tuplet 3/2 { b8 cis b } |
      \tuplet 3/2 {
        ais8( gis) ais b cis d |
        e8( fis e) d( cis b) |

        %219
        %on triplets?
        ais8( gis ais) b( cis d) |
      }
      cis4 ~ \tuplet 3/2 { cis8( d e ) } |
      \tuplet 3/2 { d8( e fis) } e4 ~ |
      e8. d16 cis4 ~ |
      \tuplet 3/2 { cis8 ais b } fis'8. cis16 |
      \tuplet 3/2 { d8( cis)b ais(b) cis } |
      fis,4 b ~ |
      b4 cis ~ |
      cis4 d ~ |
      d4 e ~ |
      e8. g16 fis8. e16 |
      fis8. e16 fis8. g16 |
      d8 r cis\trill r |
      b4 r |
      %233
    }
    {
      d2\fermata \bar "|." |
    }
  }
}
