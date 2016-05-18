\version "2.18.2"
\language "deutsch"

% Adagio %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

adagioGlobal = {
  \set Score.tempoHideNote = ##t
  \key d \major
  \time 2/2
  \tempo 4 = 38
}

adagioViolinI = \relative a'' {
  \adagioGlobal
  a4 r8 a a4 r8 a
  c4 r8 c h4 r8 h
  h4 r8 cis! d4 r8 h
  cis4 d2 cis4
  d1
  \bar "|." \mark \markup \fermata
}

adagioViolinII = \relative fis'' {
  \adagioGlobal
  fis4 r8 g e4 r8 e
  fis4 r8 fis a4 r8 a
  gis4 r8 a a4 r8 g
  g4 fis e2
  fis1
  \bar "|." \mark \markup \fermata
}

adagioViolinIII = \relative d'' {
  \adagioGlobal
  d4 r8 d cis4 r8 cis
  d4 r8 d fis4 r8 fis
  e4 r8 e fis4 r8 e
  e4 d a2
  a1
  \bar "|." \mark \markup \fermata
}

adagioViolinIV = \relative d' {
  \adagioGlobal
  d4 r8 d a'4 r8 a
  fis4 r8 fis dis4 r8 dis
  e4 r8 a d,4 r8 e
  a,2 a
  d1
  \bar "|." \mark \markup \fermata
}

% Allegro %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

allegroGlobal = {
  \set Score.tempoHideNote = ##t
  \key d \major
  \time 2/2
  \tempo 4 = 96
  \set Timing.baseMoment = #(ly:make-moment 1/2)
  \set Timing.beatStructure = #'(1 1)
  \set Timing.beamExceptions = #'((end . (((1 . 16) . (4 4 4)))))
  \compressFullBarRests
}

allegroViolinI = \relative d'' {
  \allegroGlobal
  \repeat volta 2 {
    d16 e d e fis g fis g e fis e fis g a g a
    fis8 d d d d d cis cis
    d8 fis, fis fis g g a a
    d,8 a' a a h h a a

    \barNumberCheck 5
    a16 a' g a fis a g fis e8 cis cis cis
    d8 d d d a' a a a
    fis16 a g a fis a g fis e8 cis cis cis
    d8 d d d a' a, a a
    gis8 gis gis gis fis fis fis fis

    \barNumberCheck 10
    e16 e' d e h d cis h cis e e e cis fis fis fis
    h,16 d d d h e e e a, cis cis cis a d d d
    d8 cis h4 cis r
  } \break
  \repeat volta 2 {
    R1 * 3
    a16 h a h cis d cis d h cis h cis d e d e
    cis8 cis cis cis cis cis cis cis
    h16 fis' e fis d fis e fis g h a h g h a h
    g16 a fis g e fis d e cis4 r

    \barNumberCheck 20
    d4 r cis16 fis e fis cis e d cis
    d4 r ais8 h ais4
    h4 r r2
    fis'16 gis fis gis a h a h gis a gis a h cis h cis
    a8 a d, d e e e e

    \barNumberCheck 25
    fis16 a g a d, fis e d cis8 cis cis cis
    d16 fis fis fis d fis fis fis g h h h a cis cis cis
    fis,16 a a a h d d d cis8 d cis4
    d16 a a a a fis fis fis fis4 r
  }
  \mark \markup \fermata
}

allegroViolinII = \relative fis'' {
  \allegroGlobal
  \repeat volta 2 {
    R1
    d16 e d e fis g fis g e fis e fis g a g a
    fis8 d d d d d cis cis
    d8 fis, fis fis g g a a

    \barNumberCheck 5
    d,8 a' a a a16 a' g a e g fis e
    d8 d g g e e e e
    d8 d d d a16 a' g a e g fis e
    d8 d gis, gis a cis, cis cis
    e8 e e e e16 e' d e a, cis h a

    \barNumberCheck 10
    gis8 gis gis gis a16 cis cis cis a cis cis cis
    d16 fis fis fis e gis gis gis cis, e e e fis a a a
    gis8 a gis8. a16 a4 r
  }
  \repeat volta 2{
    R1
    R1

    \barNumberCheck 15
    a,16 h a h cis d cis d h cis h cis d e d e
    cis8 a a a a a gis gis
    a8 a a a fis fis fis fis
    fis8 fis h h h16 d cis d h d cis d
    e16 fis d e cis d h cis ais4 r

    \barNumberCheck 20
    h4 r ais r
    h16 fis' e fis h, d cis h cis8 d cis4
    h16 cis h cis d e d e cis d cis d e fis e fis
    d4 r r2
    e16 a g a fis a g fis e8 a, a a

    \barNumberCheck 25
    d8 d d d e e a, a
    a16 d d d d d d d d d d d cis cis cis cis
    cis16 cis cis cis h h h h a8 d, a'4
    d,16 fis' fis fis fis d d d d4 r
  }
  \mark \markup \fermata
}

allegroViolinIII = \relative d'' {
  \allegroGlobal
  \repeat volta 2 {
    R1
    R1
    d16 e d e fis g fis g e fis e fis g a g a
    fis8 d d d d d cis cis

    \barNumberCheck 5
    d8 fis, fis fis a a a a
    a16 a' g a d, fis e d cis8 cis cis cis
    d8 fis, fis fis a a a a
    a16 a' g a d, fis e d cis8 a a a
    e16 e' d e h d cis h a8 a d d

    \barNumberCheck 10
    h8 h h h a16 a' a a fis a a a
    fis16 h, h h e h h h e a, a a d a a a
    h8 a h e e4 r
  } \break
  \repeat volta 2 {
    R1
    a,16 h a h cis d cis d h cis h cis d e d e

    \barNumberCheck 15
    cis8 a a a a a gis gis
    a8 cis, cis cis d d e e
    a,8 a' a a ais16 cis h cis ais cis h cis
    d8 d d d d d d d
    cis4 r8 cis cis16 fis e fis cis e d cis

    \barNumberCheck 20
    d4 r fis, r
    fis4 r fis8 h, fis'4
    d16 e d e fis g fis g e fis e fis g a g a
    fis4 r r2
    a8 a a a a16 a' g a e g fis e

    \barNumberCheck 25
    d8 d gis, gis a a a a
    d,16 fis' fis fis h fis fis fis h e, e e a e e e
    a16 d, d d g d d d e8 d e a,
    a16 d d d d a a a a4 r
  }
  \mark \markup \fermata
}

allegroViolinIV = \relative d'' {
  \allegroGlobal
  \repeat volta 2 {
    R1 * 3
    d16 e d e fis g fis g e fis e fis g a g a

    \barNumberCheck 5
    fis8 d d d cis cis cis cis
    h8 h h h a16 a' g a e g fis e
    fis8 d d d cis cis cis cis
    h8 h h h a16 e' d e cis e d cis
    h8 gis gis gis a a a a

    \barNumberCheck 10
    e'8 e e e e16 a, a a a a a a
    a16 a a a gis gis gis gis gis gis gis gis fis fis fis fis
    e8 a, e'4 a,4 r
  } \break
  \repeat volta 2 {
    a'16 h a h cis d cis d h cis h cis d e d e
    cis8 a a a a a gis gis

    \barNumberCheck 15
    a8 cis, cis cis d d e e
    a,8 e' e e fis fis e e
    e16 e' d e cis e d e fis8 fis fis fis
    d8 d d d g, g g g
    e4 r8 e fis4 r

    \barNumberCheck 20
    fis16 fis' e fis h, d cis h cis4 r
    h4 r fis8 fis fis4
    h,4 r r2
    a'16 h a h cis d cis d h cis h cis d e d e
    cis8 cis d d cis cis cis cis

    \barNumberCheck 25
    h8 h h h a16 a' g a e g fis e
    fis16 a a a fis h h h e, g g g e a a a
    d,16 fis fis fis d g g g g8 fis e4
    fis4 r16 d, d d d4 r
  }
  \mark \markup \fermata
}

% Grave %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

graveGlobal = {
  \set Score.tempoHideNote = ##t
  \key h \minor
  \time 3/2
  \tempo 2 = 68
}

graveViolinI = \relative a'' {
  \graveGlobal
  R1.
  R1.
  r2 a d~
  d2 cis h

  \barNumberCheck5
  ais2. ais4 h2~
  h2 a!4 gis a2~
  a2 fis g!~
  g f1
  e1.

  \barNumberCheck 10
  fis!4 g e2. d4
  d2 a'4( g) fis( e)
  fis2 fis4( e) d( cis)
  d2 a a
  a2 fis fis

  \barNumberCheck 15
  fis2 a'4( g) fis( e)
  fis2 fis2. g4
  e2 fis4( e) d( cis)
  d2 d2. e4
  cis2 r r

  \barNumberCheck 20
  R1.
  R1.
  r2 fis4( e) d( cis)
  d2 d4( cis) h( ais)
  h2 fis' h~

  \barNumberCheck 25
  h2 a g
  fis1 a2
  g1 g2
  fis1 d2
  g2 fis1~

  \barNumberCheck 30
  fis2 e g
  cis,1 d2~
  d2 cis1
  h1.

  \bar "|." \mark \markup \fermata
}

graveViolinII = \relative fis'' {
  \graveGlobal
  r2 fis h~
  h a g
  fis1 a2
  g1 g2

  \barNumberCheck 5
  fis1 d2
  g2 fis1
  fis1 e2~
  e2 d1
  d1 cis2

  \barNumberCheck 10
  d4 e cis2. a4
  a2 r r
  r2 a'4( g) fis( e)
  fis2 fis4( e) d( cis)
  d2 a a

  \barNumberCheck 15
  a2 fis fis
  fis2 d d
  a'2 fis fis
  fis2 h2. cis4
  ais2 r r

  \barNumberCheck 20
  R1.
  r2 fis'4( e) d( cis)
  d2 d4( cis) h( ais)
  h2 fis fis
  fis2 r r

  \barNumberCheck 25
  R1.
  r2 a' d~
  d2 cis h
  ais2. ais4 h2~
  h2 ais1

  \barNumberCheck 30
  h1 h,2
  ais1 h2~
  h2 ais1
  fis1.
  \bar "|." \mark \markup \fermata
}

graveViolinIII = \relative h' {
  \graveGlobal
  h1 h2
  cis1 cis2
  d2 d fis~
  fis2 e d

  \barNumberCheck 5
  cis1 h2
  c1 c2
  h1 h2
  c2 h1
  h1 a2

  \barNumberCheck 10
  a2 a1
  fis2 r r
  R1.
  r2 a'4( g) fis( e)
  fis2 fis4( e) d( cis)

  \barNumberCheck 15
  d2 a a
  a2 d2. e4
  cis2 cis cis
  h2 fis fis
  fis r r

  \barNumberCheck 20
  r2 fis'4( e) d( cis)
  d2 d4( cis) h( ais)
  h2 fis fis
  fis2 d d
  d2 r r

  \barNumberCheck 25
  R1.
  d1 d2
  e1 e2
  fis1 g2
  e2 fis1

  \barNumberCheck 30
  g1 e2
  e1 eis2~
  eis2 fis1
  h,1.
  \bar "|." \mark \markup \fermata
}

graveViolinIV = \relative d' {
  \graveGlobal
  R1.
  R1.
  d1 d2
  e1 e2

  \barNumberCheck 5
  fis1 g2
  e2 fis e
  dis1 e2
  a2 h a
  gis1 a2

  \barNumberCheck 10
  d,2 a' a,
  d1 r2
  R1.
  R1.
  r2 a''4( g) fis( e)

  \barNumberCheck 15
  fis2 fis4( e) d( cis)
  d2 a a
  a2 ais ais
  h2 h, h
  fis'2 fis'4( e) d( cis)

  \barNumberCheck 20
  d2 d4( cis) h( ais)
  h2 fis fis
  fis2 d d
  d2 fis'4( e) d( cis)
  d1 h2

  \barNumberCheck 25
  cis1 cis2
  d2 d fis~
  fis2 e d
  cis1 h2
  e2 cis1

  \barNumberCheck 30
  h1 g2
  fis1 gis2~
  gis2 fis1
  d1.
  \bar "|." \mark \markup \fermata
}

% Allegro %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

allegroIIGlobal = {
  \set Score.tempoHideNote = ##t
  \key d \major
  \time 2/2
  \tempo 4 = 90
  \set Timing.baseMoment = #(ly:make-moment 1/2)
  \set Timing.beatStructure = #'(1 1)
  \set Timing.beamExceptions = #'((end . (((1 . 16) . (4 4 4)))))
  \compressFullBarRests
}

allegroIIViolinI = \relative a'' {
  \allegroIIGlobal
  r8 a a a fis a fis d
  e8 a, a' a a g16 fis g8 a16 g
  fis8 fis16 e fis8 g16 fis e8 fis e4
  d8 d, d d a' a' e cis

  \barNumberCheck 5
  h8 h a a a4 r
  r8 a'16 gis a8 h16 a gis4 r
  r2 r8 e e e
  cis8 e cis a h e, e' e
  e8 d16 cis d8 e16 d cis8 cis16 h cis8 d16 cis

  \barNumberCheck 10
  h8 cis h4 a8 a, a a
  e'8 e' h gis fis fis e e
  e4 r r8 h'16 a h cis h cis
  d4 r r8 cis16 h cis d cis dis
  e8 gis cis cis cis h16 a h8 h

  \barNumberCheck 15
  h8 a r cis, h4 r8 h
  a4 r8 a h4 r8 g
  a4 r8 fis e4 r8 e
  d4 g, d'8 a'16 g a h a h
  c8 c16 h c d h c a8 h a4

  \barNumberCheck 20
  g8 h, h h d d d d
  a8 a fis' fis d4 r
  r2 r8 g g g
  fis8 a fis d e a, a' a
  a8 g16 fis g8 a16 g fis4 r

  \barNumberCheck 25
  r8 e' a a gis4 r
  r2 r8 h,16 a h cis h cis
  d16 cis d e d e cis d h8 cis h4
  a4 r r2
  r8 a' a a fis a fis d

  \barNumberCheck 30
  e8 a, a' a a g16 fis g8 a16 g
  fis8 fis16 e fis8 g16 fis e8 fis e4
  d8 d, d d a' a' e cis
  h8 h a a a4 r
  r8 e'16 d e fis e fis g fis g a g a fis g

  \barNumberCheck 35
  e4 r8 e d4 r8 e
  fis8 a16 g a h a g a g fis g a h a g
  a8 g16 fis e8. d16 d4 r8 a
  g4 r8 a h4 r8 e,
  fis4 r8 gis a e' a a

  \barNumberCheck 40
  a8 g16 fis g8 a16 g fis8 d, d d
  d8 d d d d g, a4
  d4 cis'' d r
  \bar "|." \mark \markup \fermata
}

allegroIIViolinII = \relative d'' {
  \allegroIIGlobal
  r2 r8 d d d
  cis8 e cis a h e, e' e
  e8 d16 cis d8 e16 d cis8 d cis4
  d8 fis, fis fis a a a a

  \barNumberCheck 5
  e8 e cis cis d4 r
  r8 cis'16 h cis8 d16 cis h4 r
  R1
  r8 a a a gis h gis e
  fis8 h, h' h h a16 gis a8 h16 a

  \barNumberCheck 10
  gis8 a gis4 a8 cis, cis cis
  e8 e e e h h gis gis
  a4 r r8 gis'16 fis gis a gis a
  h4 r r8 a16 gis a h a h
  gis4 r8 gis' fis4 r8 fis

  \barNumberCheck 15
  e4 r8 cis d4 r8 h
  cis4 r8 a g4 r8 g
  fis8 a d d d c16 h c8 c
  c8 h16 a h8 c16 h a8 fis16 e fis g fis g
  a16 g a h a h g a fis8 g fis4

  \barNumberCheck 20
  g8 g, g g d' d' a fis
  e8 e d d g,4 r
  r8 d'' d d h d h g
  a8 d, d' d d c16 h c8 d16 c
  h8 h16 a h8 c16 h a4 r

  \barNumberCheck 25
  r8 a16 h cis! h cis a e'4 r
  r2 r8 gis,16 fis gis a gis a
  h16 a h cis h cis a h gis8 a gis4
  a4 r r8 d d d
  cis8 e cis a d d, d d

  \barNumberCheck 30
  a'4 r r2
  r2 r8 a' a a
  fis8 a fis d e a, a' a
  a8 g16 fis g8 a16 g fis4 r
  r8 cis16 h cis d cis d e d e fis e fis d e

  \barNumberCheck 35
  cis4 r8 cis d4 r8 a
  d,8 fis'16 e fis g fis e fis e d e fis g fis e
  fis8 e16 d cis8. a16 a4 r8 d,
  e4 r8 fis g h e e
  e8 d16 cis d8 e16 d cis4 r8 cis

  \barNumberCheck 40
  d4 r8 a d d d d
  d8 a d d d h a, a'
  d,4 e' fis r
  \bar "|." \mark \markup \fermata
}

allegroIIViolinIII = \relative a'' {
  \allegroIIGlobal
  R1
  R1
  r2 r8 a a a
  fis8 a fis d e8 a, a' a

  \barNumberCheck 5
  a8 g16 fis g8 a16 g fis8 fis16 e fis8 g16 fis
  e4 r4 r8 h16 a h cis h cis
  d16 cis d e d e cis d h8 cis h4
  a8 a, a a e' e' h gis
  fis8 fis e e e4 r

  \barNumberCheck 10
  r8 e' e e cis e cis a
  h8 e, e' e e d16 cis d8 e16 d
  cis8 cis16 h cis8 d16 cis h4 r
  r8 fis'16 e fis g fis gis a4 r
  r4 r8 e fis4 r8 d

  \barNumberCheck 15
  e4 r8 e d4 r8 d
  e8 cis fis fis fis e16 d e8 e
  e8 d r fis, g4 r8 e
  fis8 g16 fis g8 a16 g fis4 r
  R1

  \barNumberCheck 20
  r8 g g g fis a fis d
  e8 a, a' a a g16 fis g8 a16 g
  fis8 g fis4 g8 h, h h
  d8 d d d a a fis' fis
  d4 r r8 a' d d

  \barNumberCheck 25
  cis4 r r8 h16 a h cis h cis
  d16 cis d e d e cis d h4 r
  r2 r8 e e e
  cis8 e cis a d d, d d
  a'4 r r8 d d d

  \barNumberCheck 30
  cis8 e cis a h e, e' e
  e8 d16 cis d8 e16 d cis8 d cis4
  d8 fis, fis fis a a a a
  e8 e cis cis d fis'16 e fis8 g16 fis
  e4 r r2

  \barNumberCheck 35
  r4 r8 a, h4 r8 cis
  d8 d d d d a d d
  d8 h e, a fis a d d
  d8 c16 h c8 d16 c h4 r8 h
  a4 r8 h cis!4 r8 a

  \barNumberCheck 40
  h4 r8 cis d8 fis16 e fis g fis e
  fis16 e d e fis g fis e fis8 e16 d cis8. a16
  a4 a a r
  \bar "|." \mark \markup \fermata
}

allegroIIViolinIV = \relative d'' {
  \allegroIIGlobal
  R1 * 3
  r8 d d d cis e cis a

  \barNumberCheck 5
  h8 e, e' e e d16 cis d8 e16 d
  cis4 r4 r8 gis16 fis gis a gis a
  h16 a h cis h cis a h gis8 a gis4
  a8 cis, cis cis e e e e
  h8 h gis gis a4 r

  \barNumberCheck 10
  r2 r8 a' a a
  gis h gis e fis h, h' h
  h8 a16 gis a8 h16 a gis4 r
  r8 d'16 cis d e d e cis4 r
  r4 r8 e d4 r8 d

  \barNumberCheck 15
  cis8 e a a a g16 fis g8 g
  g8 fis r cis h4 r8 h
  a4 r8 a g4 r8 g
  fis4 d d r
  r2 r8 d' d d

  \barNumberCheck 20
  h8 d h g a d, d' d
  d8 c16 h c8 d16 c h8 h16 a h8 c16 h
  a8 h a4 g8 g, g g
  d'8 d' a fis e e d d
  g,4 r r8 d'16 e fis e fis d

  \barNumberCheck 25
  a'4 r r8 gis16 fis gis a gis a
  h16 a h cis h cis a h gis4 r
  R1
  r8 a' a a fis a fis d
  e8 cis a cis d a a a

  \barNumberCheck 30
  cis4 r r2
  R1
  r8 d d d cis e cis a
  h8 e, e' e e d16 cis d8 e16 d
  cis4 r r2

  \barNumberCheck 35
  r8 e a a a g16 fis g8 a16 g
  fis8 d, d d d d d d
  d8 g, a4 d r8 fis
  g4 r8 d g4 r8 gis
  a4 r8 e a4 r8 e'

  \barNumberCheck 40
  d4 r8 e fis a16 g a h a g
  a16 g fis g a h a g a8 g16 fis e8. d16
  d4 a d, r
  \bar "|." \mark \markup \fermata
}
