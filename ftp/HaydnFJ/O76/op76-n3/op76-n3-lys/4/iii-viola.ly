\version "2.6.0"
violaThirdMov =  \relative d' {
  \key bes \major
  \clef alto

  \repeat volta 2 {
    r4
    | d-|\f f-| r
    | c-| es-| r
    | bes-| d-| r
    | a-| c-| r
    | bes bes bes
    | bes2.
    | g'4\fz g, c
    | f, r
  }

  \repeat volta 2 {
    gis8( a)
    | gis( a c a) r4

    % 10
    | r r cis8( d)
    | cis( d bes d) r4
    | r r b-|
    | c-| es-| a,-|
    | bes-| d-| g,-|
    | a-| c-| fis,-|
    | g-| bes-| g-|
    | bes'-| bes-| g,-|
    | a-| r r
    | bes-. bes-. r

    % 20
    | c-. c-. r
    | d-. d-. es-.
    | b( c d)
    | es2 e4
    | f a, a
    | bes2.(
    | c)
    | R
    | r4 r cis8( d)
    | cis( d) cis( d) f( d)

    % 30
    | c!4-| c-| r
    | d-| d-| d-|
    | es-| es-| r
    | <a, f'>-| <a f'>-| <a f'>-|
    | <bes f'>2.
    | es4 g f8( es)
    | d4 r r
    | r r <bes es>-|
    | <bes d>-| <bes d>-| cis,8( d)
    | cis( d) cis( d) es( g)

    % 40
    | bes4-| bes-| r
    | f'\p r r
    | g r r
    | es r r
    | d r r
    | R2.
    | es4 r c
    | d r r
    | f2.(\f
    | es4) r c
  }

  \alternative {
    {
      % 50
      | d r s
    }
    {
      | bes2.\fz ~
    }
  }

  \bar "||"

  % Trio

  | bes-\> ~
  | bes ~
  | bes ~
  | bes ~
  | bes-\!\fz ~
  | bes2 as4
  | ges( f es!)
  | f2.-\> ~

  % 60
  | f-\!
  | bes\fz-\> ~
  | bes ~
  | bes ~
  | bes-\!\fz ~
  | bes2 as4
  | ges( f es!)
  | f2.-\> ~
  | f2-\!

  \repeat volta 2 {
    r4

    % 70
    | a!2.\fz ~
    | a4 bes a
    | d2.\fz ~
    | d4 es d
    | g2.\fz
    | ges4( f) r
    | c'4( bes) r
    | f( es) r
    | d8( es c d es e)
    | f4 r r

    % 80
    | bes,2.\fz ~
    | bes2 d,4\fz ~
    | d-\> es d
    | cis( d) c8( d)
    | es( d es f g a)-\!
    | bes2.\fz ~
    | bes2 as4
    | ges( f es)
    | f2.-\> ~
    | f2-\! d'4\fz ~

    % 90
    | d es d
    | cis( d) f\fz ~
    | f ges f
    | \repeat unfold 3 { ges( f) r }
    | ges( f) es8( d)
    | c4( a f)
    | <f a>2. ~
    | <f a>2\fermata\fz f4\p ~

    % 100
    | f g f
    | e( f) d' ~
    | d es! d
    | cis d r
    | c! r r
    | bes r r
    | a r r
    | f r
  }
}
