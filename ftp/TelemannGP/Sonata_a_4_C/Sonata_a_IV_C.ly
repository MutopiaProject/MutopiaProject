\version "2.18.2"
\language "deutsch"

% Grave %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

graveGlobal = {
  \set Score.tempoHideNote = ##t
  \key c \major
  \time 4/4
  \tempo 4=64
}

graveAViolinI = \relative g'' {
  \graveGlobal
  g4 c,2 h4
  a2 h4 c
  a4 h c2~
  c4 h cis d~
  d4 c! h r
  fis'4 h,2 a4
  g2 a4 r
  e'4 a,2 g4
  f4 r g' c,~
  \barNumberCheck 10
  c4 h c8 e e e
  r8 e \p e e r es \pp es es
  r8 es \ppp es es g,,2~ \f
  g1~
  g4 a g2
  c1 \bar "||"
}

graveAViolinII = \relative d'' {
  \graveGlobal
  r2 d4 g,~
  g4 f2 e4
  fis4 g a2
  d,4 f! e r
  e'4 a,2 g4
  fis2 e4 r
  g'4 c,2 h4
  r4a d, e
  f2 c
  \barNumberCheck 10
  g2 c8 c' c c
  r8 c \p c c r c \pp c c
  r8 c \ppp c c r h \f c h
  c8 es16 d c8 h c es16 d c8 h
  c4 fis, g2
  g2 r \bar "||"
}

graveAViolinIII = \relative g' {
  \graveGlobal
  R1
  r2 g4 c,~
  c4 h a2
  g2 a~
  a2 e'
  h2 cis4 dis
  e2 fis4 gis
  a4 r f' b,~
  b4 a g2~
  \barNumberCheck 10
  g2 g8 g g g
  r8 g \p g g r fis \pp fis fis
  r8 g \ppp g g r8 g \f es g
  c8 c, es g c c, es g
  c,4 c8 d es d16 c d4
  e!2 r \bar "||"
}

graveAViolinIV = \relative d'' {
  \graveGlobal
  R1
  R1
  d4 g,2 fis4
  g2. f!4
  e4 r h'' e,~
  e4 dis e fis
  h,4 r a' d,~
  d4 c r2
  c4 f,2 e4
  \barNumberCheck 10
  d4 f  e8 c c c
  r8 h \p h h r a \pp a a
  r8 g \ppp g g r d'' \f es d
  es8 g16 f es8 d es g16 f es8 d
  es8  d16 c c2 h4
  c1 \bar "||"
}

% Allegro %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

allegroGlobal = {
  \set Score.tempoHideNote = ##t
  \key c \major
  \time 2/2
  \tempo 4 = 130
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \set Timing.beamExceptions =
  #'((end . ( ((1 . 8) . (4 4 4 ))   ;rule for 1/8 beams -- end each 1/2
              ((1 . 16) . (4 4 4 ))  ;rule for 1/16 beams -- end each 1/4
              )))
}

allegroAViolinI = \relative e'' {
  \allegroGlobal
  \repeat volta 2 {
    e16  g e g d g d g e g e g d g d g
    c,16 e c e h d h d c e c e h d h d
    g,16 c g e g h g h g c g e g h g h
    c,8 c g' g, c c g' g,
    e''16 g e g d g d g e g e g d g d g
    e16 g e g e c' e, c' d, fis d fis d h' d, h'
    c,16 e c e c a' c, a' h, d h d a d a d
    h16 d h d a d a d g, h g h fis a fis a
    g16 h g h fis a fis a d, g d h d fis d fis
    \barNumberCheck 10
    d 16 g d h d fis d fis g,8 g d' d
    g,8 g d' d h'16 d h d a d a d
    h16 d h d a d a d h g' h, g' d g d g
    e16 g e g c, a' c, a' fis a fis a d, h' d, h'
    g16 h g h e, c' e, c' a c a c fis, d' fis, d'
    h16 d h d d, d' d, d' h  d h d d, d' d, d'
    h8 g d'4 r8 g, c4
    r8 fis, h4 r8 e, a4
    r8 d, g4 r16 g a g fis e d c
    h16 g' h, g' h, g' h, g' a, g' a g fis e d c
    \barNumberCheck 20
    h16 g' h, g' h, g' h, g' a, fis' a, fis' a, fis' a, fis'
    g8. a16 fis8. g16 g4 r
  } \break
  \repeat volta 2 {
    g,16 h g h a c a c h d h d c e c e
    d16 g d g c, g' c, g' h,4 r
    g16 h g h a c a c h d h d c e c e
    d16 g d g d f d f d e d e h e h e
    c4 r r2
    r2 a16 c a c h d h d
    c16 e c e d f d f e a e a d, a' d, a'
    c,16 a' c, a' cis, g' cis, g' d fis d fis c fis c fis
    \barNumberCheck 30
    h,16 h' h, h' dis, a' dis, a' e gis e gis d! gis d gis
    c,16 c' c, c' e, h' e, h' f a f a e a e a
    d,16 a' d, a' c, a' c, a' h, a' h, a' h, gis' h, gis'
    a16 e, e e e e e e e e e e e e e e
    e16 e e e e e e e f f f f f f f f
    g16 g g g g g g g fis fis fis fis fis fis fis fis
    f!16 f f f f f f f c' e c e d f d f
    e16 g e g f a f a g c g c f, c' f, c'
    e,4 r c16 e c e d f d f
    e16 g e g f a f a g c g c e, c' e, c'
    \barNumberCheck 40
    a16 c a c f, d' f, d' g, h g h e, c' e, c'
    a16 c a c f, c' f, c' d, c' d, c' d, h' d, h'
    c8 e, f4 r8 fis g4
    r8 gis a4 r8 a b4
    r8 h! c4 r16 c d c h a g f
    e16 c' e, c' e, c' e, c' d, c' d c h a g f
    e16 c' e, c' e, c' e, c' d, h' d, h' d, h' d, h'
    c8. d16 h8. c16 c4 r
  }
}

allegroAViolinII = \relative e'' {
  \allegroGlobal
  \repeat volta 2 {
    R1
    e16 g e g d g d g e g e g d g d g
    c,16 e c e h d h d c e c e h d h d
    g,16 c g e g h g h g c g e g h g h
    c,8 c g' g, c c g' g,
    c'16 e c e c a' c, a' h, d h d h g' h, g'
    a,16 c a c a fis' a, fis' g,4 r
    r2 h16 d h d a d a d
    h16 d h d a d a d g, h g h fis a fis a
    \barNumberCheck 10
    g16 h g h fis a fis a d, g d h d fis d fis
    d16 g d h d fis d fis g,8 g d' d
    g,8 g d' d g, g' g, g'
    c,8 c' c, c' d, d' d, d'
    e,8 e' e, e' fis, fis' fis, fis'
    g16 h g h fis a fis a g h g h fis a fis a
    g4 r8 a g4 r8 g
    fis4 r8 fis e4 r8 e
    d4 r8 d d4 r
    g,16 g, g' g, g' g, g' g, d'4 r
    \barNumberCheck 20
    g16 g, g' g, g' g, g' g, fis' d fis d fis d fis d
    h8 g d'8. d16 g,4 r
  }
  \repeat volta 2 {
    r2 g'16 h g h a c a c
    h16 d h d c e c e d g d g c, g' c, g'
    h,4 r g16 h g h a c a c
    h16 d h d h d h d h d h d e, h' e, h'
    e,4 r r2
    a16 c a c h d h d c e c e d f d f
    e16 a e a d, a' d, a' c, 4 r
    a,8 a' a, a' a16 d, a' d, a' d, a' d,
    \barNumberCheck 30
    dis8 h' h, h' h16 e, h' e, h' e, h' e,
    e8 c' c, c' f r e r
    d8 r c r h r h r
    c16 c, c c c c c c cis cis cis cis cis cis cis cis
    cis16 cis cis cis cis cis cis cis d d d d d d d d
    e16 e e e e e e e c! c c c c c c c
    d16 d d d d d d d e4 r
    c'16 e c e d f d f e g e g f a f a
    g16 c g c f, c' f, c' e,4 r
    c16 e c e d f d f e g e g c, e c e
    \barNumberCheck 40
    f,8 f' f, f' d16 h d h a e' a, e'
    f,8 e d c f d g g,
    c4 r8 c' d4 r8 d
    e4 r8 r f4 r8 f
    g4 r8 es d4 r
    g16 e! g e g e g e d4 r
    g16 e g e g e g e g d g d g d g d
    e8. f16 d8. e16 e4 r
  }
}

allegroAViolinIII = \relative e'' {
  \allegroGlobal
  \repeat volta 2 {
    R1
    R1
    e16 g e g d g d g e g e g d g d g
    c,16 e c e h d h d c e c e h d h d
    g,16 c g e g h g h g c g e g h g h
    c,8 e a4 h,8 d g4
    a,8 c fis4 g16 h g h fis a fis a
    g16 h g h fis a fis a d,4 r
    r2 h'16 d h d a d a d
    \barNumberCheck 10
    h16 d h d a d a d g, h g h fis a fis a
    g16 h g h fis a fis a d, g d h d fis d fis
    d16 g d h d fis d fis d h' d, h' g h g h
    g16 c g c e, c' e, c' a d a d fis, d' fis, d'
    h16 e h e g, e' g, e' c fis c fis a, fis' a, fis'
    g,16 d g d d' d, d' d, g d g d d' d, d' d,
    g4 r8 fis e4 r8 a
    d,4 r8 g c,4 r8 a
    h4 r8 g d'4 r
    d'16 h d h d h d h d4 r
    \barNumberCheck 20
    d16 h d h d h d h d a d a d a d a
    h8. c16 a8. h16 h4 r
  } \break
  \repeat volta 2 {
    R1
    g16 h g h a c a c h d h d c e c e
    d16 g d g c, g' c, g' h,4 r
    g16 h g h g h g h gis e gis e gis e gis e
    a16 c a c h d h d c e c e d f d f
    e16 a e a d, a' d, a' c,4 r
    a16 c a c h d h d c e c e d f d f
    e16 c e c e cis e cis d,8 d' d, d'
    \barNumberCheck 30
    fis16 dis fis dis fis dis fis dis e,8 e' e, e'
    g16 e g e g e g e f8 r e r
    d8 r c r d, r e r
    e16 a, a a a a a a b b b b b b b b
    a16 a a a a a a a h! h h h h h h h
    cis16 cis cis cis cis cis cis cis a a a a a a a a
    h16 h h h h h h h c4 r
    r2 c'16 e c e d f d f
    e16 g e g f a f a g c g c f, c' f, c'
    e,4 r c,8 c' c, c'
    \barNumberCheck 40
    c16 a c a d a d a h g h g c a c a
    f8 e d c f d g g,
    c4 r8 a b4 r8 h
    c4 r8 cis d4 r8 d
    es4 r8 c g'4 r
    c16 c, c' c, c' c, c' c, g'4 r
    c16 c, c' c, c' c, c' c, h' g h g h g h g
    e8 c g' g, c4 r
  }
}

allegroAViolinIV = \relative e'' {
  \allegroGlobal
  \repeat volta 2 {
    R1
    R1
    R1
    e16 g e g d g d g e g e g d g d g
    c,16 e c e h d h d c e c e h d h d
    g,16 c g c a e' a, e' fis, h fis h g d' g, d'
    e,16 a e a fis c' fis, c' h4 r
    r2 g,4 r
    r2 g4 r
    \barNumberCheck 10
    r2 h'16 d h d a d a d
    h16 d h d a d a d g, h g h fis a fis a
    g16 h g h fis a fis a g d' g, d' h d h d
    c16 e c e a, e' a, e' d fis d fis h, fis' h, fis'
    e16 g e g c, g' c, g' fis a fis a d, a' d, a'
    d,16 g d g a fis a fis d g d g a fis a fis
    d4 r8 d h4 r8 c
    a4 r8 h g4 r8 a
    fis4 r8 h a4 r
    g'16 h, g' h, g' h, g' h, fis4 r
    \barNumberCheck 20
    g'16 h, g' h, g' h, g' h, a d, a' d, a' d, a' d,
    d'8. d16 d8. d16 d4 r
  } \break
  \repeat volta 2 {
    R1
    r2 g,16 h g h a c a c
    h16 d h d c e c e d g d g c, g' c, g'
    g,,16 g' g, g' g, g' g, g' e gis e gis e gis e gis
    a,4 r a'16 c a c h d h d
    c16 e c e d f d f e a e a d, a' d, a'
    c,4 r a16 c a c h d h d
    c16 e c e a, e' a, e' fis, a fis a fis a fis a
    \barNumberCheck 30
    dis?16 fis dis fis h, fis' h, fis' gis, h gis h gis h gis h
    e16 g! e g c, g' c, g' f8 r e r
    d8 r c r d, r e r
    a,16 a a a a a a a a a a a a a a a
    g16 g g g g g g g gis gis gis gis gis gis gis gis
    a16 a a a a a a a a a a a a a a a
    g16 g g g g g g g c4 r
    R1
    c'16 e c e d f d f e g e g f a f a
    g16 c g c f, c' f, c' c, e c e g, c g c
    \barNumberCheck 40
    f16 c f c a' f a f g,,8 g' a, a'
    f8 e d c f d g g,
    c4 r8 f d4 r8 g
    e4 r8 a f4 r8 b
    g4 r8 g g4 r
    c16 g' c, g' c, g' c, g' h,4 r
    c16 g' c, g' c, g' c, g' d g d g d g d g
    g,8. g16 g8. g16 g4 r
  }
}

% Largo e Staccato %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

largoGlobal = {
  \set Score.tempoHideNote = ##t
  \key a \minor
  \time 3/4
  \tempo 4 = 44
}

largoAViolinI = \relative e'' {
  \largoGlobal
  r8 e-! a,-! f'-! r e
  a8 d, g4 r8 a
  f8 d gis4 r8 e
  d8 f e d16 c h8 e
  c8 e a, f' r e
  a8 d, g4 r8 g
  f8 a g f16 e d8 g
  e8 c fis4 r8 g
  c,8 a c'4 r8 d
  \barNumberCheck 10
  h8 g a4 r8 h
  g8 e fis4 r8 g
  e8 c d4 r8 h
  c8[ e] a,[ g'] d,[ fis']
  r8 d' g, h r a
  g8 h e, c' r h
  e8 a, d4 r8 e
  c8 a dis4 r8 h
  a8 c h a16 g fis8. e16
  e8 g b4 r8 cis,
  \barNumberCheck 20
  a8 f' a4 r8 h,!
  g8 e' g4. g8
  c8 e, f4 r8 e
  a8 a, d4 r8 c
  f8 f, b4 r8 a
  d8[ f] h,![ a'] e,[ gis']
  a,8 e' f4 r8 e
  a8 a, d4 r8 c
  f8 f, b4 r8 a
  d8 f h,! a' r4
  \barNumberCheck30
  R2. \bar "||"
}

largoAViolinII = \relative c'' {
  \largoGlobal
  c4 r8 c-! h-! e-!
  c4 r8 h-! c-! e-!
  a,4 r8 h e c
  a8 d c h16 a gis8 h
  a4 r8 c h e
  c4 r8 h c e
  c8 f e d16 c h8 d
  c4 r8 a d h
  c4 r8 e a fis
  \barNumberCheck 10
  g4 r8 e a, d
  h4 r8 c fis, h
  g4 r8 a d, g
  r8 g d' c16 h a8 d
  h4 r8 h a d
  h4 r8 g' fis h
  g4 r8 fis g h
  e,4 r8 fis h g
  fis8 a g fis16 e dis8. e16
  e4 r8 e g a
  \barNumberCheck 20
  f!4 r8 d f g
  e4 r8 e d g
  e4 r8 c h e
  c4 r8 a g c
  a4 r8 f e a
  r8 a e' d16 c h8 e
  c4 r8 c h e
  c4 r8 a g c
  a4 r8 f e a
  a4 r8 e h' gis'
  \barNumberCheck 30
  R2. \bar "||"
}

largoAViolinIII = \relative e'' {
  \largoGlobal
  e8-! a,-! c4 e,8-! g-!
  f8 f' h, d g, e
  f8 f' h, gis a4
  r8 a c e, r gis
  e'8 a, c4 e,8 g!
  f8 f' h, d g, c
  r8 c e g, r h
  g8 e' d a' g4
  r8 e a, e' d4
  \barNumberCheck 10
  r8 h c a d4
  r8 g, a fis h4
  r8 e, fis d g d
  e8 g r g fis a
  g8 g h4 d8 fis,
  g8 e' g4 h,8 d
  c8 c' fis, a d, h
  c8 c' fis, dis e4
  r8 e g h, r h
  g8 e' g b e,4
  \barNumberCheck 20
  r8 d f! a d,4
  r8 d e c g'4
  r8 c, h d e4
  r8 a, f a c4
  r8 f, d f a c
  a4 r8 a gis e
  e8 c' a c e4
  r8 a, f a c4
  r8 f, d f a c
  R2.
  \barNumberCheck 30
  r8 a e c a4 \bar "||"
}

largoAViolinIV = \relative a {
  \largoGlobal
  a4 r8 a'8-! g-! e-!
  f4 r8 f e c
  d4 r8 d c a
  f'8 d e4 e
  a,4 r8 a'8 g e
  f4 r8 f e c
  a'8 f g4 g,
  c4 r8 c' h g
  a4 r8 a fis d
  \barNumberCheck 10
  g4 r8 g fis d
  e4 r8 e d h
  c4 r8 c h g
  e'8 c d4 d
  g,4 r8 g' fis d
  e4 r8 e d h
  c4 r8 c' h g
  a4 r8 a g e
  c'8 a h4 h,
  e4 r8 e cis a
  \barNumberCheck 20
  d4 r8 d h g
  c4 r8 c' h g
  a4 r8 a g e
  f4 r8 f e c
  d4 r8 d c a
  f'8 d e4 e
  a,4 r8 a' g e
  f4 r8 f e c
  d4 r8 d c a
  f'8 d e4 e
  \barNumberCheck 30
  a,2. \bar "||"
}

% Allegro %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

allegroIIGlobal = {
  \set Score.tempoHideNote = ##t
  \key c \major
  \time 2/2
  \tempo 4 = 88
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \set Timing.beamExceptions =
  #'((end . (
              ((1 . 8) . (4 4 4 ))   ;rule for 1/8 beams -- end each 1/2
              ((1 . 16) . (4 4 4 ))  ;rule for 1/16 beams -- end each 1/4
              )))
}

allegroIIAViolinI = \relative e'' {
  \allegroIIGlobal
  R1 * 2
  r4 r16 d c d e e d e c c h c
  d16 d c d h h a h c c h c a a g a
  h16 h a h g g f g a a g a f f e f
  g8 g' e c d e16 f g8 g,
  c8 e c'2 h4
  c4 r d2
  c2 h
  \barNumberCheck 10
  a2 g4 r
  R1
  r8 g c c c2~
  c2. r8 c,16 d
  e16( d c) d e( d c) e f( e d) e f( e d) f
  e16( d c) d e( d cis) e f( e d) e fis( e dis) fis
  g16( fis e) fis gis( fis e) gis a( h c) h a( h c) h
  a16( h c) h a( h c) h a( c a) e a( c a) e
  a16( h a) e a( h a) e gis( h gis) e gis( h gis) e
  a4 r r2
  \barNumberCheck 20
  R1
  r4 r16 e d e f f e f d d c d
  e16 e d e c c b c d d c d b b a b
  c16 c b c a a g a b b a b g g f g
  a4 r r2
  r8 h'! g e fis g16 a h8 h,
  e4 r c'2
  h2 a
  g2 fis
  e16( fis g) fis e( fis g fis) e( fis g fis) e( fis g fis)
  \barNumberCheck 30
  e16( g e) h e( g e) h e( fis e) h e( fis e) h
  dis8 e16 fis fis8. e16 e4 r
  r8 g e c d e16 f! g8 g,
  c8 e g2 fis4
  g4 r8 e f g16 a g8 f
  e8 g h d c h16 a a4 \trill
  g4 r a2
  g2 f
  e2 d
  c4 r16 d c d e e d e c c h c
  \barNumberCheck 40
  d16 d c d h h a h c c h c a a g a
  h16 h a h g g f g a a g a f f e f
  g16( a g) e g( a g) e c'( d c) g c( d c) g
  e'16( f e) c e( f e) c g'( f e) f g( f e) g
  a16( g f) g a( g f) a g( f e) f g( f e) g
  a16( g f) g a( g f) a g4 r \bar "|."
}

allegroIIAViolinII = \relative h' {
  \allegroIIGlobal
  R1 * 2
  r4 r16 h a h c c h c a a g a
  h16 h a h g g f g a a g a f f e f
  g16 g f g e e d e f f e f d d c d
  e4 r r2
  r8 g' e c d e16 f g8 g,
  c8 e c'2 h4~
  h4 a2 g4~
  \barNumberCheck 10
  g4 fis g r8 g,16 a
  h16( a g) a h( a g) h c( h a) h c( h a) c
  h4 r r2
  r2 r4 r8 a16 h
  c16( h a) h c( h a) c d( c h) c d( c h) d
  c4 r8 cis d4 r8 dis8
  e8 r e r e e e e
  f8 f f f e e e e
  h8 h h h h h h h
  c8 e c a h c16 d e8 e,
  \barNumberCheck 20
  a8 cis d2 cis4
  d4 r b'2
  a2 g
  f2 e
  d4 r r2
  R1
  r4 r16 fis e fis g g fis g e e d e
  fis16 fis e fis d d c d e e d e c c h c
  d16 d c d h h a h c c h c a a g a
  h8 h h h c c c c
  \barNumberCheck 30
  h8 h h h h h h h
  h8 h h4 h r
  c,4 r r2
  r8 c' h g a h16 c d8 d,
  g8 h c2 h4
  c4 r8 h c d16 e d8 c
  h8 d g2 f4~
  f4 e2 d4~
  d4 c2 h4
  c4 r16 h a h c c h c a a g a
  \barNumberCheck 40
  h16 h a h g g f g a a g a f f e f
  g16 g f g e e d e f f e f d d c d
  e16( f e) c e( f e) c g'( a g) e g( a g) e
  c'16( d c) g c( d c) g e'( d c) d e( d c) e
  f16( e d) e f( e d) f e( d c) d e( d c) e
  f16( e d) e f( e d) f e4 r \bar "|."
}

allegroIIAViolinIII = \relative g'' {
  \allegroIIGlobal
  r8 g e c d e16 f g8 g,
  c8 e g2 fis4
  g4 r a2
  g2 f!
  e2 d
  c4 r r2
  R1
  r4 r16 g' f g a a g a f f e f
  g16 g f g e e d e f f e f d d c d
  \barNumberCheck 10
  e16 e d e c c h c d4 r8 h16 c
  d16 (c h) c d( c h) d e( d c) d e( d c) e
  d8 g, r e'16 f g( f e) f g( f e) g
  a16( g f) g a( g f) a g8 e a a
  a1~
  a8 r a,, r d r h r
  e8 r d r c c c c
  f8 f f f c c c c
  e8 e e e e e e e
  a,4 a'2 gis4
  \barNumberCheck 20
  a4r r2
  r4 r16 cis h cis d d c d b b a b
  c16 c b c a a g a b b a b g g f g
  a16 a g a f f e f g g f g e e d e
  fis8 d' h g a h16 c d8 d,
  g8 h e2 dis4
  e8 g h2 a4~
  a4 g2 fis4~
  fis4 e2 dis4
  e8 e, e e g g g g
  \barNumberCheck 30
  g8 g g g fis fis fis fis
  fis8 e dis4 g4 r
  e4 r r2
  R1
  r8 g' e c d e16 f g8 g,
  c8 e g2 fis4
  g4 r16 h, a h c c h c a a g a
  h16 h a h g g f g a a g a f f e f
  g16 g f g e e d e f f e f d d c d
  e4 r a'2
  \barNumberCheck 40
  g2 f
  e2 d
  c4 r e,16( f e) c e( f e) c
  g'16( a g) e g( a g) e c'8 c c c
  c8 c c c c c c c
  c8 c c c c4 r \bar "|."
}

allegroIIAViolinIV = \relative c'' {
  \allegroIIGlobal
  R1
  r8 c h g a h16 c d8 d,
  g d' g2 f4~
  f4 e2 d4~
  d4 c2 h4
  c4 r r2
  R1
  r4 r16 e d e f f e f d d c d
  e16 e d e c c h c d d c d h h a h
  \barNumberCheck 10
  c16 c h c a a g a h8 g g' g
  g1~
  g4 r8 c,16 d e( d c) d e( d c) e
  f16( e d) e f( e d) f e8 c r4
  R1
  a8 r a r a r h r
  h8 r h r c c c c
  c8 c c c c c c c
  h8 h h h e, e e e
  e4 r r2
  \barNumberCheck 20
  r8 a' f d e f16 g a8 a,
  d8 f a2 g4~
  g4 f2 e4~
  e4 d2 cis4
  d,4 g2 fis4
  g4 r r2
  r4 r16 dis' cis dis e e d e c c h c
  d16 d c d h h a h c c h c a a g a
  h16 h a h g g fis g a a g a fis fis e fis
  g8 g, g g a a a a
  \barNumberCheck 30
  g8 g g g h h h h
  h8 c h4 e r
  R1
  R1
  R1
  r8 c' h g a h16 c d8 d,
  g4 r16 d' c d e e d e c c h c
  d16 d c d h h a h c c h c a a g a
  h16 h a h g g f g a a g a f f e f
  g8 e' g2 f4~
  \barNumberCheck 40
  f4 e2 d4~
  d4 c2 h4
  c8 c, c c c c c c
  c8 c c c c c c c
  f8 f f f c c c c
  f8 f f f c4 r \bar "|."
}
