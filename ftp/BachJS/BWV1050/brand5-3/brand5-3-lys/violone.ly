\version "2.18.2"
\include "header.ly"

violone = \relative c {
  \tempo "Allegro."
  \clef bass
  \key d \major
  \time 2/4

  R2*28 |

  \repeat unfold 2 {
    % --Bar 28-- %
    r4 fis,8 r |
    g8 r a r |
    b8 r cis r |
    d8 r e r |

    % --Bar 33-- %
    fis8 r fis r |
    g8 r a r |
    b8 r a r |
    b8 r cis r |
    d8 r r4 |
    R2 |
    r8 r16 a d8. a16 |
    \tuplet 3/2 { b8( a) g fis( g) a } |
    \hide TupletNumber

    % --Bar 41-- %
    d,8 r e r |
    fis8 r fis, r |
    g8 r a r |
    b8 r cis r |
    d8 r e r |
    fis8 r g r |

    % --Bar 47-- %
    a8 r b r |
    cis8.\noBeam a16 d8. a16 |
    \tuplet 3/2 {
      b8( a) g fis( g) a |
      d,8( fis) e d( e) fis |
    }
    g8 r a r |
    b8 r b, r |
    r4 b'8 r |

    % --Bar 54-- %
    fis8 r fis, r |
    r4 fis'8 r |
    gis8 r gis, r |
    r4 gis'8 r |
    a8 r r4 |
    R2*3 |
    r8 r16 a, d8. a16 |
    \tuplet 3/2 { b8( a) g } a8. a16 |
    d,8 r r4 |
    R2 |
    r8 r16 g' d'8. a16 |
    \tuplet 3/2 { b8( a) g fis( gis) a } |

    % --Bar 68-- %
    gis8 r gis, r |
    r4 gis'8 r |
    gis8 r gis, r |
    r4 gis'8 r |
    a8 r r r16 fis |
    b8 r r r16 g |
    cis8 r r r16 a |
    d8 r fis, r |

    % --Bar 76-- %
    g8 r a r |
    \tuplet 3/2 { b8( a) g } a8. a,16 |
  }
  \alternative {
    {
      \tuplet 3/2 { d8( fis) e d( e fis) } |
      b,8 r r4 |
      R2*19 |

      % --Bar 99 -- %
      fis'8_\pianissimoB r r4 |
      fis,8 r r4 |
      \repeat unfold 6 { fis8 r r4 | }

      % --Bar 107 -- %
      R2*21 |

      % --Bar 128 -- %
      r4 a8_\forteB r |
      b8 r cis r |
      d8 r dis r |
      e8 r fis r |
      g8 r gis r |
      a8 r b r |
      cis8 r cis, r |

      % --Bar 135 -- %
      d8 r cis r |
      fis8 r fis, r |
      gis8 r gis' r |
      a8 r a, r |
      b8 r b' r |
      cis8 r cis, r |
      d8 r d' r |
      d8 r cis r |

      % 143
      d8 r e r |
      \tuplet 3/2 { fis8(e) d cis( dis) e }
      dis4 r8 b |
      e8. d!16 cis8. fis,16 |
      e8. d16 e8. e,16 |
      a8-\pianoB r r4 |
      \repeat unfold 6 { a8 r r4 | }

      %155
      a8 r r4 |
      R2*22 |

      %178
      r4 b |
      e,4 r |
      r4 a |
      d4 r |
      R2*16 |

      %198
      \repeat unfold 5 { cis2 ~ } |
      cis8 r r4 |
      %204
      R2*13 |
      %217
      fis,2 ~ |
      \repeat unfold 4 { fis2 ~ } |

      %222
      fis8. \noBeam b16 fis'8. a,16 |
      \tuplet 3/2 { b8( a) g ais( b) cis } |
      fis,4 ~ fis8. e16 |
      d8 r r4 |

      %226
      R2*4 |
      r8 r16 g' d8. e16 |
      fis8. e16 fis8. fis,16 |
      b4 r |
      d4 r |
      R2*27 |
    }
    {
      d2-\fermata \bar "|."
    }
  }
}
