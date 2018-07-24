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
  \tutti
  e,8^\both \f e e e e' e d! d |
  cis8 cis cis cis cis cis cis cis |
  b8 b b b b a gis fis |
  e8 e e e e e b' gis |
  <<
    {
      a4 cis4 dis2 |
      e2 fis2 |
    } \\
    {
      a,4 fis2 gis4~ |
      gis4 a2 b4 |
    } \\
  >> |
  R1*6 |

  \barNumberCheck #149
  \solo
  R1*7 |

  <<
    {
      \barNumberCheck #156
      s4 \tutti s4 s2 |
      s1 |
      \barNumberCheck #158
      s16 \solo s2... |
    }
    {
      r2 r4
      <<
        {
          g'4 \p |
          fis4~( fis8. e16) dis2( |
          e4)
        } \\
        {
          e4 |
          b1 |
          e,4
        } \\
      >>
      r4 r2 |
    }
  >> |
  R1 |

  <<
    {
      \barNumberCheck #160
      s4 \tutti s4 s2 |
      s1 |
      \barNumberCheck #162
      s16 \solo s2... |
    }
    {
      r2 r4
      <<
        {
          g'4~ |
          g1~ |
          g4
        } \\
        {
          c,4 |
          g1 |
          c,4
        } \\
      >>
      r4 r2 |
    }
  >> |
  R1 |

  <<
    {
      \barNumberCheck #164
      s4 \tutti s4 s2 |
      s1 |
      \barNumberCheck #166
      s4 \solo s4 s2 |
    }
    {
      r2 r4
      <<
        {
          e'4 |
          d4~( d8. c16) b4( d) |
          c4
        } \\
        {
          c4 |
          b4~( b8. a16) gis!2 |
          a4
        } \\
      >>
      r4 r2 |
    }
  >> |
  R1*3 |

  \barNumberCheck #170
  <<
    {
      r2 d4( a) |
      b4 g, r b |
      r4 c c'( gis!) |
      a4 f, r a |
      r4 b b'( fis!4) |
      gis!4 e, r gis! |
      r4 a a'( e) |
      f1 |
      \barNumberCheck #178
      e4 \tutti r4 r2
    } \\
    { R1*9 | } \\
  >> |
  R1 |

  \barNumberCheck #180
  << { s16 \solo } r2 >> r4
  <<
    {
      b'4( |
      c4) d8.( f16) e4( c4) |
      b4
    } \\
    {
      gis!4( |
      a4) b8.( d16) c!4( a) |
      gis4
    } \\
  >>
  \barNumberCheck #182
  \tutti r4 r2 |
  R1 |

  \barNumberCheck #184
  << { s16 \solo } r2 >> r4
  <<
    {
      b4( |
      c4) d8.( f16) e4( c4) |
      b4
    } \\
    {
      gis!4( |
      a4) b8.( d16) c!4( a) |
      gis4
    } \\
  >>
  r4 r2 |
  R1 |
  <b gis>4( <c a> <b gis> <a c>) |
  <b gis>4 r4 r2 |
  R1*4 |

  \barNumberCheck #194
  <<
    {
      b1~ |
      b1~ |
      b1~ |
      b1( |
      cis!4)
    } \\
    {
      gis1~ |
      gis1~ |
      gis1~ |
      gis1( |
      a4)
    } \\
  >>
  \barNumberCheck #198
  \tutti
  r4 r2 |
  R1*5 |
  r8 <cis, e>-. <d fis>-. <e gis>-. <fis a>-. <gis b>-. <a cis>-. <b d>-. |
  % The following <c dis> is as in the original source of transcription.
  % The alternative <bis dis> looks better and is easier to read, but is
  % arguably enharmonically incorrect, so we stick to the original.
  <cis e>8( <c dis> <b d> <a cis> <gis b>4) r4 |

  \barNumberCheck #206
  \solo
  R1 |
  <d' fis>2.( <b d>4) |
  <a cis>4 r4 r2 |
  R1*4 |

  \barNumberCheck #213
  \tutti
  a8^\both \f a a a a a g g |
  fis8 fis fis fis fis fis fis fis |
  e8 e e e e d cis b |
  a8 a a a a a cis cis |
  \barNumberCheck #217
  d8 d d d \solo d4 r4 |
  R1*7 |

  \barNumberCheck #225
  <b' gis>2 \f <b d,>8 \p r <c c,> r |
  <d b,>8 r <f a,,> r <b, g,> r <a f,> r |
  <b e,,>2 <b gis!>4. \f q8 |
  q4-. <e e,,>4 r2 |
  R1*7 |

  \barNumberCheck #236
  <<
    {
      r2 r4 cis8(^\p d) |
      fis8( e) e8. e16 e4 e4 |
      e4.( fis8 e dis d cis) |
      cis( b) b8. b16 b4 b4 |
      b8( e dis d cis b a gis |
      fis8 e) e8. e16 e4( eis4) |
      fis8( gis a ais b cis d dis) |
      e8( cis) a4.( cis8 b gis) |
      a4( g f e) |
    } \\
    {
      R1*8 |
      r4 e4( d cis) |
    } \\
  >> |
  <a' f>4( <g e> <f! d> <e cis>) |
  <a f>4( <g e> <f! d> <e cis>) |
  R1*3 |
  r2 <b' gis>2( |
  <a fis>4) r <b gis>2( |
  <a fis>4) r <b gis>2( |
  <a fis>4) r4 r2 |
  R1*4 |
  <<
    { e'4( d2 cis4) | } \\
    { b2.( a4) | } \\
  >> |
  R1*8 |

  \barNumberCheck #267
  r2
  <<
    {
      e'2~ |
      e4 d8.( e16 fis4 d) |
      b4( gis a cis) |
      fis1 |
      e4~ e8. a,16 d4( b4~) |
      b4 b2( a4) |
      d2.( cis4) |
      fis2.( e8. d16) |
      cis4
    } \\
    {
      a2 |
      d,1~ |
      d4 e8.( d16 cis4) a |
      fis'2.( b8. gis16) |
      e4 a8.( fis16) d4( dis4) |
      e4 e4 \shape #'((0 . -1.5) (0 . -1.5) (0 . -1.5) (0 . -1.5)) Tie cis'2~ |
      cis4 b \shape #'((0 . -1.5) (0 . -1.5) (0 . -1.5) (0 . -1.5)) Tie e2~ |
      \shape #'((0 . -1) (0 . -1) (0 . -1) (0 . -1)) Slur e4( d) gis,2( |
      a4)
    } \\
  >> r4 r2 |

  \barNumberCheck #276
  R1*3 |
  <<
    {
      r8 e-. fis-. gis-. a-. b-. cis-. d-. |
      e8-. e,-. fis-. gis-. a-. b-. cis-. d-. |
      e4 r4 r2 |
    } \\
    { R1*3 | } \\
  >> |
  R1*2 |

  \barNumberCheck #284
  \tutti
  a,8^\both \f a a a a a g g |
  fis8 fis fis fis fis fis fis fis |
  e8 e e e e d cis b |
  a8 a a a a a cis cis |
  <<
    {
      d4 b'2 cis4~ |
      cis4 d2 e4 |
    } \\
    {
      d,4 fis gis!2 |
      a2 b2 |
    } \\
  >> |

  \barNumberCheck #290
  <<
    {
      r2 cis2~^\p |
      cis4 b8.( cis16 d4 b) |
      gis4( e) e'2~ |
      e8 dis dis4 r2 |
      dis4 r dis r |
      dis4 r d2( \f |
      cis2 c2) |
      cis!2
    } \\
    {
      R1*3 |
      r4 fis,-. fis-. fis-. |
      r4 fis r fis |
      r4 fis f2( |
      e2 dis2) |
      e2
    } \\
  >> r2 \fermata |

  \barNumberCheck #298
  \solo
  R1 |

  \barNumberCheck #299
  \tutti
  <<
    {
      r8 a( \f b cis d dis e eis) |
      fis8 r8 fis2( e!4) |
      e4( d2 cis4) |
      d2( cis4 b) |
      e4( d2 cis4) |
      e4( d2 cis4) |
      d2( cis4 b) |
      a4 r dis8( \p e fis e) |
      a,4 r8. a16 b4 r8. b16 |
      d8( cis8) r4 dis8( e fis e) |
      a,4 r8. a16 cis8.( d!16) b8.( cis16) |
      % Note: The original bassoon score does not have a forte mark
      % here, even though all other instruments do.
      a4
    } \\
    {
      r4 a4( gis g) |
      fis8 r d'2( cis4) |
      b2.( a4) |
      b2( a4 gis) |
      b2.( a4) |
      b2.( a4) |
      b2( a4 gis) |
      a4 r4 r2 |
      R1*3 |
      a4
    } \\
  >>
  r4 <e' cis>4 q8 q |
  q4 r4 q8( <cis a>8) q-. q-. |
  q4 r4 <cis e,>8( <a cis,>) q-. q-. |
  q8 r <b gis> r <cis a> r <b gis> r |
  << a4 \\ a4 >> r4 r2 |
  \bar "|."

  \barNumberCheck #315
}
