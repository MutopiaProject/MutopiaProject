clarinet = \relative c'' {
  % Note that ``\transposition a'' is in effect.

  \barNumberCheck #1
  \solo
  R2.*11

  \barNumberCheck #12
  \tutti
  <<
    {
      r4 r8 c'4.~ \p |
      c8( b a gis8 a b) |
      e,4. r4 r8 |
    } \\
    { R2.*3 | } \\
  >> |
  R2. |
  r4 r8
  <<
    {
      c'4.~ \f |
      c8 b a gis8 a b |
      bes8( a g!) f4. |
      e8( d) c~( c8 d) b |
      \barNumberCheck #20
      \solo
      a4
    } \\
    {
      e'4. |
      fis4.( f4.) |
      e4.~ e8 d( c) |
      b!8( gis) a~ a8 b gis |
      \barNumberCheck #20
      \solo
      a4
    } \\
  >>
  r8 r4 r8 |
  R2.*11 |

  <<
    {
      d4.( \p ees4.) |
      d8
    } \\
    {
      b4.( c4.) |
      b8
    } \\
  >> r8 r8 r4 r8 |
  R2. |

  \barNumberCheck #35
  \tutti
  <<
    {
      e!4. c4 d32( c b c) |
      d8 d d d8 r r |
      r16 e( f g a b c16 d e) e,( f fis) |
      \barNumberCheck #38
      g16( fis g fis g e << { s16 \solo} d8) >>
    } \\
    {
      \tuplet 3/2 8 {
        g,,16 c e g e c g c e g,16 c e g e c g c e |
        g,16 b d g d b g b d g,16 b d g d b g b d |
      }
      c8 r r r8 r16 c'( d dis) |
      \barNumberCheck #38
      e16( dis e dis e c << { s16 \solo } b8) >>
    } \\
  >> r8 r8 |

  <g' e>4. <e c>4 <f! d>32( <e c> <d b> <e c>) |
  <f d>8-. q-. q-. q8-. r r |
  R2. |
  R2. |
  <f d>4( <e c>8) <d b>8 r r |
  <g e>4( <f d>8) <e c>8 r r |
  R2.*6 |

  \barNumberCheck #51
  <<
    {
      \barNumberCheck #51
      s8 \tutti s s s4 s8 |
      s2. |
      \barNumberCheck #53
      \solo
    }
    {
      e4.( d4.) |
      c4. b4( d8) |
      c4
    } \\
    {
      c4.~ c8 b4~ |
      b8 a4~ a8 gis b |
      a4
    } \\
  >> r8 r4 r8 |

  \barNumberCheck #54
}
