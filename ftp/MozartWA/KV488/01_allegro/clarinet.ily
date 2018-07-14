clarinet = \relative c'' {
  % Note that ``\transposition a'' is in effect.

  \barNumberCheck #1
  \tutti
  R1*8 |
  <<
    {
      g'2( \p e2) |
      f4.( a8) d,( f) b,( d) |
      c4( g' f e) |
      e4.( g16 f e4) r4 |
      r4 a4-. cis,( d) |
    } \\
    {
      g,2( bes2) |
      a4( c a f) |
      g4 r4 r2 |
      R1 |
      R1 |
    } \\
  >> |
  r4 <d' b>( <ees c> <d b>) |
  <g c,>4 <c a>2( <b g>4) |
  <<
    {
      c4( e, g b) |
      c4
    } \\
    {
      g4 g, d'2( |
      e4)
    } \\
  >>
  <c' a>2( <b g>4) |
  <c g>4 \f <c, e,>2 q4 |
  << { g'8[( f]) } \\ c4 >> <f c>2 q4 |
  << { f8[( e]) } \\ bes4 >> <e bes>4. <f a,>8 <g g,> <a f,> |
  <bes e,,>4 <bes g>2 <g bes,>4 |
  <e g,>8( <f f,>8) <f f,>2 <c a>4 |
  <<
    {
      f1~ |
      f2. b!4 |
    } \\
    {
      f,2. a4 |
      d1 |
    } \\
  >> |
  <b' d,>8( <c e,>8) <c e,>2 <g d>4 |
  << { g8[( fis]) } \\ c4 >> <fis c>4. <g d>8 <a fis!> <b g> |
  <c a>4 <a fis>2 <fis! c>4 |
  <g b,>4 <b d,>8. q16 <c e,>4 q8. q16 |
  <b d,>4 q8. q16 <c e,>4 q8. q16 |
  <b d,>4 << g4 \\ g4 >> r2 |

  \barNumberCheck #31
  R1*14 |
  <e g>2~( \p q8 <e c> <f d> <d b>) |
  << c4 \\ c4 >> r4 r2 |
  r2 <f aes,>4( <e g,>8) r8 |
  r2 <aes f>4( <g e>8) r8 |
  <<
    {
      a!2.( \f g4) |
      g4( f2 e4) |
    } \\
    {
      c1 |
      d2.( c4) |
    } \\
  >> |
  <f d>2( <e c>4 <d b>) |
  <<
    {
      c16( \p b c d e8) e e4 r4 |
      c16( b c d e8) e e4 r4 |
      c16( b c d e8) e e4 r4 |
      % We need to fake-extend the polyphony for one note so that the
      % ``\cresc'' and the ``\f'' are in the same voice.
      c8( d ees \cresc e f fis g gis) |
      \stemNeutral <a f>8 \f
    } \\
    {
      R1 |
      R1 |
      R1 |
      r4 a,2( e'4) |
      s8
    } \\
  >>
  r8 <a c,>2( <g! c,>4) |
  <<
    { g4( f2 e4) | } \\
    { d2.( c4) | } \\
  >> |
  <f d>2( <e c>4 <d b>4) |
  <<
    { g4( f2 e4) | } \\
    { d2.( c4) | } \\
  >> |
  <<
    { g'4( f2 e4) | } \\
    { d2.( c4) | } \\
  >> |
  <f d>2( <e c>4 <d b>4) |
  << c4 \\ c4 >> r4
  <<
    {
      fis8^\p( g a g) |
      c,4 r8. c16 d4 r8. d16 |
      f4( e8) r8 fis8( g a g) |
      c,4 r8. c16 e8.( f!16) d8.( e16) |
      c4 c'4 \f c,4 r4 |
    } \\
    {
      r2 |
      R1 |
      R1 |
      R1 |
      r4 e4 c4 r4 |
    } \\
  >> |

  \barNumberCheck #67
  \solo
  R1*15 |

  \barNumberCheck #82
  \tutti
  <c e,>1 \f |
  << { g'8[( f]) } \\ c4 >> <f c>2 q4 |
  << { f8[( e]) } \\ bes4 >> <e bes>4. <f a,>8 <g g,> <a f,> |
  <bes e,,>4 <bes g>2 <g bes,>4 |

  \barNumberCheck #86
  <e g,>8( <f f,>) q4 \solo r2 |
  R1*8 |
  <d d,>2 \sf <fis a,>8 \p r <g bes,> r |
  <fis c>8 r <g ees> r <d a> r <cis a> r |
  <d a>2 <fis d>4. \f <g e>8 |
  <fis d>4 <d d,> r2 |
  R1*12 |
  e8( \p d) d8. d16 d4( dis) |
  e8( fis g gis a b c cis) |
  <<
    {
      d4 b4.( g8 a fis) |
      g4( \stemNeutral <f! d> <ees c> <d b>) |
    } \\
    {
      R1 |
      r4 s4 s2 |
    }
  >> |
  <g ees>4( <f d> <ees! c> <d b>) |
  <g ees>4( <f d> <ees! c> <d b>) |
  R1*3 |
  <<
    {
      b1~ |
      b1~ |
      b1~ |
      b4 r4 r2 |
    } \\
    { R1*4 | }
  >> |
  R1*4 |
  <<
    { d4( c2 b4) | } \\
    { a2.( g4) |} \\
  >> |
  R1*2 |
  <<
    {
      a1~ |
      a2( bes2) |
    } \\
    {
      g1~ |
      g1 |
    } \\
  >> |
  <b! g>4 r4 r2 |
  R1*3 |

  \barNumberCheck #137
  \tutti
  <b d>1 \f |
  <g g'>2.( <c e>4) |
  <b f'!>4 <f! b>4. <e c'>8 <d d'> <c e'> |
  <b f''>4 <d' f>2 q4 |
  <<
    {
      e2 fis2 |
      g2 a2 |
    } \\
    {
      g,4 a2 b4~ |
      b4 c2 d4 |
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
      s16 \solo s16 s8
    }
    {
      r4 d4 \p g2~ |
      g4 fis8.( g16) a4( d,) |
      bes'4
    } \\
    {
      r2 r4 d,4 |
      c4~( c8. bes16) a4( c) |
      bes4
    } \\
  >> r4 r2 |
  R1 |

  <<
    {
      \barNumberCheck #160
      s4 \tutti s4 s2 |
      s1 |
      \barNumberCheck #162
      s16 \solo s16 s8
    }
    {
      r2 r4
      <<
        {
          g'4 |
          aes4~( aes8. g16) f4( aes) |
          g4
        } \\
        {
          ees4 |
          f4~( f8. ees16) d2 |
          ees4
        } \\
      >>
    }
  >> r4 r2 |
  R1 |

  <<
    {
      \barNumberCheck #164
      r4 \tutti g4
      \shape #'((0 . -0.5) (0 . -0.5) (0 . -0.5) (0 . -0.5)) Tie
      c,2~ |
      \once \override NoteColumn.force-hshift = #0.4
      \once \override Stem.length = #5
      c4 b!8._( c16) d4_( g,4) |
      ees'4
    } \\
    {
      r2 r4 g,4 |
      \shape #'((-0.5 . 0.5) (0 . 1.5) (0 . 1.5) (0 . 0)) Tie
      g'1^~ |
      g4
    } \\
  >>
  \barNumberCheck #166
  \solo r4 r2 |
  R1*3 |
  <<
    {
      r4 f,4 aes'2~ |
      aes4 g8.( aes16) bes4( f) |
      g4 ees,4 g'2~ |
      g4 f8.( g16) aes4( ees) |
      f4 d, f'2~ |
      f4 ees8.( f16) g4( d) |
      ees4 c, ees'2~ |
      ees4( e f fis) |
      \barNumberCheck #178
      g4 \tutti r4 r2 |
    } \\
    {
      R1*9 |
    } \\
  >> |
  R1 |

  \barNumberCheck #180
  << { s16 \solo } r4 >> <fis d>4( <g ees>2~) |
  q4 <f! d>8.( <d b>16) <ees c>4( <g ees!>4) |

  \barNumberCheck #182
  <d b>4 \tutti r4 r2 |
  R1 |

  \barNumberCheck #184
  << { s16 \solo } r4 >> <fis d>4( <g ees>2~) |
  q4 <f! d>8.( <d b>16) <ees c>4( <g ees!>4) |
  <d b>4 r4 r2 |
  R1 |
  <d b>4( <ees c> <d b> <ees c>) |
  <d b>4 r4 r2 |
  R1*4 |
  <<
    {
      b'1~ |
      b1~ |
      b1~ |
      b1( |
      c4)
    } \\
    {
      f,!1~ |
      f1~ |
      f1~ |
      f1( |
      e4)
    } \\
  >>
  \barNumberCheck #198
  \tutti r4 r2 |
  R1 |
  <c' e,>4( <b g> <a f> <g e>) |
  <g e>4.( <b g>16 <a f> <g e>4) r |
  <<
    { c,2~ c8( b f') f-. | } \\
    R1 \\
  >>
  <c e>2~ q8( <d b> <a' f>) q-. |
  <g e>4 r4 r2 |
  R1 |

  \barNumberCheck #206
  \solo
  R1 |
  <<
    {
      f2( d4 b) |
      c4( g' f e) |
    } \\
    {
      R1 |
      R1 |
    } \\
  >> |
  <f b,>2( <e c>4) r4 |
  R1*3 |

  \barNumberCheck #213
  \tutti
  <c e,>1 \f |
  << { g'8[( f]) } \\ c4 >> <f c>2 q4 |
  << { f8[( e]) } \\ bes4 >> <e bes>4. <f a,>8 <g g,> <a f,> |
  <bes e,,>4 <bes g>2 <g bes>4 |

  \barNumberCheck #217
  <e g,>8( <f f,>) q4 \solo r2 |
  R1*7 |
  <d b>2 \f <aes' b,>8 \p r <g c,> r |
  <f b,>8 r <ees c> r <d g> r <c fis,> r |
  <b g>2 <b' d,>4. \f q8 |
  q4-. << g4-. \\ g4-. >> r2 |
  R1*7 |

  \barNumberCheck #236
  <<
    {
      r2 r4 e8(^\p f) |
      a8( g) g8. g16 g4 g4 |
      g8( c b a g fis f e) |
      e8( d) d8. d16 d4 d4 |
      d8( g fis f e d c b |
      a8 g) g8. g16 g4( gis4) |
      a8( b c cis d e f fis) |
    } \\
    { R1*7 | } \\
  >> |
  <g e>2~( q8 <e c> <f d> <d b>) |
  <<
    { c4( bes aes g) | } \\
    { c4( g f e) } \\
  >> |
  <c' aes>4( <bes g> <aes f> <g e>) |
  <c aes>4( <bes g> <aes f> <g e>) |
  R1*4 |
  r2 <d' b>2( |
  <c a>4) r4 <d b>2( |
  <c a>4) r4 r2 |
  R1*4 |
  <<
    { g'4( f2 e4) | } \\
    { d2.( c4) | } \\
  >> |
  R1*8 |

  \barNumberCheck #267
  <<
    {
      r2 e2~ |
      e4 d8.( e16 f4 d) |
      b4( g) g'2~ |
      g4( c8. a16) f2~ |
      f4 e2( d8. c16) |
      b4 d2( c8. g16) |
      f'2.( e8. c16) |
      a'2.( g8. f16) |
      e4
    } \\
    {
      R1 |
      a,1( |
      g4) d e g |
      c2. d4 |
      b4( c) a2 |
      g4 d'8.( g,16) \shape #'((0 . -1) (0 . -2) (0 . -3) (0 . -1)) Tie e'2~ |
      e4 d8.( g,16) \shape #'((-1 . -1) (-1 . -2) (0 . -3) (0 . -2)) Tie g'2~ |
      g4 f8.( d16) b2( |
      c4)
    } \\
  >> r4 r2 |

  \barNumberCheck #276
  R1*4 |
  <<
    {
      r8 g-. a-. b-. c-. d-. e-. f-. |
      g4 r4 r2 |
    } \\
    {
      R1 |
      R1 |
    } \\
  >> |
  <e c>1 |

  <<
    {
      d2(-\omit \p \cresc f) |
      \barNumberCheck #284
      \tutti
      e4 \f c2 c4 |
      g'8( f) f2 f4 |
      f8( e) e4. f8 g a |
      bes4 bes2 g4 |
      f4 d2 e4~ |
      e4 f2 g4 |
    } \\
    {
      b,2( d) |
      c4 e,2 e4 |
      c'4 c2 c4 |
      bes4 bes4. a8 g f |
      e4 g'2 bes,4 |
      a2 b!2 |
      c2 d2 |
    } \\
  >> |
  R1*3 |
  r4 <c' fis,>-. \p q-. q-. |
  r4 q r q |
  r4 q
  <<
    {
      c2~ \f|
      c1~ |
      c2
    } \\
    {
      f,2( |
      e2 ees2) |
      e!2
    } \\
  >> r2 \fermata |

  \barNumberCheck #298
  \solo
  R1 |

  \barNumberCheck #299
  \tutti
  <<
    {
      r8 c8( \f d e f fis g gis) |
      a8
    } \\
    {
      r4 c,4( b bes) |
      a8
    } \\
  >>
  r8
  <<
    {
      a'2( g!4) |
      g4( f2 e4) |
      f2( e4 d) |
      g4( f2 e4) |
      g4( f2 e4) |
      f2( e4 d) |
      c4 r fis8(^\p g a g) |
      c,4 r8. c16 d4 r8. d16 |
      f4( e8) r fis8(^\p g a g) |
      c,4 r8. c16 e8.( f!16) d8.( e16) |

      \barNumberCheck #310
      c8( \f e) e-. e-. e4 r |
      g8( e) e-. e-. e4 r |
      e8( c) c-. c-. c4 r |
      g'8 r b r c r b r |
      c4
    } \\
    {
      c,2 c4 |
      d2.( c4) |
      d2 c4 b |
      d2.( c4) |
      d2.( c4) |
      d2 c4 b |
      c4 r4 r2 |
      R1*3

      \barNumberCheck #310
      r8 c c-. c-. c4 r |
      e8( c) c-. c-. c4 r |
      g8( e) e-. e-. e4 r |
      e'8 r f r e r f r |
      e4
    } \\
  >>
  r4 r2 |
  \bar "|."

  \barNumberCheck #315
}
