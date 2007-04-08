\version "2.6.0"
violaThirdMov =  \relative fis {
  \key d \major
  \clef alto

  \repeat volta 2 {
    r4
    | fis2(\f d4)
    | d( e fis)
    | g2.
    | g8( fis) fis4-. fis-.
    | g4( fis g)
    | fis r a'\fz
    | b,2.(
    | a4) r
  }

  \repeat volta 2 {
    r4
    | r fis'-. r

    % 10
    | g-. r e-.
    | r fis-. d-.
    | d-. r ais'8( b)
    | fis( g) dis( e) ais( b)
    | fis( g) dis( e fis g)
    | dis( e fis g fis g)
    | a4-. a,-. r
    | fis2( d4)
    | d( e fis)
    | g2.

    % 20
    | g8( fis) fis4-. fis-.
    | g( fis g)
    | fis r fis'-.\p
    | e2( a,4)
    | d4 r r
    | r d-.\f r
    | d-. r c-.
    | r b-. r
    | r g'-. fis-.
    | e2 a4-.

    % 30
    | a-. r a-.
    | g-. r e-.
    | d-. d,-.
  }

  % Trio

  \key d \minor

  \repeat volta 2 {
    r4
    | r r e'(
    | d) r r
    | r r e(
    | d) r e(
    | d) r e(
    | d) r r
    | r a a

    % 40
    | a2. ~
    | a ~
    | a
    | f'2( e8 d)
    | c4 r
  }

  \repeat volta 2 {
    e8( d)
    | cis( bes! a) g-. f-. e-.
    | f( e d) f'-. e-. d-.
    | cis( bes! a) g-. f-. e-.
    | f( e d4) r
    | R2.*4
    | r4 r e'(
    | d) r r
    | r r e(
    | d) r e(
    | d) r e(
    | d) r a'(
    | g) r b(

    % 60
    | a) r8 cis,[-. d-. e]-.
    | f( g f) cis-. d-. e-.
    | f( g f) d-. e-. f-.
    | g4 r r
    | e r r
    | d r
  }
}
