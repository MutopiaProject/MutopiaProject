\version "2.6.0"
celloThirdMov =  \relative d, {
  \key d \major
  \clef bass

  \repeat volta 2 {
    r4
    | d2(\f fis4)
    | g2.
    | a
    | d4 r r
    | R2.
    | r4 r d,\fz-.
    | e'2.(
    | a,4) r
  }

  \repeat volta 2 {
    r4
    | r dis'-. r

    % 10
    | e-. r cis-.
    | r d!-. fis,-.
    | g2 r4
    | r r ais8( b)
    | fis( g) dis( e fis g)
    | dis( e fis g fis g)
    | a4-. a,-. r
    | d,2( fis4)
    | g2.
    | a

    % 20
    | d4 r r
    | R2.*3
    | r4 r d\f
    | cis8( d) fis,4-. dis'8( e)
    | g,4-. eis'8( fis) a,4-.
    | fis'8( g) b,4-. r
    | r e-. d-.
    | cis2 cis4-.

    % 30
    | d-. r d-.
    | g,-. r a-.
    | d-. d,
  }

  % Trio

  \key d \minor

  \repeat volta 2 {
    d8( e)
    | f!( g a) bes!-. a-. g-.
    | f( e d) e-. f-. g-.
    | a( bes a) bes-. a-. g-.
    | f( e d) bes'-. a-. g-.
    | f( e d) bes'-. a-. g-.
    | f( e d) e-. f-. g-.
    | a( gis a) b-. c-. a-.
    | d( c d) a-. e'-. a,-.
    | f'( e f) a,-. e'-. a,-.
    | d( c d) a-. c-. a-.
    | d( c d) b-. e-. e,-.
    | a4 a'
  }

  \repeat volta 2 {
    r4
    | R2.*7
    | r4 r d,,8( e)
    | f( g a) bes-. a-. g-.
    | f( e d) e-. f-. g-.
    | a( bes a) bes-. a-. g-.
    | f( e d) bes'-. a-. g-.
    | f( e d) bes'-. a-. g-.
    | f( e d) es'-. d-. c-.
    | bes( a g) f'-. e!-. d-.
    | cis( b) a4 r
    | R2.
    | r4 r8 d[-. e-. f-.]
    | g4 r r
    | a r r
    | d, r
  }
}
