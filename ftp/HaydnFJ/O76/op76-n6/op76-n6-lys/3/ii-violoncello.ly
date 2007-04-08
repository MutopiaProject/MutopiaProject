\version "2.6.0"
celloSecondMov =  \relative g {
  \key g \major
  \clef bass

  #(override-auto-beam-setting '(end 1 16 * *)  1 4)
  #(override-auto-beam-setting '(end 1 16 * *)  2 4)
  #(override-auto-beam-setting '(end 1 16 * *)  3 4)

  g4\p r
  | r2 fis4( g)
  | d g, r2
  | d'4( g c, cis)
  | d2 g4 r
  | r2 fis4( g)
  | d g, r2
  | d'4( g c, cis)
  | d2 d4 d
  | d r d d

  % 10
  | d r b( c8 d)
  | e2 a,4 a
  | d2\fermata b'4.\fz b8
  | c4 g c,4.\fz g'8
  | d4 g c,2\p
  | b4( c d) d
  | g,2 b'4.\fz b8
  | c4 g c,4.\fz g'8
  | d4 g c,2\p
  | \stemUp b4( c d) d \stemNeutral

  % 20
  | g,2

  \bar "||" \break
  % Var. I

  r2
  | R1*19

  % 40
  | r2

  \bar "||" \break
  % Var. II

  g'4.(\p a8
  | b4 a) c( b
  | a8 fis g4) e'( d
  | c b) << { a4( b8 g) } { s8. s16-\turn } >>
  | d'2 g,4.(\p a8
  | b4 a) c( b
  | a8 fis g4) e'( d
  | c b) << { a4( b8 g) } { s8. s16-\turn } >>
  | d'2 a4( b)
  | a8( fis) d4 c'( b)

  % 50
  | a8( fis) d4 d'( c
  | b4.) b8 cis4 cis8( d)
  | d2 g4.-\( fis8
  | \acciaccatura fis8 e4 d-\) e4.-\( d8
  | \acciaccatura d8 c4 b-\) a4.\fz( b16 c)
  | d8( e c a) g4\( \acciaccatura b8 a8. g16\)
  | g8( a16 b c d e fis) g4.-\( fis8
  | \acciaccatura fis8 e4 d-\) e4.-\( d8
  | \acciaccatura d8 c4 b-\) a4.\fz( b16 c)
  | d8( e c a) g4\( \acciaccatura b8 a8. g16\)

  % 60
  | g4 g,

  \bar "||" \break
  % Var. III

  r2
  | R1*7
  | r2 r8 d''-\( \acciaccatura c8 b[ a16 g]-\)
  | d4 r16 d( fis a) d8( dis e cis)

  % 70
  | d!4. c!4 b a8 ~
  | a d, g fis e es es, es'
  | d4 d, r2
  | r a''8( gis g fis)
  | e( e' dis d) cis4 c
  | b8( gis a c,) d2
  | g!4 r r2
  | r a8( gis g fis)
  | e( e' dis d) cis4 c
  | b8( gis a c, d2)

  % 80
  | g4 g,

  \bar "||" \break
  % Var. IV

  e'2(
  | d dis4 e)
  | b( e) c( g'
  | a g) c( cis)
  | d d, e'2(
  | d dis4 e)
  | b( e) \clef tenor c4( g'
  | a g) c,( cis)
  | d1 ~
  | d ~

  % 90
  | d ~
  | d ~
  | d4 e16( fis g a) b8( a g) g
  | g2 \clef bass c,4( b
  | a) e'8( d cis4 c)
  | b( c d) d,
  | g r r2
  | r ais8( b c! gis)
  | a!( dis, e d) cis( a c d,)
  | b'( gis a c) d2

  % 100
  | g1 ~
  | g\pp ~
  | g2 ~ g8 <g, g'>(-. <g g'>-. <g g'>-.)
  | << { g1\fermata } { g'1 } { s2-\< s4-\!-\> s4-\! } >>
  | <g, g'>1\pp\fermata

  \bar "|."
}
