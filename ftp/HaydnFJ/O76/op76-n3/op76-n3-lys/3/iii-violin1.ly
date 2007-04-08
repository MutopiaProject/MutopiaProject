\version "2.6.0"
violinIThirdMov =  \relative c'' {
  \key c \major
  \clef violin

  \repeat volta 2 {
    c4\f
    | b( c) e
    | g,2( c4)
    | d,2( a'4)
    | g,4. a'8[( g f)]
    | f4( e) c'
    | b( c) e
    | f,( e) a8( c)
    | e4( d) g-.
    | fis( g a)

    % 10
    | gis( a) c8( a)
    | g!2 a8( fis)
    | g4 r fis16( g8.)
    | cis,16( d8.) ais16( b8.) fis16( g8.)
    | d2 g4
    | a a8( b c d)
    | c4( b) b'-.
    | g-. d-. b-.
    | g2 d'8( b)
    | \acciaccatura b8 a4 a8( g a b)

    % 20
    | g4 r
  }

  \repeat volta 2 {
    d'4
    | cis( d) f!
    | c!( b) g' ~
    | g es f ~
    | f d es ~
    | es d c ~
    | c b g\p
    | fis( g) d
    | es( d) g
    | fis( g) d

    % 30
    | es( d) f!
    | e!( f) r
    | r r c'\f
    | b( c) e
    | g,2( c4)
    | d,2( a'4)
    | g,4. a'8[( g f)]
    | f4( e) r
    | r r c' ~
    | c b r

    % 40
    | r r d ~
    | d cis f
    | e( f a)
    | bes( a f)
    | a( g) c
    | b!( c d)
    | cis( d) f8( d)
    | c!2 d8( b)
    | c4 r b16( c8.)
    | fis,16( g8.) dis16( e8.) b16( c8.)

    % 50
    | g2 c4
    | d d8( e f g)
    | f4( e) e'-.
    | c-. g-. e-.
    | c2 g'8( e)
    | \acciaccatura e8 d4 d8( c d e)
    | c4 r
  }

  \repeat volta 2 {
    e,4\p
    | c'2( a4)
    | f2( d4)
    | b b8( c d e)

    % 60
    | c4( a) e'
    | c'2( a4)
    | f2( e4)
    | dis dis8( e fis dis)
    | e4 r
  }

  \repeat volta 2 {
    e4
    | c'2( a4)
    | f2( d4)
    | bes a8( cis e g)
    | f4( d) d\f
    | d'2( b!4)

    % 70
    | gis2( e4)
    | a2( e4)
    | c( b a)
    | gis( b dis)
    | e( gis b)
    | e2. ~
    | e2\fermata e,4-.\pp
    | cis'2( a4)
    | e-. r e-.
    | d'2( b4)

    % 80
    | e,4-. r e-.
    | e'( cis a)
    | fis'( d b)
    | a2.(
    | gis4) r e-.
    | cis'2( a4)
    | e-. r e-.
    | d'2( b4)
    | e,-. r e-.
    | e'( cis a)

    % 90
    | fis'( d b)
    | a2( \grace { \graceStroke cis8 } b4)
    | a4 r e
    | c'!2( a4)
    | f!2( d4)
    | b b8( c d e)
    | c4( a) e'
    | c'2( a4)
    | f2 a,4(
    | c d b)

    % 100
    | a r
  }
}
