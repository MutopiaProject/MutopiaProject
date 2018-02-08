\version "2.18.2"
\include "deutsch.ly"

global = {
  \key d \major
  \time 12/8
}

violin_i = \relative d''' {
  \global
  \repeat volta 2 {
    R1.
    R1.
    r2. d4 cis8 h cis a
    g8 a fis e fis d cis4. d4 e8
    fis8 g e d e cis h a h e,4.

    e4. r r2.
    a'4 g8 fis g e d e cis h cis a
    gis8 e gis a fis a h gis h cis a cis
    h8 gis h cis a cis h gis cis h4.
    cis8 a d cis4 h8 cis2.
  }
  \break
  \repeat volta 2 {
    R1.
    R1.
    R1.
    d4 a'8 fis8. e16 fis8 d a d fis d fis
    g4 fis8 e4 d8 cis fis, d' cis4.
    h4. h4 e8
    cis8. h16 cis8 d4.
    d4 g8 e8. d16 e8 fis4. a
    a4. cis8 a cis d h d cis a cis
    d8 h d cis a cis d h d d4 cis8
    d4. d4 cis8 d2.
  }
}

violin_ii = \relative a'' {
  \global
  \repeat volta 2 {
    R1.
    a4 g8 fis g e d e cis h cis a
    gis4. a8 h g fis g a h4 cis8
    d4 d8 h4. a a4 g8
    fis4. r e'4 d8 cis d h

    a8 h g fis g e d e fis e fis d
    cis8 d e d d' cis h4 cis8 d e cis
    h8 gis h cis a cis gis e gis a fis a
    gis8 e gis a fis a gis e a a4 gis8
    a4. a4 gis8 a2.
  }
  \break
  \repeat volta 2 {
    a4 e'8 cis8. h16 cis8 a e a cis a cis
    d4 e8 d4 e8 fis4 g8 a4 a,8
    h8 e h a d a h4 a8 h a g
    fis4 g8 a4. a a
    h4. cis4 h8ais4 h8 cis4 fis8
    dis8 cis dis e4. e4 a8 fis8. e16 fis8
    g4 h8 a4. a4 d8 cis8. h16 cis8

    a8 e a e cis e fis d fis e cis e
    fis8 d fis e cis e fis d fis e4.
    fis8 d g fis4 e8 fis2.
  }
}

violin_iii = \relative d'' {
  \global
  \repeat volta 2 {
    d4 cis8 h cis a g a fis e fis d
    cis4. d8 d' cis h cis a g a fis
    e8 fis d cis4. d8 e fis g4 a8
    h4 a8 gis4. a4 g8 fis g e
    d8 e cis h cis a gis4. a4 h8

    cis4. d8 e cis h cis d h4.
    a4. a'4 g8 fis4 e8 fis4.
    h,4 e8 e4. e8 h e e4.
    e8 h e e4. e e
    e4 fis8 e4 d8 e2.
  }
  \break
  \repeat volta 2 {
    R1.
    d4 a'8 fis8. e16 fis8 d a d fis d fis
    g e g fis d fis g4 fis8 g fis e
    d4 e8 d4. fis d
    d4. a'4 fis8 fis4 h8 h4 ais8
    h8 fis h gis8. fis16 gis8 a4. a4 d8
    h8. a16 h8 cis8. h16 cis8 d4. e
    cis4. a8 a, a' a a, a' a a, a'
    a8 a, a' a a, a' a a, a' a a, a'
    a4 h8 a4 g8 a2.
  }
}

bass = {
  \global
  \clef "bass"
  \repeat volta 2 {
    <<
      \relative d {
        d4. g4 fis8 e4 d8 cis4 h8
        a4. d, g h
        e4. a, d g,
        g4 d8 e4. a d4 g,8
        d'4. d e4 h8 a4.

        a4. d g4 d8 gis,4.
        a8 h cis d4. d, d
        e4. e e e
        e4. e e e
        a4. a a2.
      }
      \new FiguredBass {
        \figuremode {
          s1.
          s4. s s <6>
          <_+>4. s s s
          s4. <_+> <7->4. s4 <6>8
          s4. <6> <_+>4 <6+>8 s4.

          s4. s s <6>
          s4 <7->8 s4. <6> <6 5>
          <_+>4. <6 4> <_+>4. <6 4>
          <_+>4. <6 4> <_+>4 <4>8 <4>4 <_+>8
          <5 3>4 <6 4>8 <5 3>4. s s
        }
      }
    >>
  }
  \break
  \repeat volta 2 {
    <<
      \relative a, {
        a4 gis8 a4. a a
        d4 cis8 d4. d d
        g,4. d' g,4 d'8 g,4 a8
        d4 cis8 d4. d d
        g,4. a4 h8 fis4. fis
        h4. e a, d
        g,4. a d a
        a4. a a a
        a4. a a a
        d,4. d d2.
      }
      \new FiguredBass {
        \figuremode {
          s4 <6>8 s4. s s
          s4 <6>8 s4. s s
          s1.
          s4 <6>8 s4. s s
          s4. s <_+>4 <6 4>8 <5 4>4 <_+>8
          <_+>4. <_+> s s
          s1.
          s4. s <6 4> s
          <6 4>4. s <6 4> <5 4>4 \bassFigureExtendersOn <5 3>8 \bassFigureExtendersOff
          s1.
        }
      }
    >>
  }
}

