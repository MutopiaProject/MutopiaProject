cello = \relative c {
  \barNumberCheck #1
  \tutti
  a'4 \p a a a |
  a4 a a a |
  a4 r4 r2 |
  r4 d,4 a' a, |
  r4 cis'( b e,) |
  r4 fis( d gis,) |
  a4 r4 r2 |
  e''2~ e8( dis d b) |
  a4 r4 r2 |
  R1*3 |
  d,4 \f r4 r2 |
  e4 r4 r2 |
  R1*3 |
  a8 \f a a a a a g g |
  fis8 fis fis fis fis fis fis fis |
  e8 e e e e d cis b |
  a8 a a a a a cis cis |
  d8 d d d d' d cis cis |
  b8 b b b b b a a |
  gis!8 gis gis gis gis gis e e |
  a8 a a a a a gis gis |
  fis8 fis fis fis fis fis fis fis |
  fis8 fis fis fis fis fis fis fis |
  e4 r4 e4 r4 |
  e4 r4 e4 r4 |
  e4 e4 r2 |

  \barNumberCheck #31
  R1 |
  R1 |
  <<
    {
      % I'm not certain sure what ``Vel.'' means, but perhaps it stands
      % for ``vellutato'' (``smoothly'')?
      dis'1(^\markup { Vel. } \p |
      d!1) |
      cis4
    } \\
    {
      R1 |
      R1 |
      cis,4
    }
  >>
  r4 fis4^\markup { Bassi } r4 |
  b,4 r e r |
  a,4 r r dis-. |
  e4 e' e, r |
  a2( gis) |
  fis2.( e4) |
  dis1( |
  d!) |
  cis1 |
  d2.( cis8 b) |
  a4 cis e e |
  a,8 a' a a a a a a |
  a8 a a a a a a a |
  a8 a a a a a a a |
  d,8 \f d d d d' d cis cis |
  gis2. a4 |
  d,8 d d d e e e e |
  fis2( \p eis) |
  fis2( eis) |
  fis2( eis) |
  fis8 r fis2( \cresc e!4) |
  d8 \f d d d d' d cis cis |
  gis2.( a4) |
  d,8 d d d e e e e |
  gis2.( a4) |
  gis2.( a4) |
  d,8 d d d e e e e |
  a,4 r4 r2 |
  fis'4 \p r e r |
  a2 r2 |
  fis2( e8) r e r |
  a,4 a' \f a, r |

  \barNumberCheck #67
  \solo
}
