pianoTreble = \relative c' {
  \barNumberCheck #1
  \tutti
  R1*66 |

  \barNumberCheck #67
  \solo
  e'2( cis2) |
  d4. fis8 b,( d) gis,( b) |
  a4 <gis e>( <fis d> <e cis>) |
  <e cis>4.( <gis e>16 <fis d>) <e cis>4 r4 |
  a2 gis16( a b cis d8) d |
  cis2 b16( cis d e fis8) fis |
  e8( fis16 gis a b cis d e cis a e cis' a e cis) |
  e8( dis d cis b4) r4 |

  \barNumberCheck #75
  e2( cis2) |
  d4~( d16 fis d fis b, d b d gis, b gis b) |
  a8( b16 cis d e fis gis a b cis b a gis fis e) |
  <<
    { e4.( gis16 fis) e4 } \\
    { e4. d8 cis4 } \\
  >>
  r4 |
  e'8( d16 cis b a gis fis e d cis b a gis fis e |
  d8 e16 fis gis a b cis d e fis gis a b cis d) |
  d16( cis b a gis fis e d cis d dis e) e( d cis b |

  \barNumberCheck #82
  \tutti
  a4) r4 r2 |
  R1 |
  R1 |
  R1 |

  \barNumberCheck #86
  r2 \solo r8 d8 d d |
  gis16_\legato a gis fis gis a b cis d e d cis b a gis fis |
  e16 fis e dis e fis gis a b cis b a gis fis e d |
  cis16 e d cis d e fis gis a b a gis fis e dis cis |
  b16 cis b ais b cis dis e fis gis fis e dis cis b a |
  gis16 b a gis a b cis dis e fis gis a b cis dis e |
  bis16 cis e dis cis b a gis b a cis b a gis fis e |
  dis16 b dis fis b fis dis b r dis( fis cis') r e,( gis b) |
  r16 dis,( fis a) r b,( e gis) r b,( dis fis) r ais,( cis e |
  dis b dis fis b fis dis b) r dis( fis c') r e,( g b) |
  r16 a,( dis a') r c,( e g) r fis,( b fis') r e,( ais e') |
  dis16( b' ais gis fis e dis cis b8 ais16 gis fis e dis cis |
  b4) <dis' fis b> r4 gis,8_\dolce( a! |

  \barNumberCheck #99
  cis b) b8. b16 b4 b4 |
  b8( e dis cis b ais a gis) |
  gis8( fis) fis8. fis16 fis4 fis |
  fis8( b ais a gis fis e dis |
  cis8 b) b8. b16 b8( gis' e cis |
  b a) a8. a16 a8( fis' dis a |
  gis16 b a gis a b cis dis e fis gis a <b e,>8-.) <cis e,>-. |
  <gis e>2( <fis dis>4) r4 |

  \barNumberCheck #107
  R1 |
  r8 e'16( e' dis, dis' cis, cis' b, b' ais, ais' a, a' gis, gis') |
  gis8( fis) fis4 r2 |
  r8 b,16( b' ais, ais' a, a' gis, gis' fis, fis' e, e' dis, dis' |
  cis8 b) b4 r2 |
  r8 dis,16( dis' e, e' eis, eis' fis, fis' gis, gis' a, a' ais, ais') |
  b16( gis b gis e4. gis8 fis dis) |
  e4 r4 r4 e8.-. e16-. |
  <a e a,>4-. <gis e b>-. r4 e8.-. e16-. |
  a8( b16 c b4) r2 |
  <cis! a e>8 r8 cis4.( e16 dis e dis cis b) |
  % Really, only the last beat of the _next_ measure (119) is
  % polyphonic, but we need a slur from the beginning of this measure to
  % the end of the next, so in order to avoid a cross-voice slur we
  % start the polyphony earlier.
  <<
    {
      \stemDown
      b16( a cis b a gis fis e dis cis b a gis b e gis |
      \barNumberCheck #119
      cis,16 fis a cis b a gis fis e4 \stemUp gis8 fis) |
    } \\
    {
      s1 |
      s2 s4 dis4 |
    } \\
  >>
  e4 r4 gis4~( gis16 a gis fis |
  e4) r4 gis4~( gis16 a gis fis |
  e4) r4 gis4~( gis16 a gis fis |
  e16 fis e dis \tuplet 3/2 4 { e8) f-. fis-. g-. gis-. a-. ais-. b-. bis-. } |
  cis8 r8 cis4.( e16 dis e dis cis b) |
  b16( a cis b a gis fis e dis cis b a gis b e gis |
  cis,16 fis a cis b a gis fis e4 dis4) |
  b'16( a cis b a gis fis e dis cis b a gis b e gis) |
  b,16( a cis b a gis fis e dis cis b a gis b e gis) |
  cis,8( dis!16 eis fis gis a b cis d! bis d cis d bis d) |
  cis8( dis16 eis fis gis a b cis d bis d! cis d bis d) |
  cis16( dis e gis, a b! cis eis, fis gis a bis, cis eis fis gis, |
  a16 b! cis eis, fis gis a bis, cis dis e cis ais b cis ais) |
  r16 b( cis dis e fis gis a cis b a gis a b cis dis |
  e16 dis cis b cis dis e fis gis fis e dis e fis gis a |
  cis16 b a gis a b cis dis e dis cis b a gis fis e) |
  #(define --old-afterGraceFraction afterGraceFraction)
  #(define afterGraceFraction (cons 15 16))
  \afterGrace fis1 \startTrillSpan { e16 \stopTrillSpan fis } |
  #(define afterGraceFraction --old-afterGraceFraction)

  \barNumberCheck #137
  \tutti
  e4 r4 r2 |
}

pianoBass = \relative c {
  \barNumberCheck #1
  \tutti
  R1*66

  \barNumberCheck #67
  \solo
  \clef treble
  a'8( e' cis e a, g' e g |
  a,8 a' fis a d, fis b, d |
  cis4) r4 r2 |
  \clef bass
  r4 d, a' a, |
  R1 |
  a'2 gis16( a b cis d8) d8 |
  \clef treble
  cis8( d16 e fis gis a b cis4) r4 |
  \clef bass
  <<
    { cis,8( c b a gis4) } \\
    { e2~ e4 } \\
  >>
  r4 |

  \barNumberCheck #75
  \clef treble
  a8( e' cis e a, g' e g |
  a,8 a' fis a d, fis b, d |
  cis4) r4 r2 |
  r4 gis'4 a a, |
  \clef bass
  <a e cis>1 |
  <gis e d b>1 |
  a,4 d e e, |

  \barNumberCheck #82
  \tutti
  a4 r4 r2 |
  R1 |
  R1 |
  R1 |

  \barNumberCheck #86
  r2 \solo d'8 fis cis fis |
  b,8 d gis d b d a d |
  gis,8 b e b gis b e, gis |
  a8 cis a gis fis a e a |
  dis,8 fis a fis dis fis b, dis |
  e4 fis gis r4 |
  a4. b8 cis4. ais8 |
  \clef treble
  <<
    {
      r2 a'4 gis |
      fis e dis cis |
    } \\
    {
      b1~ |
      b1 |
    } \\
  >> |
  \clef bass
  <b b,>2 <a a,>4 <g g,> |
  <fis fis,>4 <e e,> <d! d,!> <c c,> |
  <b b,>4 r4 b'8( ais16 gis16 fis e dis cis |
  b4) b,4 r2 |

  \barNumberCheck #99
  <gis''' e>2 <fis dis> |
  <<
    {
      e1~ |
      e1 |
    } \\
    {
      cis2.( b4) |
      <ais cis>1 |
    } \\
  >> |
  <a! b dis>2 r4 <dis, a>4 |
  <<
    {
      e1~ |
      e2 dis2 |
    } \\
    {
      gis,2 cis2 |
      fis,2 b2 |
    } \\
  >> |
  e4 r4 r4 gis,8-. ais-. |
  b4 b' b, r4 |

  \barNumberCheck #107
  R1*6 |
  e8 r gis r b r b, r |
  e16_\legato e' dis e dis e dis e dis e dis e d e b e |
  c16 e dis e b e dis e dis e dis e d e b e |
  a,16 e' dis e gis, e' dis e dis e dis e d e b e |
  a,16( e' cis e a, e' cis e a, e' cis e gis, e' b e) |
  <<
    { b1 | } \\
    { <fis dis>2. <gis e>4 | } \\
  >> |
  \clef treble
  <a fis'>2
  <<
    { gis'4( a) | } \\
    { b,2 | } \\
  >> |
  <cis gis'>4 r4 <bis dis gis>2 |
  <cis e gis>4 r4 <bis dis gis>2 |
  <cis e gis>4 r4 <bis dis gis>2 |
  <cis e gis>4 <cis e>2 <b d? e>4 |
  \clef bass
  a16( e' cis e a, e' cis e a, e' cis e gis, e' b e) |
  <<
    { b1 | } \\
    { <fis dis>2. <gis e>4 | } \\
  >> |
  \clef treble
  <a fis'>2
  <<
    { gis'4( a) | } \\
    { b,2 | } \\
  >> |
  \clef bass
  <<
    { b1 | } \\
    { <fis dis>2. <gis e>4 | } \\
  >> |
  <<
    { b,1 | } \\
    { <fis dis>2. <gis e>4 | } \\
  >> |
  <a cis fis>1 |
  \clef treble
  <a' cis fis>1 |
  <a cis fis>4 r4 r2 |
  \clef bass
  r2 r4 <cis, cis,>4 |
  <b b,>1 |
  R1 |
  R1 |
  \clef treble
  b'16( a' dis, a' \repeat unfold 3 { b, a' dis, a' } |

  \barNumberCheck #137
  \tutti
  <gis e>4) r4 r2 |
}
