\version "2.6.0"
violaSecondMov =  \relative g {
  \key g \major
  \clef alto

  #(override-auto-beam-setting '(end 1 16 * *)  1 4)
  #(override-auto-beam-setting '(end 1 16 * *)  2 4)
  #(override-auto-beam-setting '(end 1 16 * *)  3 4)

  g4\p r
  | r2 d'4(-. d-.)
  | fis,8( a g4) r2
  | a4( b e g,)
  | fis2 g4 r
  | r2 d'4(-. d-.)
  | fis,8( a g4) r2
  | a4( b e g,)
  | fis2 d'4 d
  | d r a( g8 b

  % 10
  | d4) r d( e8 fis
  | g4) g, e' e8( d)
  | d2\fermata <g, d'>\fz
  | e'8.( fis16) g4 g4.\fz g8
  | <d a'>4-. <d b'>-. d2\p
  | g,4( e'8 c) b4-\( \acciaccatura d8 c4-\)
  | b2 <g d'>2\fz
  | e'8.( fis16) g4 g4.\fz g8
  | <d a'>4-. <d b'>-. d2\p
  | g,4( e'8 c) b4-\( \acciaccatura d8 c4-\)

  % 20
  | b2

  \bar "||" \break
  % Var. I

  r2
  | R1*19

  % 40
  | r2

  \bar "||" \break
  % Var. II

  r2
  | r d, ~
  | d4 g r2
  | r d ~
  | d4 r r2
  | r d ~
  | d4 g r2
  | r d2 ~
  | d4 r d2 ~
  | d1 ~

  % 50
  | d2 <d a'>4( fis)
  | g2( e)
  | d r
  | R1
  | \grace s8 r2 fis4.(\fz g16 a)
  | b8( c) <c, c'>4 d2
  | g4 r r2
  | R1
  | \grace s8 r2 fis4.(\fz g16 a)
  | b8( c) <c, c'>4 d2

  % 60
  | g4 r

  \bar "||" \break
  % Var. III

  g'4.( a8)
  | b4( a c b)
  | a8( fis g4) e'( d
  | c b) << { a4( b8 g) } { s8. s16-\turn } >>
  | d'2 g,4.( a8)
  | b4( a c b)
  | a8( fis g4) e'( d
  | c b) << { a4( b8 g) } { s8. s16-\turn } >>
  | d'2 a4( b)
  | a8( fis d4) c'( b)

  % 70
  | a8( fis d4) d'( c
  | b4.) b8 cis4 cis8( d)
  | d2 g4.( fis8)
  | \appoggiatura fis16 e4( d) e4.( d8)
  | \appoggiatura d16 c4( b) a4.( b16 c)
  | d8( e c a) g4-\( \acciaccatura b16 a8. g16-\)
  | g8( a16 b c d e fis g4.)( fis8)
  | \appoggiatura fis16 e4( d) e4.( d8)
  | \appoggiatura d16 c4( b) a4.( b16 c)
  | d8( e c a) g4-\( \acciaccatura b16 a8. g16-\)

  % 80
  | g4 r

  \bar "||" \break
  % Var. IV

  g,2
  | g4 fis2 g4(
  | fis e) c'( b
  | c d e2)
  | d4 r g2 ~
  | g4 fis2 g4(
  | fis e) c'( b
  | c d e2)
  | fis,4 r d'( cis)
  | d4( c!8 b) a4( g8 cis)

  % 90
  | d4.( c!8) b( gis a fis)
  | g( a b a g b a g)
  | a4 r d8( c b) b
  | c-. e( fis) g ~ g g,16( a b8 e,)
  | e( fis g fis) e4 d ~
  | d8 g4 e'8 b4-\( \acciaccatura d8 c4-\)
  | b4 r e4. d8 ~
  | d c4 b8 ais( b c! gis)
  | a!( dis, e fis) g g( fis a)
  | g( b e, c') d,( g fis) fis

  % 100
  | << { g8 s4. } \\ { g,8( b d e) } >> f( e f b,)
  | c(\pp d e fis!) g( fis g f)
  | e4 d c8 <c es>(-. <c es>-. <c es>-.)
  | << { es1\fermata } { c1 } { s2-\< s4-\!-\> s4-\! } >>
  | <b d>1\fermata\pp

  \bar "|."
}
