\version "2.19.7"
\include "header.ily"

global =      \sequential  {
  \partial 8 \time 2/4
  \key f \major
}
hornI = \relative c''
{
  \repeat volta 2 {
    a8
    c bes a g |
    f4 r8 f |
    g g g g16( a)
    f4 r8 f |
    g g  g g16 ( a16) |
    f8 g16 a bes c d e
    \octaveCheck f''
    f8( d ) a b
    c4 r8 c |
    d16( e) f d b( c) d b
    c d e f g e d c
    d( e ) f d b( c ) d b
    c4 r8
  }
  \repeat volta 2 {
    \octaveCheck c''
    c,8 c'4. a8 |
    d4. c8 |
    bes4. g8|
    c4. bes8 |
    a4.  f8 ~ f bes4 a8~ a g4 f8
    c'4 r8 a c bes a g
    \octaveCheck f'
    f16( g ) a bes c d e f | e2
    f16( g) a bes c a g f |
    e2 f8 r c r |
    bes r g r |
    f4 r8 c |
    f f f c
    a' a a f
    c'4 g8. a16 f4 r8
  }

}


hornII =
\relative c' {

  \repeat volta 2 {
    f8 a g f c a4 r8 a c8 c c c
    a4 r8 a8 c c c c
    a4 r |
    \octaveCheck f
    f'2 e8 g e g f g f g e g e g f g f g
    e4 r8
  }
  \repeat volta 2 {
    r8 | r
    f,8 f'4~ f8 d g4 ~ g8 f
    e4 ~ e8 c f4 ~ f8 e es4 d c
    \octaveCheck bes
    bes b |
    c r8 f a g f c a4
    r8 a'8
    bes8 g c bes a4 r8 a8
    bes g c bes a r a r g r c, r a4 r8

    % should be conditional for horn only.
    \clef bass
    c,8 f f f c a' a a f c'4 c,
    % the Stoesser says e here, but that   is too strange.
    f4
    r8
  }

}

\score {
  \new StaffGroup   <<
    \new Staff << \global \hornI >>
    \new Staff <<\global \hornII >>
  >>
  \layout { }

  \midi {
    \tempo 4 = 90
  }

  \header {
    piece = "No. 1. Allegro"
  }
}
