\version "2.18.2"
\include "header.ily"

global = {
  \time 3/4
  \key c \major
}

hornI = \relative c'' {
  \repeat volta 2 {
    g'2( e4) |
    f d d |
    r d8 e f d |
    e4 c8 d e f |
    g2( e4) |
    \appoggiatura g8
    f4 d d |
    r d8 e f d |
    \octaveCheck c''
    c4 r r
  }

  \repeat volta 2 {
    d2( e4)
    c( b c) |
    f2( e4) |
    d4 a'( g ) |
    fis2. |
    g4( d) d |
    es2( c4) |
    b4 \< c8 d e f |
    \octaveCheck g''
    g2\f ( e4) |
    f4 d d |
    r d8\p e f d |
    e4  c8\< d e f\! |
    g2( e4) |

    \appoggiatura g8
    f4 d d |
    r d8 e f d |
    \octaveCheck c''
    c4 r r |
  }
  
  \repeat volta 2 {
    \break
    e2.^"Trio"\mf |
    f2( e4) |
    dis2. |
    e4 r r |
    c2 e4~ e d a'4~a g b, |
    \octaveCheck c''
    c r r |
  }
  
  \repeat volta 2 {
    e2(\p d4) |
    c2( b4) |
    f'2( e4) |
    d2( c4) |
    e4 e e f d b |
    a( b) gis |
    \octaveCheck a'
    a r r |
  }
}

hornII = \relative c'' {
  \repeat volta 2 {
    e2( c4) d4 g, g |
    g, g' g |
    c c, c |
    c8 c e g c g |
    d'4 g, g |
    g, g' g |
    \octaveCheck c''
    c,4 r r |
  }
  
  \repeat volta 2 {
    R1 * 3/4 |
    d'2(\p e4) |
    c4( b c) |
    f2 e4 |
    es d c |
    b r g |
    fis2. |
    g4 r r |
    e'2(\f c4) |
    d g, g |
    g, g'\p g |
    c c,\< c\! |
    \octaveCheck c'
    c8 c e g c g |
    d'4 g, g |
    g, g' g |
    c, r r |
  }
  
  \repeat volta 2 {
    \octaveCheck c'
    c'2.\mf d2 c4~ c b a |
    g4 r r |
    e,2. f2. g |
    \octaveCheck c'
    c,4 r r |
  }
  
  \repeat volta 2 {
    c''2( \p b4) |
    a2( gis4) |
    d'2( c4) |
    b2( a4) |
    c4 c c |
    \octaveCheck d''
    d r r |
    e, e e |
    c_"Menuetto da capo" r r |
  }
}

\score {
  \new StaffGroup   <<
    \new Staff << \global \hornI >>
    \new Staff <<\global \hornII >>
  >>
  \layout {}
  \midi {
    \tempo 4 = 110
    }
  \header {
    piece = "No. 2.  Menuetto"
    footer = "Mutopia-2004/01/12-391"
  }
}
