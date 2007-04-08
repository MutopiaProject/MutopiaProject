\version "2.6.3"
violinISecondMov =  \relative g' {
  \key g \major
  \clef violin

  \noTupletBracket

  #(override-auto-beam-setting '(end 1 16 * *) 1 4)
  #(override-auto-beam-setting '(end 1 16 * *) 2 4)
  #(override-auto-beam-setting '(end 1 16 * *) 3 4)

  g4.(\p a8
  | b4 a c b)
  | a8( fis g4) e'( d
  | c b) << { a4( b8 g) } { s8. s16\turn } >>
  | d'2 g,4.( a8
  | b4 a c b)
  | a8( fis g4) e'( d
  | c b) a( b8 g)
  | d'2 a4( b
  | a8 fis d4) c'( b

  % 10
  | a8 fis d4) d'( c
  | b4.) b8 cis4 cis8( d)
  | d2\fermata g4.\(\fz fis8
  | \appoggiatura fis8 e4 d\) e4.-\(\fz d8
  | \appoggiatura d8 c4 b-\) a4.(\p b16 c)
  | d8( e c a) g4-\( \acciaccatura b16 a8 g-\)
  | g2 g'4.\(\fz fis8
  | \appoggiatura fis8 e4 d\) e4.-\(\fz d8
  | \appoggiatura d8 c4 b-\) a4.(\p b16 c)
  | d8( e c a) g4-\( \acciaccatura b16 a8 g-\)

  % 20
  | g2 

  \bar "||" \break
  % Var. I

  b,16-.-\markup { \italic { sempre piano } } d-. g-. b-. d-. g-. fis-. e-.
  | d-. g-. b-. g-. fis-. d,-. fis'-. g-. gis( a c fis,) a( g b d,)
  | d( c e c) ais( b) fis( g) r g'( d' c) fis,-. c'( ais b)
  | r e,( b' a) d,-. a'( fis g) r c,( g' fis a g b g)
  | fis a cis d d,, e c! d b-. d-. g-. b-. d-. g-. fis-. e-.
  | d-. g-. b-. g-. fis-. d,-. fis'-. g-. gis( a c fis,) a( g! b d,)
  | d( c e c) ais( b) fis( g) r g'( d' c) fis,-. c'( ais b)
  | r e,( b' a) d,-. a'( fis g) r c,( g' fis a g b g)
  | fis a cis d d,4 d,16( fis d' fis,) d( g d' g,)
  | d-. fis-. a-. cis-. d-. fis-. a-. d-. a fis d fis g d b g

  % 30
  | d fis a cis d fis a d b, d g b d,, a'' fis d,
  | e g b e g b g e a,, cis e g cis e g g,
  | fis d' a fis d e c! d b d g b d g b,, g'
  | c, g' e' g, b, g' d' g, c, e g c e g b,, g'
  | a, c d fis g b d g c,,\p d fis a c fis g a
  | b, g' c, g' e, g' cis,, e' d, g b d d, c'! fis c
  | b g' d b g d b d \times 4/6 { g, b d g b d } g b, b, g'
  | c, g' e' g, b, g' d' g, c, e g c e g b,, g'
  | a, c d fis g b d g c,,\p d fis a c fis g a
  | b, g' c, g' e, g' cis,, e' d, g b d d, c'! fis c

  % 40
  | b g' d b g8 r 

  \bar "||" \break
  % Var. II

  r8 d'( b fis)
  | g g'4( fis8) r e4 d8 ~
  | d c4( b8) r cis4( d8)
  | e fis4( g8) d' c4 b8 ~
  | b a g16( fis e d) r8 d( b fis)
  | g g'4( fis8) r e4 d8 ~
  | d c4( b8) r cis4( d8)
  | e fis4( g8) d' c4 b8 ~
  | b a g16( fis e d) r8 d4( cis8)
  | d( fis a fis) d e4 d8 ~

  % 50
  | d c!( b a) gis16( a b a) c( b e d)
  | cis( d e d) g( fis a g) b4 a16( g fis g)
  | g4( fis) \acciaccatura fis8 e16( dis e g) cis,8 d ~
  | d c!4( b8) \acciaccatura d8 c16( b c e) ais,8 b ~
  | b a!4( g8) e'16( dis e dis e8 d16 c)
  | b8( a c e) g,4( fis)
  | g r \acciaccatura fis'8 e16( dis e g) cis,8 d ~
  | d c!4( b8) \acciaccatura d8 c16( b c e) ais,8 b ~
  | b a!4( g8) e'16( dis e dis e8 d16 c)
  | b8( a c e) g,4( fis)
  % 60
  | g4 r

  \bar "||" \break
  % Var. III

  r8 e( b cis)
  | d8 g4 fis8 e a4 g8
  | c,4( b) gis'8( a fis g)
  | e( fis dis e) c cis4 a8
  | d2 r
  | r8 g'4 fis8 r a4 g8
  | fis e'4 d c b8 ~
  | b a4 g8 ~ g16( fis g fis)
  << { s8 cis d2 } \\ { g8 g, fis2 } >> r2
  | R1*3
  | r2 b8( c cis d) ~
  | d c!4 b8 c( b bes a)
  | g-. g( fis f) e( g fis a)
  | g( b c e) g,4( fis)
  | g r b8( c cis d) ~
  | d c!4 b8 c( b bes a)
  | g g( fis f) e( g fis a)
  | g( b c e) g,4( fis)

  | g r

  \bar "||" \break
  % Var. IV

  g4.( a8
  | b4 a c b)
  | a8( fis g4) e'( d
  | c b) << { a4( b8 g) } { s8. s16-\turn } >>
  | d'2 g4.( a8
  | b4 a c b)
  | a8( fis g4) e'( d
  | c b) << { a4( b8 g) } { s8. s16-\turn } >>
  | d'2 a4( b
  | a8 fis d4) c'( b
  | a8 fis d4) d'( c
  | b4.) b8 cis4 cis8( d)
  | d2 g4.\( fis8
  | \appoggiatura fis8 e4 d\) e4.-\( d8
  | \appoggiatura d8 c4 b-\) a4.( b16 c)
  | d8( e c a) g4-\( \acciaccatura b16 a8 g-\)
  | g8( a16 b c d e fis) g4.\( fis8
  | \appoggiatura fis8 e4 d\) e4.-\( d8
  | \appoggiatura d8 c4 b-\) a4.( b16 c)
  | d8( e c a) g4-\( \acciaccatura b16 a8. g16-\)
  | g2 ~ g4. f8(\pp
  | e2) d ~
  | d8 c4 b a8(-. a-. a)-.
  | << { a1\fermata } { s2\< s4\!\> s4\! } >>
  | b1\fermata\pp    

  \bar "|."
}
