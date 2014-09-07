\version "2.18.2"

\include "header.ily"

global =  {
    \time 3/4
    \key c \major
}

hornI = \relative c'' {
  \repeat volta 2 {
    %% b is not beamed?!
    c2. e8(d) d(b) c4 |
    f2 e4 e8(d) d(b) c4
    a'2( g4) g4( f) e e8( d ) d g e c |
    e2 d4
  }

  \repeat volta 2 {
    g2.~( g8 fis e d cis d)
    f2.~( f8 e d c b c )
    c' b a g f e |
    d e f g a f |
    e(g) c,( e) d( b) |
    b2( c8) r
  }

  \repeat volta 2  {
    \key f\major
    c4\p c4.( f8) f(e) e4 r
    c e4.( g8) g8( f) f4 r
    c4 f4.(a8) |
    a8( g ) f4. e8 |
    e8( d) d c d e |
    d2( c8) r
  }

  \repeat volta 2 {
    c8\mf  d e f g a bes g e c f4 |
    d4. e8 f g f2 ( e4)
    c4 f4.( es8)
    d8 cis d e f fis |
    g8.( a16) f4 e e2 ( f8) r
    \key c  \major
  }
}

hornII = \relative c' {
  \repeat volta 2 {
    c4 e c g' f e r b' c g f e r f' e a, b c g r c,8 e g4 g, r
  }

  \repeat volta 2 {
    a'4\mf b  cis d r r
    g, a b c r r
    e8 g f e d  c |
    b c d e f  d c4 e,, g g2( c8) r
  }

  \repeat volta 2 {
    \key f \major
    a'8 c a c a c \repeat unfold 6 {  bes c }
     \repeat unfold 6 {  a c }
    b2 c4 f, r g g2( c,8) r
  }

  \repeat volta 2 {
    R2.
    c'4 bes a |

    bes bes b
    c c, r
    a'8 c a c a c
    bes8 a bes g a4 |
    bes c c |
    c2 ( a8) r
    \key c \major
  }
}

\score {
  \new StaffGroup <<
    \new Staff << \global \hornI >>
    \new Staff << \global \hornII >>
  >>
  \layout { }

  \midi {
    \tempo 4 = 78
  }

  \header {
    piece = "No. 9.  Menuetto"
  }
}
