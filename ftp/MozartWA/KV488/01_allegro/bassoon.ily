both = \markup { a. 2. }

bassoon = \relative c {
  \barNumberCheck #1
  \tutti
  R1*8 |
  <<
    {
      cis'2( \p e) |
      d4( fis d b) |
      cis4
    } \\
    {
      a,4 a' a a |
      a4 a a a |
      a
    }
  >> r4 r2 |
  r4
  <<
    {
      d,4 a' a, |
    } \\
    {
      d4 a' a, |
    }
  >>
  r4 <d' fis>( <e g> <d fis>) |
  R1 |
  <<
    { r4 fis( d e) | } \\
    { R1 | }
  >> |
  << cis4 \\ r4 >> <a a,>4 <gis gis,> <e e,> |
  <a a,>4 <fis fis,> <d d,> <e e,> |
  <<
    { a8 \f a a a a a g g | } \\
    { a,8 a' a a a a g g | } \\
  >> |
  fis8^\markup { a \bold "2." } fis fis fis fis fis fis fis |
  e8 e e e e d cis b |
  a8 a a a a a cis cis |
  d8 d d d d' d cis cis |
  b8 b b b b b a a |
  gis!8 gis gis gis gis gis e e |
  a8 a a a a a gis gis |
  fis8 fis fis fis fis fis fis fis |
  fis8 fis fis fis fis fis fis fis |
  e4 <gis b>8. q16 <a cis>4 q8. q16 |
  <gis b>4 q8. q16 <a cis>4 q8. q16 |
  <gis b>4 <e e'> r2 |

  \barNumberCheck #31
  R1*7 |
  <<
    {
      r2 r4 cis'8(^\p d) |
      fis8( e) e8. e16 e4 e4 |
      e4.( fis8 e dis d cis) |
      cis8( b) b8. b16 b4 b4 |
      b8( e dis d cis b a gis) |
      fis8( e) e8. e16 e4( eis) |
      fis8( gis a ais b cis d dis) |
      e8( cis) a4.( cis8 b gis) |
      a4 r4 r2 |
    } \\
    {
      R1*9 |
    }
  >> |
  r2 <d f,>4( <cis e,>8) r8 |
  r2 <f d>4 <e cis>8 r8 |
  <fis! d>2.( \f <e cis>4) |
  <<
    { e4( d2 cis4) | } \\
    { b2.( a4) | } \\
  >> |
  <d b>2( <cis a>4 <b gis>4) |
  <<
    {
      a16( \p gis a b cis8) cis8 cis4 r4 |
      a16( gis a b cis8) cis8 cis4 r4 |
      a16( gis a b cis8) cis8 cis4 r4 |
      a8( b c \cresc cis d dis e eis) |
      % We need to fake-extend the polyphony for one note so that the
      % ``\cresc'' and the ``\f'' are in the same voice.
      \stemNeutral <fis d>8 \f
    } \\
    {
      R1 |
      R1 |
      R1 |
      r4 a,2( cis4) |
      s8
    }
  >>
  r8 <fis d>2( <e! cis>4) |
  <<
    { e4( d2 cis4) | } \\
    { b2.( a4) | } \\
  >> |
  <d b>2( <cis a>4 <b gis>4) |
  <<
    { e4( d2 cis4) | } \\
    { b2.( a4) | } \\
  >> |
  <<
    { e'4( d2 cis4) | } \\
    { b2.( a4) | } \\
  >> |
  <d b>2( <cis a>4 <b gis>4) |
  << a4 \\ a4 >> r4
  <<
    {
      dis8 e fis e |
      a,4 r8. a16( \p b4 r8. b16) |
      d4( cis8) r8 dis8 e fis e |
      a,4 r8. a16 cis8.( d!16) b8.( cis16) |
      a4 a4 \f a,4
    } \\
    {
      r2 |
      R1 |
      R1 |
      R1 |
      r4 a'4 a,4
    } \\
  >> r4 |

  \barNumberCheck #67
  \solo
  R1*15 |

  \barNumberCheck #82 |
  \tutti
  a'8^\both \f a a a a a g g |
  fis8 fis fis fis fis fis fis fis |
  e8 e e e e d cis b |
  a8 a a a a a cis cis |

  \barNumberCheck #86
  d8 d d d \solo d4 r4 |
  R1*8 |

  \barNumberCheck #95
  b2^\both \sf a'8 \p r g r |
  fis8 r e r d! r c r |
  b2 <b' fis'>4. \f q8 |
  q4 <b b,> r2 |
  R1*7 |

  \barNumberCheck #106
  <<
    {
      r2 r4 gis8(^\p a) |
      cis8( b) b8. b16 b4 b4 |
      b8( e dis cis b ais a gis) |
      gis8( fis) fis8. fis16 fis4 fis4 |
      fis8( b ais a gis fis e dis |
      cis b) b8. b16 b4( bis) |
      cis8( dis e eis fis gis a ais) |
      b8( gis) e4.( gis8 fis dis) |
      e4( \stemNeutral
      \override NoteColumn.ignore-collision = ##t
      % Could `\override Stem.length = 0` here, but appears unnecessary.
      d'! c b)
      \revert NoteColumn.ignore-collision
      |
    } \\
    {
      R1*8 |
      r4 b( \p a gis) |
    } \\
  >> |
  <e' c>4( <d b> <c! a> <b gis>) |
  <e c>4( <d b> <c! a> <b gis>) |
  R1*3 |
  <<
    {
      gis1~ |
      gis1~ |
      gis1~ |
      gis4 r4 r2 |
    } \\
    { R1*4 | } \\
  >> |
  R1*4 |
  <<
    { b1 | } \\
    { dis,2.( e4) | } \\
  >> |
  R1 |
  R1 |
  <<
    {
      cis'1~ |
      cis1 |
      b4
    } \\
    {
      a1~ |
      a2( ais2) |
      b4
    } \\
  >> r4 r2 |
  R1*3 |

  \barNumberCheck #137
}
