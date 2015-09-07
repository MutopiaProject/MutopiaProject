\version "2.18.0"
\include "header.ly"

cello = \relative c {
  \clef bass
  \key d \major
  \time 2/4

  R2*28 |
  \repeat unfold 2 {
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
    \tuplet 3/2 { b8( a) g fis( g) a | }
    \hide TupletNumber

    % --Bar 41-- %
    d, r e r |
    fis r fis, r |
    g r a r |
    b r cis r |
    d r e r |
    fis r g r |

    % --Bar 47-- %
    a r b r |
    cis8. \noBeam a16 d8. a16 |
    \tuplet 3/2 {
      b8( a) g fis( g) a |
      d,( fis) e d( e) fis |
    }
    g r a r |
    b r b, r |
    r4 b'8 r |

    % --Bar 54-- %
    fis r fis, r |
    r4 fis'8 r |
    gis r gis, r |
    r4 gis'8 r |
    a r fis r |
    b, r e r |
    a, r d r |

    % --Bar 61-- %
    g,4 r |
    r8 r16 a d8. a16 |
    \tuplet 3/2 { b8( a) g } a8. a16 |
    d,8 r fis r |
    g r c r |
    b8. \noBeam g'16 d'8. a16 |
    \tuplet 3/2 { b8( a) g fis( gis) a } |
    % --Bar 68-- %
    gis r gis, r |
    r4 gis'8 r |
    gis r gis, r |
    r4 gis'8 r |
    a r r r16 fis |
    b8 r r r16 g |
    cis8 r r r16 a |
    d8 r fis, r |

    % --Bar 76-- %
    g r a r |
    \tuplet 3/2 { b( a) g } a8. a,16 |
  }
  \alternative {
    {
      \tuplet 3/2 { d8( fis) e d( e fis) } |
      b, r r4 |
      \repeat unfold 6 { b8 r r4 | }

      % --Bar 86 -- %
      r8 r16 fis' \tuplet 3/2 {
        b8( d) cis |
        d( cis) b ais( g) cis |
      }
      fis,4 ~ \tuplet 3/2 {
        fis8 g e |
        d( cis b)
      } r4 |
      \repeat unfold 6 { b8 r r4 | }

      % --Bar 96 -- %
      r8 r16 fis' \tuplet 3/2 {
        b8( a) gis |
        a( gis) fis eis( fis) gis |
      }
      cis,4 ~ \tuplet 3/2 {
        cis8 d b |
        a( gis fis)
      } r4 |
      \repeat unfold 7 { fis8 r r4 | }

      % --Bar 107 -- %
      R2*21 |

      % --Bar 128 -- %
      r4 a8_\forteB r |
      b r cis r |
      d r dis r |
      e r fis r |
      g r gis r |
      a r b r |
      cis r cis, r |

      % --Bar 135 -- %
      d r e r |
      fis r fis, r |
      gis r gis' r |
      a r a, r |
      b r b' r |
      cis r cis, r |
      d r d' r |
      d r cis r |

      % --Bar 143 -- %
      d r e r |
      \tuplet 3/2 { fis( e) d cis( dis) e | }
      dis4 r8 b |
      e8. d!16 cis8. fis,16 |
      e8. d16 e8. e,16 |
      a8_\pianoB r a' r |
      \repeat unfold 6 { a, r a' r | }

      % --Bar 155 -- %
      a, r r4 |
      R2 * 22 |

      % --Bar 178 -- %
      r4 b |
      e, r |
      r a |
      d, r |
      R2 * 10 |

      % --Bar 192 -- %
      r4 r8 a' |
      d r r4 |
      cis8 r r4 |

      % --Bar 195 -- %
      b8 r r4 |
      a8 r r4 |
      gis8 r fis r |
      \repeat unfold 5 { cis'8 r r4 | }

      % --Bar 203 -- %
      cis'8 r cis, r |
      fis8 r r4 |
      fis8 r fis, r |
      g8 r r4 |
      a8 r b r |
      e,8 r r4 |
      a8 r d r |
      b r g r |


      % --Bar 211 -- %
      e r a r |
      d, r g r |
      d' r c r |
      b2 ~ |
      b8. \noBeam fis'16 b8. fis16 |
      g8. fis16 g8. e16 |
      fis2 ~ |
      fis2 ~ |

      % --Bar 219 -- %
      \repeat unfold 3 { fis2 ~ | }
      % --Bar 222 -- %
      fis8. \noBeam b,16 fis'8. a,16 |
      %should beam down
      \tuplet 3/2 { b8( a) g ais( b) cis | }
      fis,4 ~ \tuplet 3/2 { fis8 fis' e | }
      d r r4 |

      % --Bar 226 -- %
      R2*4 |
      r8 r16 g d8. e16 |
      fis8. e16 fis8. fis,16 |
      b4 r |
      d r |
      R2*27 |
    }
    {
      d2\fermata \bar "|."
    }
  }



}

