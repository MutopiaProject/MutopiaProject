\version "2.19.7"

\include "header.ily"
global =  {
  \time 3/4
  \key c \major
}

hornI =  \relative c'' {
  \repeat volta 2 {
    c8\mf c16 b c8 g e'4 |
    d8 d16 c d8 g, f'4
    e16(\p g) c b b( a) a( g) g( f) f( e) |
    d e d c b c b a g4 |
    \octaveCheck c''
    c8\mf \acciaccatura d8 c16 b
    c8 g e'4 d8 \acciaccatura e16 d16 c d8 g, f'4 |
    e16( g) c b b( a ) a( g)  g( f) f( e) |
    e( d c b ) b4 c8 r |
  }

  \octaveCheck d''
  d4.\f f8( e g)
  g4 g16( f e f ) e4|
  d4. f8 e16( g ) c a |
  g4 g16 ( f e f ) e4
  fis8 g fis g \appoggiatura b16  a8[( g16 fis] )|
  g8 d d d d d |
  fis8 g fis g \appoggiatura b16 a8[( g16 fis)]|
  g4 r8 g,8 b d g4 r8 g,8 b d |
  \octaveCheck f''
  f4. g16( a16) g16( e) f( d) |
  c8\p c16 b c8 g e'4 | d8 d16 c d8 g, f'4 |
  e16(\mf g) c b b(a ) a(g) g(f) f( e) |
  d( e) d c b( c ) b a g4

  %% Stosser puts appoggiatura here; I believe this is wrong.
  c8 \acciaccatura d16 c16 b c8 g e'4
  \octaveCheck d''
  d8 \acciaccatura e16( d16) c d8 g, f'4 |
  e16( g) c b  b(a ) a(g) g(f) f( e) |
  e( d c b) b4( c8) r
  \bar "|."
}

hornII =  \relative c' {
  \repeat volta 2 {
    % now useless as LP does the right thing by default
    % #(o verride-auto-beam-setting '(begin 1 8 3 4)  1 8 'Staff)
    c4\mf r8 c c c b4 r8 b b b |
    c\p e'( f)[ e]( d) c |
    b b16( c ) d8 d16 ( c ) b8 g |
    c,4\mf r8 c[ c c] b4 r8 b[ b b] |
    c  e'( f)[ e(] d)[ c] |
    g g g4 c,4 |
  }
  b'8 g b g c g d' g, b g c g
  b g b g c g |
  d' g, b g c c,  |
  c' ( b) c(b) c( d)|
  g,4 r8 d'8[ b g] |
  c8 ( b) c( b) c( d)
  g,16 g' d b g4 r4 |
  r16 g( fis g) g,4 r
  R2.

  c4\p r8 c[\mf c c]
  % Stoesser writes c c b here, I believe it is an error.

  b4 r8 b[ b b] |
  c e'( f[) e(] d[) c] |
  b b16 ( c ) d8 d16( c) b8 g|
  c,4 r8 c[ c c] |
  b4 r8 b[ b b] |
  c e'(f[) e] ( d)[ c] |
  g g g4 c,
}

\score {
  \new StaffGroup   <<
    \new Staff << \global \hornI >>
    \new Staff <<\global \hornII >>
  >>
  \layout { }

  \midi {
    \tempo 4 = 85
  }


  \header {
    piece = "No. 4. Polonaise"
    
  }

}
