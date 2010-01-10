\version "2.13.9"

\include "defs.ily"

hornAllegro = \relative c''
{
  \key c \major
  \transposition ees
  r4 |
  R1*4 |
  c2\f^\tutti g |
  c, r |
  R1 |
  r8 g' g g g g e c |
  g'4 g, r2 |
  R1*18
  r2 r4 g'4^\solo |

  %A
  e'4. c8 f( d c b) |
  b( c) g4 r8 g c e |
  g2. g16( f e f) |
  dis4( e4) r8 c8 c c |
  c4.( d16 e f4 e) |
  a,( d g, c) |
  d d \appoggiatura e16 d8. c16 d8. e16 |
  c4 r r2 |
  R1*3 |
  c,2~ c8 e g c |
  c( b) b4 r2 |
  c,8 e g c e( g) e c |
  c( b) b4 r2 |
  c4.( g8 e'4. c8) |
  g'( d) d4 r4 d |
  d8( c) c4.( d16 e d8 c) |
  c8(\trill b) b4 r2 |
  d2~( d8 e16 d c8 b) |
  b( a) a4 r8 a a a |
  a4( cis e g) |
  \appoggiatura g16 fis8( e16 d) d4 r2 |

  %B
  R1*3
  \once \override Staff.DynamicText #'self-alignment-X = #LEFT
  r2 r4 d8(_\conEspressione b) |
  a( g) d'( b) a( g) e'( c) |
  b8( a) a4 r4 a8 a |
  a(\< b c cis\> d4 c\!) |
  \crescJustTextCresc
  ais8( b) r8 b\< b( c) r c |
  cis( d)\! r4 r2 |
  g,1~\f |
  g2~ g8 a16 b c( d) e c |
  f4-. d-. b-. g-. |
  R1 |
  c,2\p e4 g |
  c e\< g4. e8 |
  d4.\f e16 fis g( fis) e d c( b) a g |
  \afterGrace a1(\trill {g16[ a]} |

  %C
  g4) r r2
  R1*15

  %D
  bes2\mf d4 f |
  g,2~ g8 g' ees c |
  bes4( a4.) c8( d ees) |
  cis4( d) r8 bes( c d) |
  ees2( d4) r |
  ees2( d4) r |
  c8( g' ees c) bes4( c) |
  c4.( cis8 d4) r |
  R1*2 |
  ees1~ |
  ees1|
  e |
  d |
  c |
  c, |
  e' |
  e, |
  c'2 b8( a gis a) |
  gis8 e gis b e4 r |
  r8 e, a c dis4 r |
  r8 e, gis b e4 r |
  r8 e, a c dis4 r |
  r8 e, g b e4 r |
  r8 fis, b dis fis4 r |
  r8 gis, b d f4 r |
  r8 g, b d f4 r |

  %E
  R1*8 |
  r2 r8 g,-.\p g-. g-. |
  e'4.( c8) f( d c b) |
  b( c) g4 r8 g c e |
  g2. g16( f e f) |
  dis4( e) r8 c c c |
  c4.( d16 e f4 e) |
  a,( d g, c) |
  d d \appoggiatura e8 d8. c16 d8. e16 |
  c4 r r2 |

  %F
  R1*3 |
  c,2~ c8 e g c |
  c8( b) b4 r2 |
  c,8 e g c e( g) e c |
  c( b) b4 r2 |
  c2( bes |
  a) a8( b c cis) |
  d2~\( d8 e16 d \appoggiatura d16 c8 b16 c\) |
  \appoggiatura c16 b8( a16 g) g4 r2 |
  R1*3 |
  r2 r4 g'8( e) |

  %G
  d( c) g'( e) d( c) a'( f) |
  e( d) d4 r d8 d |
  d4~( d16 e d e) g8( f) e d |
  c4 r r2 |
  R1 |
  c1~ |
  c |
  \crescJustTextCresc
  c8-. c-. r c-. cis( d) r\< d-. |
  dis( e) r e-. e( f) r f-. |
  g4-.\f e-. c-. bes-. |
  g-.\ff e-. c-. r |
  a'2~ a8\sempreF b16 c d( e d e) |
  f4.( d8) f8( d) f d |
  c( e g2) \appoggiatura f16 e8( d16 c) |
  \afterGrace d1\trill( {c16[ d]} |
  c4) r r2 |
  R1 |

  %H
  \crescJustTextCresc
  \times 2/3 { c8\< b a } \times 2/3 { g a b } \times 2/3 { c d e } \times 2/3 { f e d } |
  \times 2/3 { c b a } \times 2/3 { g a b } \times 2/3 { c d e } \times 2/3 { f e d } |
  \crescJustTextPiuCresc
  c4 \times 2/3 { r8 g'(\< e)} c4 \times 2/3 { r8 e( c)} |
  g4 \times 2/3 { r8 c8( g) } \times 2/3 { e( g) e-. } \times 2/3 { c( e) c-. }|
  g4 r8 g'\f a b c d|

  \afterGrace d1(\trill {c16[ d]}
  c4) r r2 |
  R1*3 |

  c4.(\fermata_\cadenzaAdLib d8) d4.(\trill\fermata c16 d) |
  c4 r r2 |
  R1*8 |
  r4 c8.\f^\tutti c16 c4 c |
  c c,8. c16 c4 c |
  c2 r2 |
}

hornRomanze = \relative c''
{
  \key f \major
  \transposition ees
  \once \override Staff.DynamicText #'self-alignment-X = #LEFT
  c4.(\pConMoltoEspressione f8) a,4 a |
  bes8( c d bes g4) r8 g |
  a r bes r c r d( bes) |
  a2 g8( a bes b) |
  c4.( f8) a,4 a |
  bes8( c d bes) g4 r8 c, |
  c8( e g bes) a( c f d) |
  c r e r f r r4 |

  %A
  R1*8
  g4.\mf f8 e d c bes |
  bes( a d c) c4 r |
  R1*2 |
  g'4. f8 e d c bes |
  bes( a d c) c4 r |
  R1 |
  \repeat unfold 2
  {
    c16( d c d) e( f e f) g( e) c-. c-. f( d) b-. b-. |
  }
  c8\< c, c c \repeat tremolo 4 c |

  %B
  c1\f |
  R1*9 |
  f'4.(\p d8) b4 r8 g |
  g'4.( e8) c4 r8 cis |
  d4~( d16 e d e) f8( d) f( d) |
  c2( b4) r |
  R1*4 |
  e4.( g8) c,4( cis) |
  d8( e f d) b4 r8 g |
  c( e) g g g( f e d) |
  c4\( \appoggiatura e16 d8. c16\) \< c8 c-.( c-. c)-. |

  %C
  des1\sfp |
  g,1\sfp |
  c\sfp |
  c,\sfp |
  R1*3 |
  r8 c\p c c c2~ |
  c8 c' c c c2~ |
  c8\< e( g f e d\> c bes |

  %D
  a4\!) r r2 |
  R1*3 |
  c4.\p( f8) a,4 a |
  bes8( c d bes) g4 r8 c, |
  c8( e g bes) a( c f d) |
  c r e r f4 r4 |
  R1*3 |
  r2 r4 r8 c,8 |
  c8( e g bes) a( c f d) |
  c r e r f4 r4 |
  g,1 |
  c,2~ c4. c8 |
  c8( e g bes) a( c f d) |
  c r e r f4 r4 |
  R1 |
  c8-. r e-. r f4 r4 |
  c8-.( r c,-. r c4) r4 |
}

hornRondo = \relative c''
{
  \key c \major
  \transposition ees
  g8\p |
  c8 c c c c c |
  c4( cis8 d) r g, |
  d'8 d d d d d |
  d4( dis8 e) r c |
  c d e f g a |
  g( e) c c4 d8 |
  e4( d8) e4( f8) |
  e4.( d8) r r |

  R2.*13 |
  r8 r\fermata d d e f |
  g( e) c-. d( e) d-. |
  c4 c8 d e f |
  g( e) c-. d( e) d-. |
  c4 r8 r4 r8 |
  R2.*7 |

  %A
  c4.\p \appoggiatura e16( d8) c d |
  c4 r8 r4 r8 |
  e4. \appoggiatura g16( f8) e f |
  e4 r8 r4 r8 |
  g4. e4 c8 |
  g2.~ |
  g8 a b c d e  |
  e4.( d8) r r |
  R2.*4 |
  e2.~ |
  e8 d c c b a |
  d2.~ |
  d8 c b b a g |
  g'4 e8 b4 cis8 |

  %B
  d4 r8 r4 r8 |
  R2.*3 |
  r8 d-. d-. d( g) d-. |
  d( g) d-. d d d |
  d( g) r r4 r8 |
  R2. |
  r8 g,-. g-. c( e) g,-. |
  c( e) g,-. c( e) g,-. |
  c c, c c c c |
  c c c c c c |
  c4 r8 c' d e |
  d4( g8) c, d e |
  d4 r8 r4 r8 |
  R2. |
  r4 r8 c-. d-. e-. |
  d4( g8) c, d e |
  d( g) fis e d c |
  b( e) d c b a |

  %C
  g4 r8 r4 r8 |
  R2. |
  r8 g\f g g( b) b-. |
  b( d) d-. d( g) g-. |
  g2.~ |
  g8\> a g f e d |
  c8\p c c c c c |
  c4( cis8 d) r g, |
  d'8 d d d d d |
  d4( dis8 e) r c |
  c d e f g a |
  g( e) c c4 d8 |
  e4( d8) e4( f8) |
  e4.( d8) r r |
  R2.*12 |
  r4 r8 r4 c8\p |

  %D
  c4 f8 c4 a8 |
  a4.~ a4 a8 |
  bes4 c8 d4 bes8 |
  g4.~ g8 r r |
  R2.*3 |
  r4 r8 r4 c8 |
  a4. c |
  f~ f8. e16( d c) |
  bes4 g8 e4 g8 |
  c,4.~ c8 r r |
  R2.*3 |
  r4 r8 r4 c'8 |
  b4( c8) b4( c8) |
  bes4.~ bes4 g8 |
  a4( c8) f4( b,8) |
  d4.( c8) r r |
  R2.*3 |
  r4 r8 r4 c8 |
  b4( c8) b4( c8) |
  bes4.~ bes4 g8 |
  a4 c8 f( d) b |
  d4.( c8) r r |

  %E
  R2.*9 |
  r8 g-. g-. c( e) g,-. |
  c( e) g,-. c( e) g,-. |
  c c, c c c c |
  c c c c c c |
  c8 c' c c4.~ |
  c8 c d e e fis |
  g4 r8 r4 r8 |
  R2. |
  r8 g, g g g g |
  ees'4.~ ees8 d c |
  b4 r8 r4 r8 |
  R2. |
  r8 g g g g g |
  ees'4.~ ees8 d c |
  \crescJustTextCresc
  b4.\< c4. |
  d4. e4. |

  %F
  f2.~\f |
  f4 r8 r4 r8 |
  r8 g,\> g g g g |
  fis g aes a bes b |
  c8\p c c c c c |
  c4( cis8 d) r g, |
  d'8 d d d d d |
  d4( dis8 e) r c |
  c d e f g a |
  g( e c) c4 d8 | % Different slurring from other times
  e4( d8) e4( f8) |
  e4.( d8) r r |
  R2.*7 |

  %G
  R2.*4 |
  c,4.\mf c4 c8 |
  c4. e4 c8 |
  g'4. g4 g8 |
  g4. g,4 g8 |
  c4 r8 r4 r8 |
  r4 r8 r4 g'8 |
  c( e) g,-. c( e) g,-. |
  c( e) g,-. c( e) g,-. |
  \crescJustTextCresc
  g'2.\< |
  bes,2. |
  a4. b16 c d e f g |
  a4. f4 d8 |
  c8\f g' e c g e |
  c e' c g e c |
  g4 r8 g''8 e c |
  \afterGrace d2._(\trill {c16[ d]} |
  c4) r8 r4 r8 |
  R2.*5 |
  r8 r8\fermata d8\p d e f |
  g( e) c d( e) d |
  \crescJustTextCresc
  c c\< c d e f |
  g( e) c d( e) d |
  c4\f r8 r4 r8 |
  R2.*5 |
  c8\f c, c c c c |
  c4 r8 c4 r8 |
  c4 r8 r4 r8 |
}
