\version "2.6.0"
violinIIThirdMov =  \relative e' {
  \key c \major
  \clef violin

  \repeat volta 2 {
    r4
    | R2.
    | e4-.\f e-. r
    | a,-. a-. r
    | g2. ~
    | g4 r r
    | R2.
    | r4 r a'
    | c( b) d-.
    | d,2 e'4-.

    % 10
    | e,2 e'8( c)
    | b2 c8( a)
    | b4-. d,-. d-.
    | d-. d-. d-.
    | d d d
    | fis fis fis
    | g2 g'4-.
    | d-. b-. g-.
    | d2 r4
    | fis2.(

    % 20
    | g4) r
  }

  \repeat volta 2 {
    r4
    | R2.
    | r4 r g
    | as2.
    | g
    | fis
    | g2 d4\p
    | es( d) b!
    | c( b) d
    | es( d) b

    % 30
    | c( b) d
    | cis( d) r
    | R2.*2
    | e!4-.\f e-. r
    | a,-. a-. r
    | g2. ~
    | g4 r e'
    | dis( e g)
    | f2 f4

    % 40
    | e( f a)
    | g2 d'4
    | cis( d f)
    | g( f d)
    | f( e c)
    | d( e d)
    | e( f) a8( f)
    | e2 f8( d)
    | c4-. e,-. e-.
    | e-. e-. e-.

    % 50
    | e e c'
    | b2.
    | c4 r c'-.
    | g-. e-. c-.
    | g2 r4
    | b2.(
    | c4) r
  }

  % Trio

  \repeat volta 2 {
    r4
    | R2.*2
    | gis,2.(\p
    | a4) r r
    | R2.*2
    | a2.(
    | gis4) r
  }

  \repeat volta 2 {
    r4
    | R2.*2
    | g!2( g'8 e)
    | d4 r r
    | R2.*2
    | r4 r a\f
    | dis2.
    | e ~
    | e ~
    | e ~
    | e2\fermata r4
    | e2.\pp
    | R
    | e
    | R
    | cis4( e a)
    | b,( d fis)
    | cis2.(
    | b4) r r
    | e2. ~
    | e ~
    | e ~
    | e
    | a,4( e' a)
    | b,( d fis)
    | cis2( d4)
    | cis4 r r
    | R2.*2
    | gis2.(
    | a4) r r
    | R2.
    | bes2 a4( ~
    | a b! gis)
    | a r
  }
}
