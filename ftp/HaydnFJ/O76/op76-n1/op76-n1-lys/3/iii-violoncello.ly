\version "2.6.0"
celloThirdMov =  \relative c' {
  \key c \major
  \clef bass

  \repeat volta 2 {
    r4
    | R2.
    | c4-.\f c-. r
    | f,-. f-. r
    | b, b b
    | c2 r4
    | r r a'
    | gis( a c)
    | fis,( g!) b-.
    | c( b c)

    % 10
    | d( c a)
    | d2 d,4
    | g-. g-. g-.
    | g-. g-. g-.
    | g g g
    | g g g
    | g2 fis,16( g8.)
    | ais16( b8.) cis16( d8.) fis16( g8.)
    | b2 r4
    | d,2.(

    % 20
    | g4) r
  }

  \repeat volta 2 {
    r4
    | r r g
    | as( g) es
    | c'2 d,4
    | b'!2 c,4
    | as'2.
    | g2 r4
    | r r g,\p
    | fis( g) r
    | r r g

    % 30
    | fis( g) r
    | r r g
    | as( g) r
    | R2.
    | c'4-.\f c-. r
    | f,-. f-. r
    | b, b b
    | c2 c'4
    | b( c e)
    | g,2 d'4

    % 40
    | cis( d f)
    | a,2 r4
    | r r d
    | cis( d f)
    | b,( c!) e,
    | f( e f)
    | g( f d)
    | g2.
    | c,4-. c-. c-.
    | c-. c-. c-.

    % 50
    | c c c
    | c c c
    | c2 b16( c8.)
    | dis16( e8.) fis16( g8.) b16( c8.)
    | e2 r4 g,,2.(
    | c4) r
  }

  % Trio

  \repeat volta 2 {
    r4
    | R2.*2
    | e2.(\p

    % 60
    | a,4) r r
    | R2.*2
    | b2.(
    | e,4) r
  }

  \repeat volta 2 {
    r
    | R2.*2
    | cis'2.(
    | d2) r4
    | r r d,\f

    % 70
    | d'2.
    | c
    | f,
    | e ~
    | e ~
    | e ~
    | e2\fermata r4
    | a'2.\pp
    | R
    | gis

    % 80
    | R
    | a
    | d,
    | e ~
    | e4( d b)
    | a r r
    | R2.
    | gis4 r r
    | R2.
    | cis,2.(

    % 90
    | d
    | e)
    | a4 r r
    | R2.*2
    | e'2.(
    | a,4) r r
    | R2.
    | d2( dis4)
    | e2.(

    % 100
    | a,4) r
  }
}
