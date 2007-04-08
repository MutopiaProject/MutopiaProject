\version "2.6.0"
violinIIThirdMov =  \relative bes {
  \key bes \major
  \clef violin

  \repeat volta 2 {
    r4
    | r r bes8(\f d)
    | f4-| f-| r
    | r r bes,8( d)
    | f4-| f-| r
    | g'2.(
    | f)
    | <bes, e>4\fz <bes e> <bes e>
    | <a f'> r
  }

  \repeat volta 2 {
    b,8( c)
    | b( c es c) r4
    | r r e8( f)
    | e( f bes f) r4
    | r r f-|
    | es-| g-| es-|
    | d-| f-| bes,-|
    | c-| es a,-|
    | bes-| d-| cis ~
    | cis cis-| cis'-|
    | d-| r r
    | d,-. d-. r

    % 20
    | es-. es-. r
    | f-. f-. g-.
    | g2. ~
    | g
    | f
    | e(
    | es) % The Kalmus score has e, but it is probably wrong
    | R
    | r4 r e8( f)
    | e( f) e( f) bes,( d)

    % 30
    | f4-| f-| r
    | <bes, f'>-| <bes f'>-| <bes f'>-|
    | <bes es>-| <bes es>-| r
    | f'-| a-| c8( a)
    | f'2.
    | g4 g8( es) c( a)
    | bes4 r r
    | r r <bes g'>-|
    | <bes f'>-| <bes f'>-| r
    | r r g8( es)

    % 40
    | d4-| bes'-| r
    | bes\p r r
    | bes r r
    | a r r
    | bes r r
    | R2.
    | g4 r a
    | bes r r
    | as2.(\f
    | g4) r <es a>
  }

  \alternative {
    {
      % 50
      | <d bes'> r s
    }

    {
      | <d bes'> r r
    }
  }

  \bar "||"

  % Trio

  | r4 r f\fz ~
  | f-\> g f
  | e( f) es8( d)
  | c4( es) d8( c)-\!
  | bes2.\fz ~
  | bes2 as'4
  | ges( f es!)
  | f2.-\> ~

  % 60
  | f2-\! f4\fz ~
  | f-\> g! f
  | e( f) es8( d)
  | c4( es) d8( c)-\!
  | bes2.\fz ~
  | bes2 as'4
  | ges( f es!)
  | f2.-\> ~
  | f2-\!

  \repeat volta 2 {
    c4\fz ~
    | c d c

    % 70
    | f2.\fz ~
    | f4 g! f
    | bes2.\fz ~
    | bes4 c bes
    | a( bes) r
    | es( d) r
    | as( g) r
    | f8( g es f) g-. g-.
    | f4 r r
    | bes,2.\fz ~

    % 80
    | bes2 f'4\fz ~
    | f-\> g f
    | e( f) es8( d)
    | c4( es) d8( c)
    | bes2.\fz ~
    | bes2 as'4
    | ges( f es!)
    | f2.-\> ~
    | f2 f4\fz ~
    | f g! f

    % 90
    | e( f) d'\fz ~
    | d es! d
    | \repeat unfold 4 { <es, c'>( <d bes'>) es'8( d) }
    | <es, a>2. ~
    | <es a> ~
    | <es a>2 d4\p ~
    | d es d

    % 100
    | cis( d) r
    | bes'2. ~
    | bes2 r4
    | es,4 r r
    | d r r
    | <c es> r r
    | a( bes)
  }
}
