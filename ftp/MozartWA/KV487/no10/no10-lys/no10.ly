\version "2.18.2"

\include "header.ily"

global = {
    \time 2/2
    \key c \major
    }

hornI =  \relative c'' {
  \repeat volta 2 {
    c2 d8( c d e ) |
    c4 g  g g
    d'2 e8( d e f )
    d4 g, g g |
    g'2 b,8( c d b) |
    c2 a'8( fis) d c |
    b g'( e a) g4 fis fis2( g4) r
  }

  \repeat volta 2 {
    g2\mf e8( f g a )
    f2 d8( e f g)|
    f( e d e )
    c4 f |
    e2(d4) r
    f2\p e8( d c b) |
    g'2 f8(e  d c) |
    a( a' f d ) c4 b |
    b2( c4) r
  }
}

hornII =  \relative c' {
  \repeat volta 2 {
    e2 g
    e8 c e g e g e c |
    g'2 c8( b c d)
    d g, b d b d b g |
    e4 r g2 |
    a2 fis |
    g4 c d d |
    d2( g,4) r4  |
  }

  \repeat volta 2 {
    r4 e'4 cis a |
    r d b g |
    c b a d |
    c8 c, e c g'4 r |
    r d'\mf b g |
    r e c' a |
    r4 r8 fis8
    g4 g, g2( c4) r
  }
}

\score {
  \new StaffGroup <<
    \new Staff << \global \hornI >>
    \new Staff << \global \hornII >>
  >>
  \layout { }

  \midi {
    \tempo 4 = 70
  }

  \header {
    piece = "No. 10.  Andante"
  }
}
