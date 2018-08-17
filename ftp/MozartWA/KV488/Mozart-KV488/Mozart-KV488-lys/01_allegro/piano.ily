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
  R1*11 |

  \barNumberCheck #149
  \solo
  r16 gis,( a b cis dis e fis gis2~) |
  gis8 a16( gis fis gis fis eis fis gis a gis b a gis fis |
  e!16 dis cis b dis b fis' dis b'2~) |
  b8 e16( dis e dis cis b a2~) |
  a4 gis~ gis8 cis16( b a gis fis e |
  dis16 e fis gis a fis e dis e fis gis fis e dis cis b |
  a16 b cis b a gis fis e dis e fis e dis cis b a |

  \barNumberCheck #156
  gis4) \tutti r4 r2 |
  R1 |

  \barNumberCheck #158
  r16 \solo b'16( e g b b, ais' b, b' b, e g b b, ais' b, |
  b'16 b, ais' b, b' b, g' b, a' b, gis' b, a' b, fis' b, |

  \barNumberCheck #160
  g'4) \tutti r4 r2 |
  R1 |

  \barNumberCheck #162
  r16 \solo g,( c e g g, fis' g, g' g, c e g g, fis' g, |
  g'16 g, fis' g, g' g, e' g, f' g, e' g, f' g, dis' g, |

  \barNumberCheck #164
  e'4) \tutti r4 r2 |
  R1 |

  \barNumberCheck #166
  r4 \solo c'!4 f,!2~ |
  f8( g16 f e8. f16 g4 c,) |
  a'16-. a( gis! g fis! f e ees) d2~ |
  d8 cis!16_\legato d e d cis b cis d e f g a b cis |

  \barNumberCheck #170
  d16 a g a f g e f d f e f d e c d |
  b16 d c d b c a b g a b c d e f g |
  e16 g f g e f d e c e d e c d b c |
  a16 c b c a b g a f g a b c d e f |
  d16 f e f d e c d b d c d b c a b |
  gis!16 b a b gis a fis! gis e fis gis a b c d e |
  c16 e d e c d b c a b c d e fis! gis! e |
  a16 e c a \repeat unfold 6 { a' a, } |

  \barNumberCheck #178
  <gis' e b>4 \tutti r4 r2 |
  R1 |

  \barNumberCheck #180
  r16 \solo a,16( gis! a gis a b a c a d a dis a e' a, |
  f'16 a, fis' a, g' a, gis' a, a'8) a\turn( c8 a |

  \barNumberCheck #182
  e'4) \tutti r4 r2 |
  R1 |

  \barNumberCheck #184
  r16 \solo a,,16( gis a gis a b a c a d a dis a e' a, |
  f'16 a, fis' a, g' a, gis' a, a'8) a\turn( c8 a |
  e'4) r8 e,8( f4) r8 dis'8( |
  e4) r16 e,16( f e f4) r16 dis'16( e dis |
  \repeat unfold 2 { e16 e, e' e, f dis' f, dis' } |
  % Note: We expand these turns because two of them are chromatic (the
  % first trill goes down to ais, not a; the third goes down to dis, not
  % d). We need to communicate this both to the reader and to
  % articulate.ly. The construction described for "creating a delayed
  % turn" in the LilyPond docs would (with some hacks) have the correct
  % visual appearance, but the MIDI output would be wrong. Reifying the
  % notes also makes it easier to read for those unfamiliar with the
  % accidental-turn notation.
  e4.) cis32( b ais b e4.) a,32( gis fis gis |
  b4.) fis32( e dis e gis8) b,( e) gis,( |
  \staffDown \clef bass \staffUp
  b8) e,( gis) b,(
  \stemUp
  \once \override Beam.positions = #'( 1 . 0 ) e)
  \staffDown gis,( b) e,^( \stemNeutral |
  \tuplet 3/2 4 {
    \stemUp dis8 a' fis \staffUp \stemNeutral dis' a fis' dis a' fis dis' a fis' |
    dis8 a' fis
  }
  cis'16 b a gis fis e dis cis \tuplet 6/4 { b a gis fis e dis } |
  d4~) d16( b gis' fis gis e b' a b gis d' cis |
  d16 b gis' fis gis e b' a b gis d' cis d cis d cis |
  d16 e d cis b a gis fis e d cis b a gis fis e |
  d16 e d cis d dis e eis fis g gis a \tuplet 6/4 { ais b c cis d dis } |

  \barNumberCheck #198
  e4) \tutti r4 r2 |
  R1*7 |

  % The \barNumberCheck has to be be inside the \acciaccatura target,
  % because when \articulate is in play, the next measure does not start
  % until then.
  \acciaccatura e16 { \barNumberCheck #206 \solo e'2 } \acciaccatura cis,16 cis'2 |
  d,4~( d16 fis a d) b,( d fis b) gis,( b d gis |
  a,8 a' a, <gis' e> a, <fis' d> a, <e' cis>) |
  <<
    { e4.( gis16 fis) e4 } \\
    { d2 cis4 } \\
  >> r4 |
  \stemUp
  e'8^( d16 cis b a gis fis e d cis b a gis fis e |
  d8 e16 fis gis a b cis d e fis gis a b cis d) |
  d16^( cis b a gis fis e d \stemNeutral cis d dis e) e( d cis b |

  \barNumberCheck #213
  \tutti
  a4) r4 r2 |
  R1 |
  R1 |
  R1 |

  \barNumberCheck #217
  r2 \solo r8 d8 d d |
  gis!16_\legato a gis fis gis a b cis d e d cis b a gis fis |
  e16 fis e dis e fis gis a b cis b a gis fis e d |
  cis16 e d cis d e fis gis a b a gis fis e d cis |
  b16 cis b ais b d cis e d e d cis d fis e g |
  fis gis! a gis fis e d cis d e fis e d cis b a |
  gis16 e gis b e b gis e r gis( b fis') r a,( cis e) |
  r16 gis,( b d) r e,( a cis) r e,( gis b) r dis,( fis a |
  gis16 e gis b e b gis e) r gis( b f' ) r a,( c e) |
  r16 d,( gis d') r f,( a c) r b,( e b') r a,( dis a' |
  gis16 e fis! gis a b cis! dis e8) fis16( gis a b cis dis |
  e4)-. e,-. r4 cis8( d! |
  fis8 e) e8. e16 e4 e4 |
  e8( a gis fis e dis d cis) |
  cis8( b) b8. b16 b4 b4 |
  b8( e dis d cis b a gis |
  fis8 e) e8. e16 e8( cis' a fis |
  e8 d) d8. d16 d8( b' gis d |
  cis16 e d cis d e fis gis a b cis d <e a,>8)-. <fis a,>8-. |
  <cis a>2( <b gis>4) r4 |
  R1 |
  r8 a16( a' gis, gis' fis, fis' e, e' dis, dis' d, d' cis, cis') |
  cis8( b8) b4 r2 |
  r8 e16( e' dis, dis' d, d' cis, cis' b, b' a, a' gis, gis' |
  fis8 e) e4 r2 |
  r8 gis,16( gis' a, a' ais, ais' b, b' cis, cis' d, d' dis, dis') |
  e16( cis e cis a4. cis8 b gis) |

  \barNumberCheck #244
  a4 r4 r4 a,8.-. a16-. |
  <d a d,>4 <cis a e>4 r4 a8.-. a16-. |
  d8( e16 f e4) r2 |
  <fis! d a>8 r fis4.( a16 gis a gis fis e) |
  % Same polyphony deal as in measure 119 (see comment there).
  <<
    {
      \stemNeutral
      e( d fis e d cis b a gis fis e d cis e a cis |
      fis,16 b d fis e d cis b a4 \stemUp cis8 b) |
    } \\
    {
      s1 |
      s2 s4 gis4 |
    } \\
  >>
  a4 r4 cis4~( cis16 d cis b |
  a4) r4 cis4~( cis16 d cis b |
  a4) r4 cis4~( cis16 d cis b |
  a16 b a gis \tuplet 3/2 4 { a8) bes-. b-. c-. cis-. d-. dis-. e-. eis-. } |
  fis8 r8 fis4.( a16 gis a gis fis e!) |
  e16( d fis e d cis b a gis fis e d cis e a cis) |
  fis,16( b d fis e d cis b a4 gis4) |
  b'16( ais cis b d cis b a gis fis e d cis a' e cis |
  b16 ais cis b d cis b a gis fis e d cis e a cis) |
  r8 fis16( e d cis b a gis8) gis'16( fis e d cis b |
  a8) a'16( gis fis e d cis b4) b' |

  \barNumberCheck #261
  r2
  <<
    {
      cis,2~ |
      cis4 b8. cis16 d4 b4 |
      gis4 e e'2~ |
      e4 a8. fis16 d2~ |
      d4 cis2 b8. a16 |
      gis4 a
    } \\
    {
      a2 |
      fis1 |
      e4 s4 s2 |
      a2 r2 |
      r2 fis2 |
      e2
    } \\
  >>
  d'4. \startTrillSpan cis16 \stopTrillSpan d16 |
  cis16_\legato e d cis d e fis gis a gis a b cis b a gis |
  fis16 eis fis gis a gis fis e d cis d e fis e d cis |
  b16 cis d cis b a gis fis e fis gis a b cis d e |
  a,16 b cis d e fis gis a d, e fis gis a b cis d |
  gis,,16 b d gis a, cis e a fis g fis e d e d cis |
  b16 cis d e fis gis! a b cis b a gis fis e d cis |
  d16 e fis gis a b cis d e d cis b a gis fis e |
  fis16 g fis e d cis b a gis! a gis fis e d cis b |
  a8 b16 cis d e fis gis a b cis d e fis gis a |
  g16 a fis g e fis d e cis d b cis a b g a |
  \tuplet 3/2 4 { fis8 d a' fis d ' a fis' d a' fis d' a } |
  r16 a16 c a fis a dis, fis c dis a c fis, a dis, fis |
  r16 e dis e fis e gis e a e b' e, cis' e, d'! e, |
  r16 e' dis e fis e gis e a e b' e, cis' e, d'! e, |
  e'16 cis gis a cis a dis, e a e bis cis e cis gis a |
  r16 e fis gis a b cis d! e fis gis a b cis d e |
  #(define --old-afterGraceFraction afterGraceFraction)
  #(define afterGraceFraction (cons 15 16))
  \afterGrace { b1 \startTrillSpan } { a32 \stopTrillSpan b } |
  #(define afterGraceFraction --old-afterGraceFraction)

  \barNumberCheck #284
  \tutti
  a4 r4 r2 |
  R1*13 |

  \barNumberCheck #298
  \solo
  #(define --old-afterGraceFraction afterGraceFraction)
  #(define afterGraceFraction (cons 15 16))
  \afterGrace { b1 \fermata \startTrillSpan -\cadenza } { a32 \stopTrillSpan b } |
  #(define afterGraceFraction --old-afterGraceFraction)

  \barNumberCheck #299
  \tutti
  a4 r4 r2 |
  R1*15 | \bar "|."

  \barNumberCheck #315
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
  \clef bass
  R1*11 |

  \barNumberCheck #149
  \solo
  r2 \clef treble e16( fis gis a b cis dis e) |
  a,1~ |
  a2 gis16( a b a gis fis gis e) |
  cis'2~ cis8 fis16( e fis e dis cis |
  b8) e16( dis e dis cis b a2~) |
  a2 gis4 r4 |
  \clef bass
  fis,4 r b, r |

  \barNumberCheck #156
  e4 \tutti r4 r2 |
  R1 |

  \barNumberCheck #158
  << { s16 \solo } r4 >> \clef treble g'8-. fis-. g4 g8-. fis-. |
  g8-. fis-. g-. e-. fis-. eis-. fis-. dis-. |

  \barNumberCheck #160
  e!4 \tutti r4 r2 |
  R1 |

  \barNumberCheck #162
  << { s16 \solo } r4 >> e8-. dis-. e4 e8-. dis-. |
  e8-. dis-. e-. cis!-. d-. cis-. d-. b-. |

  \barNumberCheck #164
  c!4 \tutti r4 r2 |
  R1 |

  \barNumberCheck #166
  << { s4 \solo } r2 >> r4 <f! a>4 |
  <<
    { <g! bes>4~ q8. <f! a>16 g4( bes) | } \\
    { c,!1 | } \\
    { s2 e2 | } \\
  >> |
  << a4 \\ f4 \\ >> r4 r4 <f d>4 |
  <g e a,>1 |

  \barNumberCheck #170
  <d f>4 r4 r2 |
  \clef bass
  <g, g,>4 r4 <b b,>4 r4 |
  <c c,> r4 r2 |
  <f, f,>4 r4 <a a,>r4 |
  <b b,>4 r4 r2 |
  <e, e,>4 r4 <gis! gis,!>4 r4 |
  <a a,>4 r4 r2 |
  <f f,>1 |

  \barNumberCheck #178
  <e e,>4 \tutti r4 r2 |
  R1 |

  \barNumberCheck #180
  << { s16 \solo } <e e,>1~ >> |
  q1~ |

  \barNumberCheck #182
  q4 \tutti r4 r2 |
  R1 |

  \barNumberCheck #184
  << { s16 \solo } q1~ >> |
  q1 |
  \clef treble
  r8 <e' gis b>8 q4 r8 <e a c>8 q4 |
  r8 <e gis b>8 q4 r8 <e a c>8 q4 |
  <<
    { <gis b>4 <a c> <gis b> <a c> | } \\
    { e2 e2 | } \\
  >> |
  <e gis b>4 r4 r2 |
  R1
  \clef bass
  R1
  % These notes would clash with the right-hand part if they had a stem,
  % but they're whole notes, so the warning is spurious.
  \once \override NoteColumn #'ignore-collision = ##t
  <e,, fis a>1~ |
  q1 |
  <e gis b>1~ |
  q1 |
  R1 |
  R1 |

  \barNumberCheck #198
  << { s4 \tutti } R1*8 >>

  \barNumberCheck #206
  \solo
  \clef treble
  a'8( e' cis e a, g' e g |
  a, a' fis a d, fis b, d |
  cis4) r4 r2 |
  r4 gis'4 a a, |
  \staffUp \stemDown cis'8_( b16 a gis fis e d
  \staffDown \clef bass cis b a gis fis e d cis |
  b8 cis16 d e fis gis a b \staffUp cis d e fis gis a b |
  a4) \stemNeutral \staffDown d,,4 e e, |

  \barNumberCheck #213
  \tutti
  a4 r4 r2 |
  R1 |
  R1 |
  R1 |

  \barNumberCheck #217
  r2 \solo \clef treble d'8 fis cis fis |
  b,8 d gis d b d a d |
  \clef bass
  gis,8 b e b gis b e, gis |
  a cis a gis fis a e a |
  <<
    {
      fis1~ |
      fis2 b |
      r2 d4 cis |
      b4 a gis fis |
    } \\
    {
      d1~ |
      d2~ d4. dis8 |
      e1~ |
      e1 |
    } \\
  >> |
  e2 <d d'>4 <c c'>4 |
  <b b'>4 <a a'> <g g'> <f f'> |
  <e e'>4 r4 \clef treble e''8( fis!16 gis a b cis dis |
  e4)-. e,-. r2 |

  <a cis>2 <gis b>2 |
  <<
    { a1 | } \\
    { fis2.( e4) | } \\
  >> |
  <dis! fis a>1 |
  <d! e gis>2 \clef bass r4 <d, gis>4 |
  <<
    {
      a'1~ |
      a2
    } \\
    {
      cis,2 fis2 |
      b,2
    } \\
  >>
  <e gis>2 |
  <a, a'>4 r4 r4 cis8-. dis-. |
  e4 e' e, r |
  R1*6 |
  a8 r cis r e r e, r |

  \barNumberCheck #244
  a,16^\legato a' gis a gis a gis a gis a gis a g a e a |
  f16 a gis! a e a gis a gis a gis a g a e a |
  d,16 a' gis! a cis, a' gis a gis a gis a g a e a |
  d,16 a' fis! a d, a' fis a d, a' fis a cis, a' e a |
  <<
    {
      e1 |
      b'2 cis4 d |
    } \\
    {
      <b, gis>2. <cis a>4 |
      d2 e2 |
    } \\
  >> |
  <fis cis'>4 r4 <eis gis cis>2 |
  <fis a cis>4 r4 <eis gis cis>2 |
  <fis a cis>4 r4 <eis gis cis>2 |
  <fis a cis>4 <fis a>2 <e! g! a>4 |
  d16( a' fis a d, a' fis a d, a' fis a cis, a' e a) |
  <<
    {
      e1 |
      b'2 cis4 d |
      e1 |
      e,1 |
      fis4 b2 cis4~ |
      cis4 d2 e4 |
    } \\
    {
      <b, gis>2. <cis a>4 |
      d2 e2 |
      <gis b>2. <a cis>4 |
      <b, gis>2. <cis a>4 |
      d2 e2 |
      fis2 gis2 |
    } \\
  >> |

  \barNumberCheck #261
  r2 <e' a,>2 |
  <<
    {
      d1 |
      b4
    } \\
    {
      d,1~ |
      d4
    } \\
  >>
  e8. d16 cis4 a |
  fis'2. b8. gis16 |
  e4 a8. fis16 d4 d'4~ |
  d4 cis <b fis'> \clef treble <e gis> |
  <a, a'>4 r4 r2 \clef bass |
  R1 |
  R1 |
  R1 |
  R1 |
  \repeat unfold 3 {
    \repeat unfold 4 { e,16 e' dis e } |
  } |
  fis,4 r4 r2 |
  <cis' e a>1 |
  <d fis a>4 r4 r2 |
  <dis fis a c>1 |
  <<
    {
      cis'!4( d!8 b cis gis a b) |
      cis4( d8 b cis gis a b) |
      cis4
    } \\
    {
      e,1 |
      e1 |
      e4
    }
  >>
  r4 r2 |
  <e e,>4 r4 r2 |
  \clef treble
  e'16( d' gis, d' e, d' gis, d' e, d' gis, d' e, d' gis, d' |

  \barNumberCheck #284
  \tutti
  <cis a>4) \clef bass r4 r2 |
  R1*13 |

  \barNumberCheck #298
  \solo
  r2 \fermata \clef treble <e, gis d'>2 \fermata |

  \barNumberCheck #299
  \tutti
  <a cis>4 r2 r4 |
  R1*15 |
  \bar "|."

  \barNumberCheck #315
}
