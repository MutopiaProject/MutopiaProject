\version "2.18.2"
\language "deutsch"

% Largo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

largoGlobal = {
  \set Score.tempoHideNote = ##t
  \key g \major
  \time 3/4
  \tempo 4 = 54
  \compressFullBarRests
}

largoViolinI = \relative g'' {
  \largoGlobal
  R2. * 4

  \barNumberCheck 5
  r4 g2~
  g4 fis8 e d c
  h4. c8 d4~
  d8 e c4. h8
  a2.

  \barNumberCheck 10
  r4 d, d
  e4 e e
  fis4 fis fis
  g4 g g
  gis4 gis gis

  \barNumberCheck# 15
  a4 a cis
  d4 fis, d
  a'4 a cis
  cis4 cis cis
  h4 h h

  \barNumberCheck 20
  h4 h h
  a4 d d
  d4 d d
  d4 a8( h) c( d)
  h8( a) h( c) d( e)

  \barNumberCheck 25
  a,8( g) a( h) c( d)
  h2.~
  h4 h8( c) a( h)
  c8( h) c( d) h( c)
  d2.~

  \barNumberCheck 30
  d4 \slurDashed c8( h) c( d) \slurSolid
  h4 g'8( fis) g( fis)
  g8( fis) g( fis) g( fis)
  g8( a) fis4. g8
  g4 d d

  \barNumberCheck 35
  d4 d c
  c4 c c
  h4 h8( a) h( a)
  h8( a) h( a) h( a)
  h8( c) a4. h8

  \barNumberCheck 40
  h4 r r
  a'4 r r
  r4 g4. \trill fis8
  fis2. \bar "|."
}

largoViolinII = \relative h {
  \largoGlobal
  R2.
  R2.
  h4 h h
  h4 h a

  \barNumberCheck 5
  d4 d d
  a'4 a a
  a4 g g
  g4 g g
  g4 g g

  \barNumberCheck 10
  fis4 d''2~
  d4 cis8 h a g
  fis4. g8 a4~
  a8 h g4. fis8
  e2.

  \barNumberCheck 15
  r4 a,, a
  a4 a a
  a4 a a
  ais4 ais ais
  h4 h h

  \barNumberCheck 20
  e4 e e
  fis4 fis fis
  g4 g g
  d4 \slurDashed fis8( g) a( h) \slurSolid
  g8( fis) g( a) h( c)

  \barNumberCheck 25
  fis,8( e) fis( g) a4~
  a4 a8( g) a( fis)
  g2.~
  g4 g8( f) g( e)
  f4 f8( e) f( d)

  \barNumberCheck 30
  e4. d8 e( f)
  d4 d'8( d,) d'( d,)
  d'8( d,) d'( d,) d'( d,)
  d'4 d4. d8
  d4 r r

  \barNumberCheck 35
  e4 e e
  d4 d d
  g,,4 g8( d') g,( d')
  g,8( d') g,( d') g,( d')
  g,4 d'2

  \barNumberCheck 40
  g,4 r r
  d''4 r r
  r4 cis4. \trill d8
  d2. \bar "|."
}

largoViolinIII = \relative a {
  \largoGlobal
  R2.
  a4 a a
  a4 a g
  c4 c c

  \barNumberCheck 5
  c4 c h
  c4 c c
  d4 d g
  e4 e e
  e4 e e

  \barNumberCheck 10
  e4 fis fis
  g4 g g
  a4 a d
  h4 h h
  h4 h h

  \barNumberCheck 15
  a4 e'8( fis) g( a)
  fis8( e) fis( g) a( h)
  e,8( d) e( fis) g( a)
  fis2.~
  fis4 fis8( g) e( fis)

  \barNumberCheck 20
  g8( fis) g( a) fis( g)
  a2.~
  a4 g8( fis) g( a)
  fis4 d, d
  d4 d d

  \barNumberCheck 25
  d4 d d
  dis4 dis dis
  e4 e e
  a,4 a a
  h4 h h

  \barNumberCheck 30
  c4 c c
  g4 g8( d') g,( d')
  g,8( d') g,( d') g,( d')
  g,4 d'2
  g,4 r r

  \barNumberCheck 35
  R2.
  fis''4 fis fis
  d4 d8( d,) d'( d,)
  d'8( d,) d'( d,) d'( d,)
  d'4 d4. d8

  \barNumberCheck 40
  d4 r r
  a4 r r
  r a4. \trill a8
  a2. \bar"|."
}

largoViolinIV = \relative g {
  \largoGlobal
  g4 g g
  g4 g g
  g4 g g
  g4 g g

  \barNumberCheck 5
  g4 g g
  a4 a a
  h4 h h
  c4 c c
  cis4 cis cis

  \barNumberCheck 10
  d4 a' a
  e'4 e e
  e4 d d
  d4 d d
  d4 d d

  \barNumberCheck 15
  cis4 cis8( d) e( fis)
  d8( cis) d( e) fis( g)
  cis,8( h) cis( d) e4~
  e4 e8( d) e( cis)
  d2.~

  \barNumberCheck 20
  d4 d8( c!) d( h)
  c4 c8( h) c( a)
  h4. a8 \slurDashed h( c) \slurSolid
  a4 a fis
  g4 h, g

  \barNumberCheck 25
  d'4 a' fis
  fis4 fis fis
  e4 e e
  e4 e e
  d4 g g

  \barNumberCheck 30
  g4 g g
  g4 h8( a) h( a)
  h8( a) h( a) h( a)
  h8( c) a4. \trill h8
  h4 r r

  \barNumberCheck 35
  R2. * 2
  g'4 g8( fis) g( fis)
  g8( fis) g( fis) g( fis)
  \slurDashed g8( a) \slurSolid fis4. g8

  \barNumberCheck 40
  g4 r r
  fis,4 r r
  r4 e4. \trill d8
  d2. \bar "|."
}

% Allegro %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

allegroGlobal = {
  \set Score.tempoHideNote = ##t
  \key g \major
  \time 4/4
  \tempo 4 = 110
  \compressFullBarRests
}

allegroViolinI = \relative g'' {
  \allegroGlobal
  g2 fis
  g4 a d, g~
  g4 fis g8 g,16 a h8 h16 cis
  d8 d16 e fis8 fis16 g a8 e a a

  \barNumberCheck 5
  a8 g16 fis g8 g g fis16 e fis8 fis
  fis8 g16 e e8. d16 d4 r8 a16 h
  c4 r8 g16 a h4 r
  r4 r16 d, c d e4 r16 fis e fis
  g4 r16 h, a h c4 d

  \barNumberCheck 10
  g,8 h' d g d fis a d
  a, cis e a g, h e g
  d,8 fis a d h d a g'
  fis d h'2 a4~
  a4 g2 fis4

  \barNumberCheck 15
  g8 g,16 a h8 h16 c d8 a d d
  d8 c16 h c8 c c h16 a h8 h
  h8 c16 a a8. g16 g4 r16 h a h
  c4 r16 a g a h4 r16 g fis g
  a4 r16 fis e fis g4 r

  \barNumberCheck 20
  r4 r16 h, a h cis4 r16 dis cis dis
  e4 r16 g fis g a4 h
  e,4 r8 a f a e d'
  cis8 a d2 cis4
  c!8 h16 a h8 h h c16 a a8. g16

  \barNumberCheck 25
  g4 r8 d16 e fis4 r
  r4 r16 a, g a h4 r16 cis h cis
  d4 r16 fis e fis g4 a
  d,4 r r2
  r2 g'

  \barNumberCheck 30
  fis2 g4 a
  d,4 g2 fis4
  f8 e16 d e8 e e f16 d d8. c16
  c4 r8 g16 a h8 h16 cis d4
  r4 r8 d16 e fis8 d16 e fis8 fis16 g

  \barNumberCheck 35
  a8 e a a a g16 fis g8 g
  g8 fis16 e fis8 fis fis g16 e e8. d16
  d4 r16 h, a h c4 d
  g,8 h' e e, fis a d d,
  e8 g c c, d fis h h,

  \barNumberCheck 40
  c8 e a a, h d g h
  c8 d d d d4 r16 h' c h
  a4 r16 a h a g4 r16 g a g
  fis4 r16 fis g fis e4 r16 e fis e
  d4 r16 g fis g e g fis g d,8 fis'

  \barNumberCheck 45
  g4 <<
    \voiceOne { fis g fis | g }
    \\
    \voiceTwo { c,-. h-. a-. | h-. }
  >> r4 r2 \bar "|."
}

allegroViolinII = \relative d'' {
  \allegroGlobal
  R1 * 3
  d2 cis

  \barNumberCheck 5
  d4 e a, d~
  d4 cis d8 d,16 e fis8 fis16 g
  a8 c,!16 d e8 e16 fis g8 g16 a h8 h16 c
  d8 a d d d c16 h c8 c
  c8 h16 a h8 h h c16 a a8. g16

  \barNumberCheck 10
  g4 r8 d16 e fis4 r
  r4 r16 a, g a h4 r16 cis h cis
  d4 r16 fis e fis g4 a
  d,4 r r2
  R1

  \barNumberCheck 15
  g'2 fis
  g4 a d, g~
  g4 fis g r16 d c d
  e4 r16 c h c d4 r16 h a h
  c4 r16 a g a h8 g h e

  \barNumberCheck 20
  h,8 dis fis h a, cis fis a
  e8 g h e c! e h a'
  gis8 e a2 gis4
  g!8 fis16 e fis8 fis fis g16 e e8. d16
  d4 r16 h, a h c4 d

  \barNumberCheck 25
  g,8 h16 c d4 d'8 fis a d
  a, cis e a g, h e g
  d,8 fis a d h d a g'
  fis8 d r16 fis, e fis g4 r16 g fis g
  a4 r16 a g a h8 h d g

  \barNumberCheck 30
  d,8 fis a d c, e a c
  g,8 h d g e g d c'
  h8 g c2 h4
  c8 e,16 fis g4 r r8 a16 h
  cis8 cis16 d e4 d2

  \barNumberCheck 35
  cis2 d4 e
  a,4 d2 cis4
  c!8 h16 a h8 h h c16 a a8. g16
  g4 r8 h d d, fis a
  c8 c, e g h h, d fis

  \barNumberCheck 40
  a8
  %   ^\markup { \hspace #-6 "MS."
  %     \score {
  %       \new Staff \with {
  %         fontSize = #-4 \override StaffSymbol.staff-space = #(magstep -4)
  %         \remove "Time_signature_engraver"
  %         \omit Staff.Clef
  %       } { c''8 a c' e' }
  %       \layout { ragged-right = ##t indent = 0\cm }
  %     }
  %   }
  a, c e g g, h d
  e c' a d, g,4 r16 g'' a g
  fis4 r16 fis g fis e4 r16 e fis e
  d4 r16 d e d c4 r16 c d c
  h4 r16 h a h g h a g fis8 d'

  \barNumberCheck 45
  h4-. <<
    \voiceOne { a-. h-. c-. | h }
    \\
    \voiceTwo { d, d d | d}
  >> r r2 \bar "|."
}

allegroViolinIII = \relative a {
  \allegroGlobal
  R1 * 3
  r2 r4 r16 a g a

  \barNumberCheck 5
  h4 r16 cis h cis d4 r16 fis e fis
  g4 a d, r
  r2 g'
  fis2 g4 a
  d,4 g2 fis4

  \barNumberCheck 10
  g8 h,16 c d4 r8 d16 e fis8 fis16 g
  a8 e a a a g16 fis g8 g
  g8 fis16 e fis8 fis fis g16 e e8. d16
  d4 r16 fis e fis g4 r16 e d e
  fis4 r16 d c d e4 r16 c h c

  \barNumberCheck 15
  d8 h d g d, fis a d
  c,8 e a c g, h d g
  e8 g d c' h g g'4~
  g4 fis2 e4~
  e4 dis e8 e16 fis g8 g16 a

  \barNumberCheck 20
  h8 fis h h h a16 g a8 a
  a8 g16 fis g8 g g a16 fis fis8. e16
  e4 r16 c, h c d4 e
  a,4 r16 fis' e fis g4 a
  d,4 r8 g e g d c'

  \barNumberCheck 25
  h4 r d2
  cis2 d4 e
  a,4 d2 cis4
  d4 r16 dis, cis dis e4 r16 e d e
  fis4 r16 fis e fis g8 g16 a h8 h16 c

  \barNumberCheck 30
  d8 a d d d c16 h c8 c
  c8 h16 a h8 h h c16 a a8. g16
  g4 r16 e d e f4 g
  c,4 r r8 d'16 e fis!8 fis16 g
  a4 r d,8 fis a d

  \barNumberCheck 35
  a,8 cis e a g, h e g
  d, fis a d h d a g'
  fis8 d g2 fis4
  g4 r16 h c h a4 r16 a h a
  g4 r16 g a g fis4 r16 fis g fis

  \barNumberCheck 40
  e4 r16 e fis e d4 r16 g fis g
  e16 g fis g d,8 fis' g8 h, e e,
  fis8 a d d, e g c c,
  d8 fis h h, c e a a,
  h8 d g h c e d d

  \barNumberCheck 45
  d4 <<
    \voiceOne { d-. d-. d-. | d }
    \\
    \voiceTwo { fis, d fis | d}
  >> r r2 \bar "|."
}

allegroViolinIV = \relative g' {
  \allegroGlobal
  R1 * 6
  r2 g8 h d g
  d,8 fis a d c, e a c
  g,8 h d g e g d c'

  \barNumberCheck 10
  h8 g16 a h8 h16 cis d2
  cis2 d4 e
  a,4 d2 cis4
  d4 r16 d c! d e4 r16 c h c
  d4 r16 h a h c4 r16 a g a

  \barNumberCheck 15
  h4 r r r16 d, c d
  e4 r16 fis e fis g4 r16 h, a h
  c4 d g, r
  R1
  r2 e''2

  \barNumberCheck 20
  dis2 e4 fis
  h,4 e2 dis4
  d!8 c16 h c8 c c d16 h h8. a16
  a4 r8 d h d a g'
  fis8 d g2 fis4

  \barNumberCheck 25
  g8 g,16 a h8 h16 cis d8 d16 e fis8 fis16 g
  a8 e a a a g16 fis g8 g
  g8 fis16 e fis8 fis fis g16 e e8. \trill d16
  d4 h2 c4~
  c4 d2 r4

  \barNumberCheck 30
  r4 r16 d , c d e4 r16 fis e fis
  g4 r16 h, a h c4 d
  g,4 r8 c' a c g f'
  e8 c16 d e8 e16 fis! g4 r
  r8 a,16 h cis8 h16 cis d4 r

  \barNumberCheck 35
  r4 r16 a, g a h4 r16 cis h cis
  d4 r16 fis e fis g4 a
  d,4 r8 g e g d c'
  h4 r16 g' a g fis4 r16 fis g fis
  e4 r16 e fis e d4 r16 d e d

  \barNumberCheck 40
  c4 r16 c d c h4 r16 h c h
  g16 h a g fis8 d'h4 r8 h
  d8 d, fis a c c, e g
  h8 h, d fis a a, c e
  g8 g, h d e c' a d,

  \barNumberCheck 45
  <<
    \voiceOne { g4 a g a | g4 }
    \\
    \voiceTwo { g,4 d' g, d' | g,4 }
  >> r4 r2 \bar "|."
}

% Adagio %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

adagioGlobal = {
  \set Score.tempoHideNote = ##t
  \key g \major
  \time 4/4
  \tempo 4 = 70
}

adagioViolinI = \relative c'' {
  \adagioGlobal
  r2 c
  h1
  ais2 h~
  h2 a!

  \barNumberCheck 5
  d1~
  d2 cis~
  cis2 h~
  h2 a~
  a2 g

  \barNumberCheck 10
  c1
  h2 e~
  e dis
  e1 \bar "|."
}

adagioViolinII = \relative a' {
  \adagioGlobal
  a1~
  a2 g
  fis1
  e2 a~

  \barNumberCheck 5
  a2 g
  f2 e
  d1
  c'1
  h1~

  \barNumberCheck 10
  h2 a
  fis2 h4 c
  h1
  h1 \bar "|."
}

adagioViolinIII = \relative g' {
  \adagioGlobal
  g2 fis~
  fis2 e
  cis2 d
  e1

  \barNumberCheck 5
  f2 d
  a'2 fis!
  fis1
  g2 d
  d2 g~

  \barNumberCheck 10
  g2 f
  dis2 e4 fis
  g2 fis
  g1 \bar "|."
}

adagioViolinIV = \relative d' {
  \adagioGlobal
  d1
  dis2 e~
  e2 d!
  c1

  \barNumberCheck 5
  b1
  a2 ais
  h1
  e2 fis
  g,1

  \barNumberCheck 10
  a1~
  a2 g4 a
  h1
  e1 \bar "|."
}

% Vivace %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

vivaceGlobal = {
  \set Score.tempoHideNote = ##t
  \key g \major
  \time 3/8
  \tempo 8 = 180
  \compressFullBarRests
}

vivaceTheme = {
  d8 d16 d d d
  d8 h g
  d'8 d16 d d d
  d4.
  g8 g16 g g g
  g8 d g
  d8 d16 d d d
  d8 h d
  h8 g d'
  h8 g d'
  g,8 g16 g g g
  g4
}

vivaceViolinI = \relative d' {
  \vivaceGlobal
  \vivaceTheme d'8
  g4 a8
  h8 g16 a h c

  \barNumberCheck 15
  d8( e) d
  d4 g8
  g8( fis) g
  g8( d) g
  g8( fis) a

  \barNumberCheck 20
  a4 d,,8
  g4 a8
  h8 g16 a h c
  d8( e) d
  d4 d8

  \barNumberCheck 25
  g8 fis e
  fis8 g16 fis e d
  g8 fis e
  fis8 d16 e fis8~
  fis8 g16 e fis8~

  \barNumberCheck 30
  fis8 d16 e fis8~
  fis8 g16 e fis8
  e8 d16 cis h a
  d,8 d16 d d d
  d4 r8

  \barNumberCheck 35
  d8 d16 d d d
  d4 r8
  fis'8 a16 g fis e
  fis8 a16 g fis e
  fis8 d16 d d d

  \barNumberCheck 40
  d4 r8
  R4. * 4

  \barNumberCheck 45
  a8 a16 a a a
  a8 fis d
  a'8 a16 a a a
  a4.
  R4. * 3
  r4 dis,8
  e8 h' h,
  e4 dis8

  \barNumberCheck 55
  e8 h' h,
  e4 r8
  e8 e16 e e e
  a8 a, a'
  d,8 d16 d d d

  \barNumberCheck 60
  g8 g, g'
  c8 h4
  h4 e8
  e8( d) d
  d8( cis) r

  \barNumberCheck 65
  r4 cis8
  d4 e8
  e8( d) r
  R4.
  R4.

  \barNumberCheck 70
  d,8 d16 d d d
  d8 h g
  g'4.~
  g4.~
  g4.~

  \barNumberCheck 75
  g4.
  g8 g16 g g g
  g8 e c
  g'8 g16 g g g
  g4 h,8


  \barNumberCheck 80
  c8 h a
  g4 e'8
  f4 g8
  e4 f8~
  f8 g g,

  \barNumberCheck 85
  c4 r8
  R4.
  r4 c''8
  c8( h) h
  h8( a) d,

  \barNumberCheck 90
  g4 a8
  h8 g16 a h c
  d8 c h
  a4 g8
  c8 h a

  \barNumberCheck 95
  h8 c16 h a g
  c8 h a
  h8 g16 a h8~
  h8 c16 a h8~
  h8 g16 a h8~

  \barNumberCheck 100
  h8 c16 a h8
  a8 g16 fis e d
  g,,8 g16 g g g
  g4 r8
  g8 g16 g g g

  \barNumberCheck 105
  g4 r8
  h''8 d16 c h a
  h8 d16 c h a
  h8 g16 g g g
  g8 h16( a) h( g)

  \barNumberCheck 110
  a8 a16 a a a
  a8 \slurDashed c16( h) c( a)
  h8( a) h \slurSolid
  h8( g) h
  \slurDashed h8( a) c \slurSolid

  \barNumberCheck 115
  c4 r8
  h,,8 g d'
  h8 g d'
  g,8 g16 g g g
  g4. \bar "|."
}

vivaceViolinII = \relative d' {
  \vivaceGlobal
  \vivaceTheme r8
  r4 d'8
  g4 a8

  \barNumberCheck 15
  h8( c) h
  h4 d8
  d8( d,) d'
  d4 d8
  d8( d,) fis'

  \barNumberCheck 20
  fis4 r8
  r4 d,8
  g4 a8
  h8( c) h
  h4 h8

  \barNumberCheck 25
  e8 d cis
  d8 e16( d) cis h
  e8 d cis
  d8 a d~
  d8 e16 cis d8~

  \barNumberCheck 30
  d8 h16 cis d8~
  d8 e16 cis d8
  cis4 r8
  a'8 a16 a a a
  a8 fis a

  \barNumberCheck 35
  fis8 fis16 fis fis fis
  fis8 d fis
  d8 fis16 e d cis
  d8 fis16 e d cis
  d8 a16 a a a

  \barNumberCheck 40
  a4 r8
  R4. * 3
  r4 fis'8

  \barNumberCheck 45
  fis8( e) fis
  fis8( d) fis
  fis8( e) g
  g4.
  R4. * 3
  r4 h,8
  h4 h8
  h8 g h

  \barNumberCheck 55
  h4 h8
  h4 r8
  R4.
  a8 a16 a a a
  d8 d, d'

  \barNumberCheck 60
  g,8 g16 g g g
  a8 h h,
  e4 gis8
  a4 h8
  \slurDashed h8( a) r \slurSolid

  \barNumberCheck 65
  R4.
  R4.
  a8 a16 a a a
  a8 fis d
  e4 fis8

  \barNumberCheck 70
  g,4 r8
  r4 d''8
  e8( d) e
  e8( d) e
  e8( d) f

  \barNumberCheck 75
  f4.
  e8(\p d) e
  e8( d) f
  \slurDashed e8( d) f \slurSolid
  f4 g8\f

  \barNumberCheck 80
  e8 d c
  h8 g g'
  a8 \slurDashed g16( f) e( d)
  g8 f16( e) d( c) \slurSolid
  d8 g, h

  \barNumberCheck 85
  c4 c,8
  g'4 gis8
  a4 a'8
  a8( g) g
  g8( fis) r

  \barNumberCheck 90
  r4 fis8
  g4 fis8
  g8 fis g
  fis4 e8
  a8 g fis

  \barNumberCheck 95
  g8 a16 g fis e
  a8 g fis
  g8 d g~
  g8 a16 fis g8~
  g8 e16 fis g8~

  \barNumberCheck 100
  g8 a16 fis g8
  fis4 r8
  d8 d16 d d d
  d8 h d
  h8 h16 h h h

  \barNumberCheck 105
  h8 g h
  g'8 h16 a g fis
  g8 h16 a g fis
  g8 d16 d d d
  d4 r8

  \barNumberCheck 110
  fis8 fis16 fis fis fis
  fis4 r8
  g8( fis) g
  g8( d) g
  g8( fis) a

  \barNumberCheck 115
  a4.
  h,,8 g d'
  h8 g d'
  g,8 g16 g g g
  g4. \bar "|."
}

vivaceViolinIII = \relative d' {
  \vivaceGlobal
  \vivaceTheme r8
  R4. * 3
  r4 h'8
  h8( a) h
  h8( g) h
  h8( a) c

  \barNumberCheck 20
  c4 r8
  R4. * 3
  r4 g8

  \barNumberCheck 25
  h4 cis8
  a4 h8
  h4 cis8
  a4 a8
  h4 r8

  \barNumberCheck 30
  h4 r8
  a8 a16 a a a
  a4 r8
  fis'8 fis16 fis fis fis
  fis8 d fis

  \barNumberCheck 35
  d8 d16 d d d
  d8 a d
  a8 fis a
  a8 fis a
  a8 fis16 fis fis fis

  \barNumberCheck 40
  fis4 a8
  d4 e8
  fis8 d16 e fis g
  a8( h) a
  a4 d8

  \barNumberCheck 45
  d8( cis) d
  d8( a) d
  d8( cis) e
  e4 a,,8
  d4 e8

  \barNumberCheck 50
  fis8 d16 e fis g
  a8( h) a
  a4 h8
  g8 fis16 g a fis
  g8 e h'

  \barNumberCheck 55
  g8 fis16 g a fis
  g8 e g
  g4.~
  g8 fis16( e) fis8
  fis4.~

  \barNumberCheck 60
  fis8 h, e~
  e16 fis dis8. e16
  e4 r8
  R4.
  e8 e16 e e e

  \barNumberCheck 65
  e8 cis a
  h4 cis8
  d4 r8
  r4 d8
  d8( c!) c

  \barNumberCheck 70
  \slurDashed c8( h) r \slurSolid
  r4 h8
  c8( h) c
  c8( g) c
  c8( h) d

  \barNumberCheck 75
  d4.
  c8(\p h) c
  c8( g) c
  c8( h) d
  d4 d8\f

  \barNumberCheck 80
  c8 g fis
  g4 c8
  f8 e16( d) c( h)
  e8 d16( c) h( a)
  h4 g8

  \barNumberCheck 85
  g4 e'8
  e8( d) d
  \slurDashed d8( c) r \slurSolid
  R4.
  R4.

  \barNumberCheck 90
  r4 d8
  d4 c8
  h8 c d
  d4 h8
  e4 fis8

  \barNumberCheck 95
  d4 e8
  e4 fis8
  d8 h d
  e4 r8
  e4 r8

  \barNumberCheck 100
  d8 d16 d d d
  d4 r8
  h8 h16 h h h
  h8 g h
  g8 g16 g g g

  \barNumberCheck 105
  g8 d g
  d8 h d
  d8 h d
  d8 h'16 h h h
  h4 r8

  \barNumberCheck 110
  d8 d16 d d d
  d4 r8
  d8( d,) d'
  d8( h) d
  d8( d,) fis'

  \barNumberCheck 115
  fis4.
  h,,8 g d'
  h8 g d'
  g,8 g16 g g g
  g4. \bar "|."
}

vivaceViolinIV = \relative d' {
  \vivaceGlobal
  \vivaceTheme r8
  R4. * 4

  d'8 d16 d d d
  d8 h g
  d'8 d16 d d d

  \barNumberCheck 20
  d4.
  R4. * 3
  r4 g8

  \barNumberCheck 25
  e4 a8
  d,4 g8
  e4 a8 d,4 d8
  g,4 r8

  \barNumberCheck 30
  gis4 r8
  a8 a16 a a a
  a4 r8
  d'8 d16 d d d
  d8 a d

  \barNumberCheck 35
  a8 a16 a a a
  a8 fis a
  fis8 d a'
  fis8 d a'
  d,8 d16 d d d

  \barNumberCheck 40
  d4 r8
  r4 a'8
  d4 e8
  fis8( g) fis
  fis4 a8

  \barNumberCheck 45
  a8( a,) a'
  a4 a8
  a8( a,) cis'
  cis4 r8
  r4 a,8

  \barNumberCheck 50
  d4 e8
  fis8( g) fis
  fis4 fis8
  e8 dis16 e fis dis
  e4 fis8

  \barNumberCheck 55
  e8 dis16 e fis dis
  e8 h h'
  h4.~
  h8 a16( g) a8
  a4.~

  \barNumberCheck 60
  a8 g16 fis g8~
  g16 a fis8. e16
  e4 e,8
  fis4 gis8
  a4 r8

  \barNumberCheck 65
  r4 a'8
  a8( g) g
  g8( fis) r
  r4 fis,8
  g4 a8

  \barNumberCheck 70
  a8( g) r
  r4 g8
  g8( g,) g'
  g8( e) g
  g8( g,) h'

  \barNumberCheck 75
  h4.
  g8( _\markup { \parenthesize \musicglyph #"p" } g,) g'
  g4 g8
  \slurDashed g8( g,) h' \slurSolid
  h4 g8 _\markup { \parenthesize \musicglyph #"f" }

  \barNumberCheck 80
  g8 g c,
  d4 c'8
  c4 g8
  g4 a8
  g4 f8

  \barNumberCheck 85
  e4 c'8
  c8( h) h
  h8( a) fis!
  g4 g,8
  d'4 r8

  \barNumberCheck 90
  r4 d8
  g4 a8
  h8 a g
  d4 e8
  c4 d8

  \barNumberCheck 95
  g,4 c8
  a4 d8
  g,4 g'8
  c,4 r8
  cis4 r8

  \barNumberCheck 100
  d8 d16 d d d
  d4 r8
  g8 g16 g g g
  g8 d g
  d8 d16 d d d

  \barNumberCheck 105
  d8 h d
  h8 g d'
  h8 g d'
  g,8 g16 g g g
  g4 r8

  \barNumberCheck 110
  d'8 d16 d d d
  d4 r8
  d4.~
  d4.~
  d4.~

  \barNumberCheck 115
  d4.
  h8 g d'
  h8 g d'
  g,8 g16 g g g
  g4. \bar "|."
}
