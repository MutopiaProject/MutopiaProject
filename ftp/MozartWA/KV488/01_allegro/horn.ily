horn = \relative c'' {
  % Note that ``\transposition a'' is in effect.

  \barNumberCheck #1
  \tutti
  R1*8 |
  <c c,>1~ \p |
  q1~ |
  q4 r r q |
  q2. r4 |
  R1*3 |
  <c c,>8 <g g,> <c c,> <e e,> <g g,>4 q4 |
  <<
    { e4. f8 d4. e8 | } \\
    { c2. g4 | }
  >> |
  <c e,>4 \f <c c,>8. q16 q4 q4 |
  q1 |
  q2~ q8 q q q |
  q1 |
  q2 r2 |
  R1 |
  r4 <g g,>8. q16 q4 q4 |
  <g c,>4 <c e>2 <g d'>4 |
  <c c,>4 q8. q16 q4 r4 |
  q2 q4 q4 |
  <g g,>4 q8. q16 q4 q8. q16 |
  q4 q8. q16 q4 q8. q16 |
  q4 q4 r2 |

  \barNumberCheck #31
  R1*14 |
  <e c'>2. \p <g d'>4 |
  <c c,>1~ |
  q1~ |
  q1 |
  q4 \f q2 q4 |
  <g g,>1 |
  R1 |
  <<
    {
      e1~ \p |
      e1~ |
      e1~ |
      e8
    } \\
    {
      e1~ |
      e1~ |
      e1~ |
      e8
    }
  >>
  r8 <c' c,>8. \f q16 q4 q4 |
  q4 q2 q4 |
  <g g,>1 |
  R1 |
  q1 |
  q1 |
  r2 <c e>4 <g d'>4 |
  <c c,>4 r4 r2 |
  << { c,4 \p } \\ c4 >> r4 << g'4 \\ g4 >> r4 |
  <c c,>4 r4 r2 |
  q2 <c e>8 r <d g,> r |
  <c e,>4 <c c,>\f q4 r4 |

  \barNumberCheck #67
  \solo
}
