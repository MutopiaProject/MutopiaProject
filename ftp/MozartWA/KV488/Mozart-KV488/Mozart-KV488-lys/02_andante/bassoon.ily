bassoon = \relative c {
  \barNumberCheck #1
  \solo
  R2.*11

  \barNumberCheck #12
  \tutti
  <<
    {
      R2. |
      r4 r8 b'4.~^\p |
      b8( a gis fis gis a) |
      d,4. d'4.~ |
      d8( cis b a gis fis) |
      dis'4.( d4.) |
      g8 fis e d4. |
      cis8( b) a~( a b) gis |
    } \\
    {
      fis,2.~ \p |
      fis4.( gis) \p |
      a2. |
      b2. |
      cis4. fis,4. \f |
      bis4.( b4.) |
      ais4.( b8) b'( a!) |
      gis!8( eis) fis~ fis gis eis |
    } \\
  >>

  \barNumberCheck #20
  \solo
  << fis4 \\ fis4 >> r8 r4 r8 |
  R2.*11 |

  \barNumberCheck #32
  R2. |
  <<
    {
      b4.( c4.) |
      b4
    } \\
    {
      gis4.( \p a4.) |
      gis4
    }
  >>
  r8 r4 r8 |

  \barNumberCheck #35
  \tutti
  R2.*2 |
  <<
    {
      r16( a b cis! d b cis16 gis a cis d dis) |
      \barNumberCheck #38
      e16( dis e dis e cis << { s16 \solo } b8) >>
    } \\
    {
      r4 r8 r8 r16 a( b bis) |
      \barNumberCheck #38
      cis16( bis cis bis cis a << { s16 \solo } gis8) >>
    } \\
  >>
  r8 r8 |
  <<
    {
      a4 a8 a4 a8 |
      gis8-. gis-. gis-. gis8
    } \\
    {
      a,4 a8 a4 a8 |
      gis8-. gis-. gis-. gis8
    } \\
  >> r8 r8 |
  R2. |
  R2. |
  r8
  <<
    { gis'8( a) e8 } \\
    { gis,8( a) e8 } \\
  >>
  r8 r8 |
  <<
    { a'8( cis gis) a8 } \\
    { a,8( cis e) a8 } \\
  >>
  r8 r8 |
  R2. |
  <<
    {
      r4 r8 \tuplet 3/2 8 { r16 b a gis fis e d cis b } |
      r4 r8 \tuplet 3/2 8 { r16 cis' b a gis fis e d cis } |
    } \\
    { R2.*2 | } \\
  >> |
  R2. |
  <<
    {
      cis'2.( |
      b2.) |
    } \\
    {
      a2.~ |
      a4. gis4. |
    } \\
  >> |

  \barNumberCheck #51
  <<
    {
      \barNumberCheck #51
      a8[ \tutti r8 a]( b8[) r b]( |
      cis8[) r cis]( cis,8[) r cis] |
      \barNumberCheck #53
      \solo
      fis4 r8 r4 r8 |
    } \\
    {
      \barNumberCheck #51
      a8 \tutti r r r4 r8 |
      R2. |
      \barNumberCheck #53
      \solo
      R2. |
    } \\
  >> |

  \barNumberCheck #54
  R2.*10 |
  <<
    {
      d2.~ |
      d8
    } \\
    {
      d,2.( \p |
      b8)
    } \\
  >>
  r8 r8 r4 r8 |
  R2. |
  R2. |

  \barNumberCheck #68
  \tutti
  <<
    {
      R2. |
      r4 r8 b'4.~^\p |
      b8( a gis fis gis a) |
      d,4. d'4.~ |
      d8( cis b a8 gis fis) |
      dis'4.( d4.) |
      g8( fis e) d4. |
      cis8( b) a~( a b) gis |
    } \\
    {
      fis,2.~ \p |
      fis4. gis4. |
      a2. |
      b2. |
      cis4. fis,4. \f |
      bis4.( b4.) |
      ais4.( b8) b'8( a!) |
      gis8( eis) fis~ fis8 gis eis |
    } \\
  >>

  \barNumberCheck #76
  \solo
  << fis4 \\ fis4 >> r8 r4 r8 |
  R2.*3 |
  <<
    {
      r4 r8 r16 cis \p fis a cis cis, |
      r4 r8 r16 cis eis gis cis cis, |
      r4 r8 r16 cis fis a! cis cis, |
      r4 r8 r16 cis eis gis cis cis, |
      fis4 r8 r4 r8 |
    } \\
    { R2.*5 | } \\
  >> |
  R2.*3 |
  <<
    {
      fis'2.~ \p |
      fis2. |
      d2. |
      fis4.( eis4.) |
      fis8
    } \\
    {
      cis2.( |
      d2.) |
      b2. |
      cis2. |
      a8
    } \\
  >>
  r8 r8 r4 r8 |
  R2.*3 |
  <<
    {
      r4 r8 a4.~ |
      a8( gis fis eis fis gis) |
    } \\
    {
      R2. |
      R2. |
    } \\
  >> |
  << { fis8-. a-. } \\ { fis8-. fis8-. } >> r8
  << { fis'8-. \pp fis-. } \\ { fis,8-. fis8-. } >> r8 |
  << { fis'8-. fis-. } \\ { fis,8-. fis8-. } >> r8 r4 r8 |
  \bar "|."

  \barNumberCheck #100
}
