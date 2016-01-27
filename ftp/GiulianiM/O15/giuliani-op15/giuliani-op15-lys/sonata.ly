\version "2.19.32"

% Giuliani Opus 15 Sonate Brilliant
% Sonata

upperVoice = \relative c' {
  \voiceOne\slurDown\tieDown
  \repeat volta 2 {
    r1 |
    r2 r8 cis d b |
    c4 c \acciaccatura{d8} c8 b c e |
    g4. f8( f)( e d) c |
    a8 b c cis d4. c8 |

    \mbreak
    b8 d c a g4 r |
    r1 |
    r2 r8 cis d b |
    c4 c \acciaccatura{d8} c8 b c e |
    g4. f8 \acciaccatura{g8} f( e d) c |
    b8 a f' d r <e, c'> r <d b'> |

    \mbreak
    <e c'>4 r8 g c g c e |
    c8 g c e g4 <g, b f'> |
    \override TextSpanner.bound-details.left.text=\markup{\upright "XIII "}
    <e g c e>4 r8 <c' e>\startTextSpan <e g> <c e> <e g> <g c> |
    <e g>8 <c e> <e g> <g c> <g e'>4 <g d'> |
    <e g c>4 <e, g c> q\stopTextSpan r |
    g'4. fis8( g) dis( e) b( |

    \mbreak
    c8) g c e d( c) b a |
    a4 g g8 cis( d) b |
    aes4 g g a8 b |
    c4 r r8 \grace{d32[ c b]} c8 e g |
    g8( fis) a g f e d c |
    c8( b) ais b e d c b |

    \mbreak
    gis8( a) c b gis( a) c b |
    r8 a r a r <e bes'> a g |
    fis4 r r <d' d'>8 q |
    <e cis'>8 q <fis c'> q <g b> q <g bes> q |
    <fis a>2 r4 d8 d |

    \mbreak
    <c ees>8 q <a fis'> q <bes g'> q <g cis> q |
    <fis d'>8 r <d' fis d'>4 r8 cis,8 d( fis) |
    a8( g) fis_. a_. c( b) a_. c_.\turn |
    e8_. d_. c_. b_. a_. g_. fis_. e_. |
    d8 dis( e) d_. c_. b_. a_. d_. |

    \mbreak
    g,4 r r2 |
    b'2. c4 |
    a2. b4 |
    c4 c e d |
    d4. c8 b4 r |

    \mbreak
    r8 g8 g' g, r g fis' g, |
    fis'8 g, e' g, r gis d' gis, |
    r8 <a cis> r <a c> r <g b> <a d> c |
    <g b>2 <fis a>4 r |
    R1 |

    \mbreak
    b2. c4 |
    a2. b4 |
    c4 c e d |
    d4. c8 b4 r |
    r8 g c' g, r g b' g, |
    r8 g e'' g,, r g d'' g,, |

    % page
    \mbreak
    r8 e' a c r <g b> r <fis a> |
    <b, g'>4 r r2 |
    r1 |
    c2 a'4 g |
    fis4 e d c |

    \mbreak
    b4 r r2 |
    r1 |
    c2 a'4 g |
    fis4 e d c |
    b4 r c c8 d16 c |

    \mbreak
    b4 r e e8 fis16 e |
    d4 r g8 g4 fis8~ |
    fis8 e4 d c b8 |
    r8 dis,( e) gis( a) b( c) e |
    r8 <g, d'> r <a c> r <g b> r <fis a> |

    \mbreak
    g4 r8 d e fis g a |
    b4 b <a d> q |
    <ais cis g'>2. <b d fis>4 |
    e4 e d8( cis) b cis |
    d4 r8 dis e fis( g) e |
    cis4 d d d |

    \mbreak
    d4. b8 a b c a |
    e'8( d) b g d' c a fis |
    g8. d'16 d8. d16 d4 <a c>4 |
    \repeat unfold 2 { <g b>8. d'16 d8. d16 d4 <a c>4 | }

    \mbreak
    <g b>4 <a c> <g b> <a c> |
    <g b>4 <g b g'> q q |
    q4 r8 fis g b a c |
    b8 d c e d f e g |
    f4 r r e |

    \mbreak
    f4 e f e |
    f4. gis8( a) e( f) d|
    c4 bes bes bes |
  }
  \alternative {
    { <g b>2 r | }
    { <b, e gis b e>4 \tupletSpan 4 \tuplet 3/2 {e8 b e, gis' e b b' gis e } | }
  }

  \mbreak
  e'4 <gis, b d> q q |
  <e a c>4 \tuplet 3/2 { e8 a, e a' e a, c' a e } |
  e'4 <dis, a' c> q q |
  <e gis b>4 \tuplet 3/2 { e8 b e, gis' e b b' gis e } |
  e'4 <b d gis> q q |

  \mbreak
  <c e a>4 \tuplet 3/2 { e,8 a, e a' e a, c' a e } |
  e'4 <c dis a'> q q |
  <b e gis>4 \tuplet 3/2 { e,8 b e, gis' e b b' gis e } |
  e'4 \tuplet 3/2 { e,8 b e, gis' e b b' gis e } |
  e'4 <e gis e'>2 r4^\fermata |

  % page
  \mbreak
  <a e>2 r8 \slashedGrace{f8} e8 d c |
  b4 a r8 a b cis |
  d4 d e e |
  r8 a, f' a, r a e' a, |
  r8 fis a dis r <gis, b> <a c> <b d> |
  r8 e, a c e c b a |

  \mbreak
  gis8 e' a, e' d e c e |
  b4 r \slashedGrace{dis,8} e4 r |
  \slashedGrace{dis8} e4 r8. dis'32( fis e8.) dis32( fis e8.) dis32( fis |
  e8)_\dolce eis( fis) e( d) cis_. b_. a_. |
  gis8 fis e dis e f fis g |

  \mbreak
  gis8 a ais b c cis d dis |
  <cis e>2 r8 \slashedGrace{fis8} e8 d cis |
  b4 a r8 a b cis |
  d4 d d d |
  r8 eis( fis) e d cis b a |
  gis8 b e gis b( gis) e_. d_. |

  \mbreak
  r8 cis e a r b, d fis |
  e8 cis d b cis a b gis |
  \repeat unfold 2 { r8 a e,\sf c'' b a c, a' | }
  \tuplet 3/2 {
    r8 gis b f' b, gis f' b, gis f' b, gis |
    e' b gis r8 gis d' r a c r gis b |
  }
  \mbreak

  r8 a e,\sf c'' b a c, a' |
  r8 a e, c'' b a c, a' |
  \tuplet 3/2 {
    r8 gis b f' b, gis f' b, gis f' b, gis |
    e' b gis r8 gis d' r a c r gis b |
  }
  r8 c e r r f d r |
  r8 e c r r d b r |

  \mbreak
  \repeat unfold 2 { r8 c a4 r8 c a4 | }
  \repeat unfold 2 { r8 gis b e dis c b a | }
  gis4 <gis b e> q q |
  q2 r |

  \mbreak
  r4 <b d g> q q |
  g'4. gis8( a) e( f) cis( |
  d8) e( g) f_. e_. d_. c_. b_. |
  a8 g fis g fis g fis g |
  f4 r r8 cis'8 d b |
  c4 c \slashedGrace{d8} c8 b c e |
  g4. f8 f( e) d c |

  \mbreak
  a8 b c cis d4. c8 |
  b8 d c a g4 r |
  R1 |
  r2 r8 cis d b |
  c4 c \slashedGrace{d8} c8 b c e |
  g4. f8 \slashedGrace{g8} f8( e) d c |

  \mbreak
  a8 b c cis d4. c8 |
  r8 b c d e4. d8 |
  r8 c d e f4. e8 |
  r8 d e f g4. f8 |
  \repeat unfold 2 { e4 g f g | }

  \mbreak
  f8( e) d c b d c a |
  \repeat unfold 2 { b4 d c d | }
  b8 g a b c d e fis |
  g4 <b, g'> <g b g'> q |
  q4 r r8 fis\p g b |

  \mbreak
  d8( c) b_. d_. f( e) d_. f_.\turn |
  a8[( g) \grace{f16[ g]} f8_. e_.] d( c) b_. a_. |
  g8_. gis8( a) g_. f_. e_. d_. g_. |
  c,4 r r2 |
  e'2. f4 |
  d2. e4 |

  \mbreak
  f4 f a g |
  g4. f8 e4 r |
  r8 c c' c, r c b' c, |
  r8 c a' c, r cis g' cis, |
  r8 <d fis> r <d f> e c a d |
  r8 e, g c <d, g b>4 r |

  \mbreak
  R1 |
  e'2. f4 |
  d2. e4 |
  f4 f a g |
  g4. f8 e4 r |
  r8 c f c r c e c |

  \mbreak
  r8 c a' c, r c g' c, |
  r8 a d f r <c e> r <b d> |
  c4 r r2 |
  s1 |
  f2 b,4 c |
  d4 e f b, |

  \mbreak
  c4 r r2 |
  s1 |
  f2 f4 e |
  d4 e f d |
  e4 r f f |
  e4 r a a |

  \mbreak
  g4 r r8 c r b |
  r8 a r g r <b, f'> r <c e> |
  r8 gis( a)_\dolce cis( d) e( f) d |
  r8 <c g'> r <d f> r <c e> r <b d> |
  <e, g c>4 r8 g,8\p a b c d |
  e4 e <d g> q |
  <d a' c>2. <d g b>4 |

  \mbreak
  r8 a' c e d b c a |
  g4 r8 gis'\p a b c a |
  g4 <g, d' f> q q |
  f'8( e) d c b a f' d\pf |
  r8 e, g c r d, g a |
  c8. g'16 g8. g16 g4 <d f>4 |

  \mbreak
  \repeat unfold 2 { <c e>8. g'16 g8. g16 g4 <d f> | }
  <c e>4 <d f> <c e> <d f> |
  e4 c'8. c16 g8. g16 e8. e16 |
  c4 r <e g c> r |
  <e, g c>2 r^\fermata

  \bar "|."
}

lowerVoice = \relative c {
  \voiceTwo\slurUp\tieUp
  e8\p g e g e g e g |
  f8 g f g f g f g |
  e8 g e g e g e g |
  d8_\cresc g b, g'\! c,4 d8 e |
  f2 r8 d e fis |

  g4\pf d b r |
  e8\p g e g e g e g |
  f8 g f g f g f g |
  e8 g e g e g e g |
  d8 g b, g' c,_\cresc g' e, g'\! |
  f,2\f g4 g |

  c4 r8\f g c g c e |
  c8 g c e g4 g, |
  c4 r r2\pf |
  r2 r4 <b' f'> |
  c4\f c, c r |
  r1_\dolce |

  r1 |
  r4 <b f'> q r |
  r4\sf <b f'> q r |
  c8 g' e g c,4 r |
  a2 r8 c b a |
  g4 r r8 g a b |

  c4.\sf d8 c4.\sf d8 |
  c8 e c e\sf cis2 |
  d8\p d d d d d d d |
  d8\< d d d d d d d\! |
  d8\f d\p d d d d d d |

  d8 d\< d d d d d d\! |
  d8 r d4\f r2 |
  R1 | R1 | s1 |

  g,8 d' cis d_\dolce cis d cis d |
  g,8 d' cis d g, d' a d |
  fis,8 d' cis d fis, d' g, d' |
  a8 d a\turn d c d b d |
  a8 d fis, d' g, g' fis g |

  e2\pf d |
  c2 b |
  a4 fis\dim g\! c |
  r8 cis d cis d c b a |
  g8 d'^\dolce cis d cis d cis d |

  g,8 d' cis d g, d' a d |
  fis, d' cis d fis, d' g, d' |
  a8 d\turn a d c d b d |
  a8 d fis, d' g, g' fis g |
  e2\f d |
  c'2 b |

  % page
  c,2 d4 d |
  r8\f g,( a b) c( d e fis) |
  g8( a b c d) d,^. g^. b^. |
  a8_\dolce d, d d c' d, b' d, |
  a'8 d, c' d, b' d, a' d, |

  g8\f g,( a b) c( d e fis) |
  g8 d b' g d' d, g b |
  a8_\dolce d, d d c' d, b' d, |
  a'8 d, c' d, b' d, a' d, |
  g,8\p g' fis g e\cresc g e\! g |

  d8 g fis g a, g' a, g' |
  b,8 g' fis g d g d g |
  c,8\f g' b, g' a, fis' g, g' |
  c,2 r |
  b4\pf c d d |

  g,4 r s2 |
  r4 g' fis fis |
  e2. d4 |
  <g, b'>2\f <a g'> |
  <d fis>4 r r2 |
  r4 <d c'> q <fis c'> |

  <g b>4 r a, r |
  d4 r d r |
  g,4 r r fis8 d' |
  g,4 r r fis8\sf d' |
  g,4 r r fis8 d' |

  g,8\f d' fis, d' g, d' fis, d' |
  g,4 g' d b |
  g4 r r fis |
  g4 a b c |
  d4 r r cis8 g' |

  d8 g cis, g' d g a, g' |
  d4 r r2 |
  r4 <f a> q q |
  e2 r |
  e,4\ff s4 s2 |

  r4\f e e e |
  e4\sf s s2 |
  r4\f e e e |
  e4\sf s s2 |
  r4\f e e e |

  e4\sf s s2 |
  r4\f e e e |
  e4\sf s s2 |
  s1 |
  r4 e2\ff r4_\fermata |

  % page
  r8\p a8 c e a,4 r |
  r8 a c e a, a'\< gis g |
  f8 a f a\! cis, a' cis, a' |
  d,2\pf c |
  b2\sf e, |
  a2 r |

  d4_\dim c\! b a |
  gis4 r e\p r |
  e4 r r2 |
  r1 |
  s1 |

  R1 |
  r8\pf a( cis e) a,4 r |
  r8\pf a cis e a, a'\< gis g |
  fis\! a fis a cis, a' cis, a' |
  d,2 r |
  e,2\pf r |

  a2 d |
  a4 d e e, |
  a2 r |
  a2 r |
  d1 |
  r4 b a e |

  a2 r |
  a2 r |
  d1\f |
  r4 b a e |
  a8 r r c[ d] r r b[( |
  c)] r r a[ b] r r gis |

  a4 r8 a f4 r8 a |
  e4 r8 a dis4 r8 dis |
  \repeat unfold 2 { e,2\sf f\p | }
  e4 d'\f b gis |
  e2 r |

  r4\p f'4 f f |
  <f b d>4 r r2 |
  r1 |
  s1 |
  \repeat unfold 2 { f8 g\p f g f g f g | }
  d8 g b, g' a,4 d8 e |

  f2 r8 d e fis |
  g4\pf d b r |
  e8\p g e g e g e g |
  \repeat unfold 2 { e8 g e g e g e g | }
  d8\cresc g b, g'\! c, g' e, g' |

  f,4\f r r8 d' e fis |
  g4 r r8 e fis gis |
  a4 r r8 f g a |
  b4 r r8 g a b |
  \repeat unfold 2 { c8 g e' g, d' g, b g | }

  %page
  c,2 d |
  \repeat unfold 2 { g,8 d' b d a d fis, d' | }
  g,4 r r2 |
  r4\f g' d b |
  g4 r r2 |

  r1 |
  r1 |
  s1 |
  c8 g'_\dolce fis g fis g fis g |
  c,8 g' fis g c, g' d g |
  b,8 g' fis g b, g' c, g' |

  d8 g d g f g e g |
  d8 g b, g' c,[ \slashedGrace{\once\stemUp d'8} c b c] |
  a2\pf g |
  f2\sf e |
  d4 b c f, |
  g2 g8 f' e d |

  c8 g'_\dolce fis g fis g fis g |
  c,8 g' fis g c, g' d g |
  b,8 g' fis g b, g' c, g' |
  d8 g d g f g e g |
  d8 g b, g' c, \slashedGrace{\once\stemUp d'8} c b c |
  a2\f g |

  f2 e |
  f,2 g4\pf g |
  r8\f c d( e f) g( a) b( |
  c) d e( f g) g,^. c^. e^. |
  d8_\dolce g, g g g, g' a, g' |
  b,8 g' c, g' d g f g |

  e8 c d( e f) g( a) b( |
  c8) g e' c g' g, c e |
  d8_\dolce g, g g d g c, g' |
  b,8 g' c, g' d g b, g' |
  c,8 \slashedGrace{\once\stemUp d'8} c d c a c a c |
  g8 \slashedGrace{\once\stemUp d'8} c b c f, c' f, c' |

  e,8 \slashedGrace{\once\stemUp d'8} c b c a4\f g |
  f4 e d c |
  f,2 r |
  e'4 f\f g g, |
  c4 r s2 |
  r4 c\< b b |
  fis2.\sf g4 |

  c2\f d4 d |
  g,4 r r2 |
  r4 g a b |
  <c g'>2 f, |
  g2 g |
  <c e>4 r r\sf b8 g' |

  \repeat unfold 2 { c,4 r r\sf b8 g' | }
  c,8\sf g' b, g' c, g' b, g' |
  <c, c'>4 c' g e |
  c4 r c' r |
  <e,, c'>2\ff r_\fermata
}
