\version "2.6.0"
violinIIThirdMov =  \relative d' {
  \key d \major
  \clef violin

  \repeat volta 2 {
    r4
    | d2(\f a4)
    | b2.(
    | cis)
    | cis8( d) d4-. d-.
    | d2. ~
    | d4 r d'\fz
    | d,2.(
    | cis4) r
  }

  \repeat volta 2 {
    r4
    | r a'-. r

    % 10
    | g-. r g-.
    | r fis-. a-.
    | b-. r ais'8( b)
    | fis( g) dis( e) ais,( b)
    | fis( g) dis( e fis g)
    | dis( e fis g a b)
    | d,!4( cis) r
    | d2( a4)
    | b2.(
    | cis)

    % 20
    | cis8( d) d4-. d-.
    | d2. ~
    | d4 r a'-.\p
    | b2( cis4)
    | cis8( d) d4-. r
    | r d-.\f r
    | e-. r fis-.
    | r g-. g-.
    | fis8( g) g,4-. g'-.
    | g2 e4-.

    % 30
    | e8( d) fis4-. a,-.
    | b-. r g-.
    | fis-. d-.
  }

  % Trio

  \key d \minor

  \repeat volta 2 {
    r4
    | r r cis(
    | d) r r
    | r r cis(
    | d) r cis(
    | d) r cis(
    | d) d' d
    | d( c!) a
    | b2( c4)
    | d2( c4)
    | b2( a4)
    | b2.\trill
    | a4 r
  }

  \repeat volta 2 {
    r4
    | R2.*3
    | r4 r8 es'8[-. d-. c]-.
    | bes( a g) d'-. c-. bes-.
    | a( g f) c'-. bes-. a-.
    | g( f e) f-. g-. gis-.
    | a4 r r
    | r r cis,(
    | d) r r
    | r r cis(
    | d) r cis(
    | d) r cis(
    | d) r fis(
    | g) r gis(
    | a) r8 e[-. f!-. g!]-.
    | a( bes a) e-. f-. g-.
    | a( bes a) f-. g-. a-.
    | bes4 r r
    | cis r r
    | d r
  }
}
