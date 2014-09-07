\version "2.19.7"

\include "header.ily"

global =  {
  \time 3/4
  \key f \major
  % group eight notes on twos
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
}

hornI =  \relative c' {
  \repeat volta 2 {
    f2 a4 |
    \appoggiatura a16 g8( f16 g)  f8 c' \appoggiatura d16 c8( bes16 a) |
    g2 bes4 \appoggiatura bes16 a8( g16 a g4) r |
    c2 \appoggiatura bes16 a8( g16 f)|
    e (g f a g bes a c) bes8 r |
    a16( c bes a bes c d e ) f( c) a f|
    e ( g f a g bes a c) bes8 r
    a8( c ) f e d c b2( c8) g-. |
    a(d) c4 b8 ( a16 b )
    \octaveCheck c''
    c4 r r
  }
  \break
  \repeat volta 2 {
    c8(-\p g) g4 a
    c8( bes) bes4. g8
    a8\mf( c ) d c bes a |
    c8.( a16) g4 r |
    c8(\p g) g4 a4 |
    c8( bes) bes4. \breathe g8|
    \octaveCheck a'
    a16\mf c d e f(g) a bes c8 a,
    c8.( a16) g4 r
    c2\p

    % Stosser puts the big slur over hte grace as well.
    \appoggiatura bes16 a8( g16 f) |
    \octaveCheck e'
    e16 ( g f a g bes a c) bes8 r |
    a16( c ) d c f e d c bes a g f |
    e( g f a g bes a c) bes8 r |
    a2.\mf |
    bes16( c) bes(c ) d( e) d(e) f8[ r16 c]
    \appoggiatura e16 d8( c16 bes) a4 g |

  }
  \alternative {
    { f4 r r }
    { f4 r r }
  }
  \bar "|."

}

hornII =  \relative c {
  \repeat volta 2 {
    f4 a f c' a r |
    \clef bass
    c, e c f c8 \clef treble c'8 e c |
    \octaveCheck f'
    f4 f, a c4 r r16 c d e |
    f4. c8 a f c'4 r r16 c d e
    f2. |
    f8 d g f e4 |
    f4 g g |
    c, c, r \octaveCheck c
  }
  \repeat volta 2 {
    c8\p c' e c f c g' c, g' c, d e |
    f8(\mf a) bes a g f |
    a8.( f16) c8 c c, c' |
    c,4 \p r8 c'8 f c g' c, g' c, d e |
    f4 r r8 f8 a8. f16 e8 c c, r |
    f4\p a f|
    c r r16 c'16 d e |
    \octaveCheck f'
    f4 a f |
    c c, r16 c' 16 d e f\mf f, a c f8 f es es |
    \octaveCheck d'
    d4 bes' a8[ r16 a16] |
    \appoggiatura c bes8( a16 g) f4 c |
  }
  \alternative {
    { f,16 f'c a f4 r }
    { f4 r r }
  }
  \bar "|."
}




\score {
  \new StaffGroup   <<
    \new Staff << \global \hornI >>
    \new Staff <<\global \hornII >>
  >>

  \layout {
    \context {
      \Score
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)
    }

  }

  \midi {
    \tempo 4 = 65
  }

  \header {
    piece = "No. 3. Andante"
  }
}
