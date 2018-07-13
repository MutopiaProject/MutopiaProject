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
}
