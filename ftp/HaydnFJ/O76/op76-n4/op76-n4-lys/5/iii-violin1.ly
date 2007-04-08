\version "2.6.0"
violinIThirdMov =  \relative a {
  \key d \major
  \clef violin

  \repeat volta 2 {
    a4\f
    | d( fis a)
    | a( g fis)
    | \acciaccatura fis8 e4( d e)
    | e8( fis) d4-. d'-.
    | \acciaccatura cis8 b4( ais b)
    | gis8( a!) d,4 fis'\fz
    | \acciaccatura a,8 gis4( fis gis)
    | gis8( a) a,4
  }

  \repeat volta 2 {
    a''4
    | gis8( a) b,4-. ais'8( b)

    % 10
    | b,4-. fis'8( g!) a,!4-.
    | gis'8( a) a,4-. cis'8( d)
    | ais( b) fis( g!) ais( b)
    | fis( g) dis( e) ais,( b)
    | fis( g) dis( e fis g)
    | dis( e fis g a b)
    | d,!4( cis) a
    | d( fis a)
    | a( g fis)
    | \acciaccatura fis8 e4( d e)

    % 20
    | e8( fis) d4-. d'-.
    | \acciaccatura cis8 b4( ais b)
    | gis8( a!) d,4-. a''-.\p
    | \acciaccatura a8 g4( fis g)
    | eis8( fis) fis4-. r
    | r d'-.\f r
    | d-. r d-.
    | r d-. b-.
    | ais8( b) g,4-. b'-.
    | b8( a!) e'4-. g,-.

    % 30
    | g8( fis) a4-. fis-.
    | fis8( e) g4-. cis,-.
    | cis8( d) d,4-.
  }

  % Trio

  \key d \minor

  \repeat volta 2 {
    r4
    | r r cis'(
    | d) r r
    | r r cis(
    | d) r cis(
    | d) r cis(
    | d) f f
    | e2 a4

    % 40
    | \repeat unfold 3 { \grace { b32[( a gis] } a4) r a }
    | \grace { b32[( a gis] } a4) r gis
    | \grace { b32[( a gis] } a4) r
  }

  \repeat volta 2 {
    cis,8( d)
    | e( f g) a-. bes-. cis,-.
    | d( e f) d-. cis-. d-.
    | e( f g) a-. bes-. cis,-.
    | d( e f) fis-. g-. a-.
    | bes( c d) e,-. f!-. g-.
    | a( bes c) d,-. e-. f-.
    | g( a bes) g-. e-. d-.

    % 50
    | cis( e) gis( a) r4
    | r r cis(
    | d) r r
    | r r cis,(
    | d) r cis(
    | d) r cis(
    | d) r fis(
    | g) r gis(
    | a) r8 bes[-. a-. g!]-.
    | f!( e d) bes'-. a-. g-.

    % 60
    | f( e d) d'-. c-. bes-.
    | a-. g-. f-. e-. d-. c-.
    | bes-. a-. g-. f-. e-. a-.
    | d,4 r
  }
}
