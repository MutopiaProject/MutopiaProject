\version "2.6.3"
violinIISecondMov =  \relative b {
  \key g \major
  \clef violin

  \noTupletBracket
  #(override-auto-beam-setting '(end 1 16 * *)  1 4)
  #(override-auto-beam-setting '(end 1 16 * *)  2 4)
  #(override-auto-beam-setting '(end 1 16 * *)  3 4)

  b4.(\p d8
  | g4 fis a g)
  | c,( b) c'( b
  | fis g) e2(
  | d) b4.( d8
  | g4 fis a g)
  | c,( b) c'( b
  | fis g) e2(
  | d) fis4( g
  | fis) r fis( g

  % 10
  | fis) r b( a
  | g2.) g8( fis)
  | fis2\fermata <g, g'>4.\fz g'8
  | g8.( a16) b4 c4.(\fz b8)
  | fis4( g) fis4.(\p g16 a)
  | g4( e8 a) g4( fis)
  | g2 <g, g'>4.\fz g'8
  | g8.( a16) b4 c4.(\fz b8)
  | fis4( g) fis4.(\p g16 a)
  | g4( e8 a) g4( fis)

  % 20
  | g2

  \bar "||" \break
  % Var. I

  g4.( a8)
  | b4( a c b)
  | a8( fis g4) e'( d
  | c b) << { a( b8 g) } { s8. s16\turn } >>
  | d'2 g,4.( a8)
  | b4( a c b)
  | a8( fis g4) e'( d
  | c b) << { a( b8 g) } { s8. s16\turn } >>
  | d'2 a4( b)
  | a8( fis d4) c'( b)

  % 30
  | a8( fis d4) d'( c
  | b4.) b8 cis4 cis8( d)
  | d2 g4.-\(\fz fis8
  | \appoggiatura fis8 e4 d4-\) e4.-\(\fz d8
  | \appoggiatura d8 c4 b-\) a4.(\p b16 c)
  | d8( e c a) g4-\( \acciaccatura b8 a g-\)
  | g4 r g'4.-\(\fz fis8
  | \appoggiatura fis8 e4 d4-\) e4.-\(\fz d8
  | \appoggiatura d8 c4 b-\) a4.(\p b16 c)
  | d8( e c a) g4-\( \acciaccatura b8 a8. g16-\)

  % 40
  | g4 r

  \bar "||" \break
  % Var. II

  b,4.( c8
  | d4 c) fis( g
  | fis8 a4 g8) g4( fis
  | e d) fis( g
  | fis) r b,4.( c8
  | d4 c) fis( g
  | fis8 a4 g8) g4( fis
  | e d) fis( g
  | fis) r fis( g)
  | fis2 fis4( g)

  % 50
  | fis2 <a, fis'>4( <a d>)
  | <g d'>2 g'4.( b8)
  | \stemUp b4( a) b( a \stemNeutral
  | g fis) g4.( fis8
  | e4 d) c'16( b c b c8 b16 a)
  | g4( e8 c) b4( c)
  | b r b'( a
  | g fis) g4.( fis8
  | e4 d) c'16( b c b c8 b16 a)
  | g4( e8 c) b4( c)

  % 60
  | b r

  \bar "||" \break
  % Var. III

  r2
  | R1
  | fis'8 e'4 d c b8 ~
  | b a4 g g g8
  | fis2 r8 e( b cis)
  | d1 ~
  | d8 c'4 b16( a) gis8( a fis g)
  | e( fis dis e) c cis4 a8
  | d2 fis4( g)
  | fis r a( g

  % 70
  | fis) r d( fis)
  | g2 ~ g8 bes( a g)
  | fis2 e4.( d8)
  | gis( a fis g) r2
  | r r8 e( d fis)
  | r e4( c8 b4 c)
  | b r e4.( d8)
  | gis8( a fis g) r2
  | r r8 e( d fis)
  | r e4( c8 b4 c)

  % 80
  | b r

  \bar "||" \break
  % Var. IV

  b4( cis
  | d2) a'4( g)
  | dis( e) g8.( a16) b4
  | e,8.( fis16 g2) g4
  | fis2 b4( cis
  | d2) a'4( g)
  | dis( e) g8.( a16 b4)
  | e,8.( fis16 g2) g4
  | fis2 fis4( g
  | fis) r e8( fis g) g-.

  % 90
  | fis4 r r8 b4 a8 ~
  | a d,( g fis e g fis e)
  | fis2 g8( a b) d ~
  | d c4 b8 e,( fis g gis)
  | a4( g!2) fis8( g16 a)
  | g4 e8( a) g4( fis)
  | g r b8( c ais b)
  | gis( a! fis g) g4.( f8)
  | e( fis g fis) e4 d ~

  % 100
  | d8 b( c e b4) \acciaccatura d8 c4
  | b4.( c8) d( cis d) d
  | d4(\pp c!2 b8 a)
  | g2( fis8) fis[(-. fis-. fis-.)]
  | << { fis1\fermata } { s2-\< s4-\!-\> s4-\! } >>
  | g1\fermata\pp

  \bar "|."
}
