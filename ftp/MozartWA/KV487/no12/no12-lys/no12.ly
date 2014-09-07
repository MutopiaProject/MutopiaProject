\version "2.18.2"

\include "header.ily"

global =  {
  \time 2/4
  \key c \major
  \partial 8
}

hornI =  \relative c'' {
  \repeat volta 2 {
    f8\mf f(d) bes-. bes-. bes4.( b8) c8( b) c f es4( d8) f f( d ) bes
    bes bes bes'4 a8 \acciaccatura a8 g f g a
  }
  \alternative {
    {
      \set Timing.measureLength = #(ly:make-moment 3/8)
      f4 r8
    }
    {
      \set Timing.measureLength = #(ly:make-moment 2/4)
      f4
    }
  }

  \repeat volta 2 {
    f8\f f |
    g r d\p d |
    es r c c |
    es16 ( d c d) es8 d |
    b( c ) f-.\f f-. |
    g r d8 \p d es r c c d\< d c c d d e  e\! f16(\mf g) f e
    f( g) a f e( f ) e d e( f) g e |
    f\p( g) f e f( g) a f
    e( f) e d e( f) g e f4\fermata r8 f8 f(\mf d) bes-. bes-. |
    bes4.( b8) |
    \acciaccatura d c8( b ) c f es4( d8) f |
    f( d) bes-. bes-. bes4. b8 |
    \acciaccatura d c bes c d bes4 r8 d8\p|
    \acciaccatura f es d es f \acciaccatura es d c d es |
    \acciaccatura d c bes c f | d4 r8 d |
    \acciaccatura f es d es f |
    \acciaccatura es d c d es |
    \acciaccatura d c bes c d |
    bes 4 r |
    c\f c d r |
    c2\p^\markup { \halign #-0.7 "Andante"  }
  }
  \alternative {
    {
      \set Timing.measureLength = #(ly:make-moment 1/4)
      bes4
    }
    {
      \set Timing.measureLength = #(ly:make-moment 2/4)
      bes4 r
    }
  }
}

hornII =  \relative c' {
  \repeat volta  2 {
    r8
    bes \mf f' d f bes, f' d bes a f' a f bes bes, bes r |
    d f d f e r f r
    bes r c r |
  }
  \alternative {
    {
      \set Timing.measureLength = #(ly:make-moment 3/8)
      f,4 r8
    }
    {
      \set Timing.measureLength = #(ly:make-moment 2/4)
      f4
    }
  }

  \repeat volta 2 {
    d'8 d es r b b c r a a bes a16( bes) c8 bes |
    gis( a ) d-. d-. es r b b |
    c r f, f bes bes f f bes bes g g |
    a c a c bes c bes c |
    a c a c bes c bes c |
    a8\fermata r8 r4 |
    bes,8 f' d f |
    bes, f' d bes |
    a f' a f bes bes, bes r |
    d f d f  d f d bes |
    f f' a f bes4 r8 bes |
    c r f, r bes r bes, r |
    f' r f, r |
    bes d f bes | c r f, r |
    bes r bes, r f' r f, r |
    bes r r4 |
    f'4 f bes r
    f2
  }
  \alternative {
    {
      \set Timing.measureLength = #(ly:make-moment 1/4)
      d4
    }
    {
      \set Timing.measureLength = #(ly:make-moment 2/4)
      d4 r
    }
  }
}

\score {
  \new StaffGroup <<
    \new Staff << \global \hornI >>
    \new Staff << \global \hornII >>
  >>
  \layout { }

  \midi {
    \tempo 4 = 100
  }

  \header {
    piece = "No. 12.  Allegro"
  }
}
