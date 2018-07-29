horn = \relative c'' {
  % Note that ``\transposition a'' is in effect.

  \barNumberCheck #1
  \solo
  R2.*11

  \barNumberCheck #12
  \tutti
  R2.*7 |
  << { e,4. \f } \\ e4. >> r8 r << e8 \\ e8 >> |

  \barNumberCheck #20
  \solo
  << e4 \\ e4 >> r8 r4 r8 |
  R2.*7 |
  <g g,>2.~ \p |
  q2.~ |
  q2. |
  R2. |
  q2.~ |
  q2.~ |
  q4 r8 r4 r8 |

  \barNumberCheck #35
  \tutti
  R2.*3 |

  \barNumberCheck #38
  << { s4 s8 s16 \solo } R2. >> |
  q2.~ |
  q8 q-. q-. q8 r r |
  R2. |
  << g4. \\ g4. >> <c c,>8( <e e, > <c c,>) |
  <g g,>2.~ |
  q4. <c c,>8 r r |
  R2.*4 |
  <g g,>2.~ |
  q2. |

  \barNumberCheck #51
  << { s8 \tutti } c,4 \\ c4 >> r8 r4 r8 |
  << e2. \\ e2. >> |

  \barNumberCheck #53
  \solo
  << e4 \\ e4 >> r8 r4 r8 |
  R2.*10 |
  <<
    {
      c'2.( \p |
      d8) r r r4 r8 |
    } \\
    {
      c,2. |
      R2. |
    } \\
  >> |
  R2. |
  R2. |

  \barNumberCheck #68
  \tutti
  R2.*7
  e4.-\both \f r4 e8 |

  \barNumberCheck #76
  \solo
  e2.~ \p |
  e2.~ |
  e2. |
  R2. |
  e2.~ |
  e2.~ |
  e2.~ |
  e2.~ |
  e4 r8 r4 r8 |
  R2.*3 |

  <<
    {
      c'2.~ \p |
      c2. |
      d2. |
      e2.~ |
      e8
    } \\
    {
      e,2.( |
      c2.) |
      R2. |
      e2.~ |
      e8
    } \\
  >>
  r8 r8 r4 r8 |
  R2.*4 |
  << e2. \\ e2. >> |
  << { e8[-. e]-. } \\ { e8[-. e]-. } >> r8
  << { e8[-. \pp e]-. } \\ { c8[-. c]-. } >> r8 |
  << { c'8[-. c]-. } \\ { e,8[-. e]-. } \\ >> r8 r4 r8 |
  \bar "|."

  \barNumberCheck #100
}
