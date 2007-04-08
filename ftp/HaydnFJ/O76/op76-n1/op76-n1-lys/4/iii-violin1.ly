\version "2.6.0"
violinIThirdMov =  \relative a' {
  \key bes \major
  \clef violin

  \repeat volta 2 {
    a8(\f bes)
    | \stemDown a( bes) a( bes) d( bes) \stemNeutral
    | f'4-| f-| a,8( bes)
    | \stemDown a( bes) a( bes) d( bes) \stemNeutral
    | f'4-| f-| a,8( bes)
    | \stemDown a( bes) a( bes) g'( bes,) \stemNeutral
    | bes'( bes,) bes'( bes,) bes'( bes,)
    | bes'(\fz g) e( c) bes( g)
    | f4 r
  }

  \repeat volta 2 {
    r4
    | r r g'8( fis)

    % 10
    | g( es) c( es) r4
    | r r bes'8( a)
    | bes( f) d( f) as( g)
    | g( es) c( es) g( f)
    | f( d) bes( d) f( es)
    | es( c) a( c) es( d)
    | d( bes) g( bes) g'4-|
    | g-| g-| g-|
    | fis-| r fis,8( g)
    | fis( g) fis( g) bes( g)

    % 20
    | gis( a) gis( a) c( a)
    | c( b) c( b) d( c)
    | es( d) f( es) g( fis)
    | g( f! es d c bes)
    | a f e( f) e( f)
    | r g[( fis g fis g)]
    | r a[( gis a gis a)]
    | r4 r a8( bes)
    | a( bes) a( bes) a( bes)
    | \stemDown a( bes) a( bes) d( bes) \stemNeutral

    % 30
    | f'4-| f-| a,8( bes)
    | \stemDown a( bes) a( bes) d( bes) \stemNeutral
    | g'4-| g-| b,8( c)
    | b( c) b( c) a'( c,)
    | bes'!( bes,) bes'( bes,) bes'( bes,)
    | bes'( g) es( c) a( f)
    | bes4 r r
    | r r <bes g'>-|
    | <bes f'>-| <bes f'>-| r
    | r r <bes g'>-|

    % 40
    | <bes f'>-| <bes f'>-| a'8(\p bes)
    | a( bes) a( bes) f( d)
    | fis( g) fis( g) es( c)
    | b( c) b( c) es( a,)
    | bes!4-. d-. f-.
    | bes-. d-. f-.
    | b,,8( c) b( c) es( a,)
    | bes!4-. d-. f-.
    | bes-. d-. f-.
    | b,,8( c) b( c) es( a,)
  }

  \alternative {
    {
      | bes!4 r s
    }
    {
      % 50
      | bes!4 r r
    }
  }

  \bar "||"

  | r4 r f'\fz ~
  | f-\> g f
  | e( f) es8( d)
  | c4( es) d8( c)-\!
  | bes2.\fz ~
  | bes2 as4
  | ges( f es!)
  | f2.-\> ~
  | f2-\! f'4\fz ~

  % 60
  | f-\> g! f
  | e( f) es8( d)
  | c4( es) d8( c)-\!
  | bes2.\fz ~
  | bes2 as4
  | ges( f es)
  | f2.-\> ~
  | f2-\!

  \repeat volta 2 {
    c'4\fz ~
    | c4 d c
    | f2.\fz ~
    | f4 g! f
    | bes2.\fz ~
    | bes4 c bes
    | a( bes) a8( g)
    | fis4( g) f8( es)
    | d4( es) d8( c)
    | b( c es d c bes)
    | a( g f es d c)
    | bes2.\fz ~
    | bes2 f''4\fz ~
    | f4-\> g f
    | e( f) es8( d)
    | c4( es) d8( c)-\!
    | bes2.\fz ~
    | bes2 as4
    | ges( f es)
    | f2.-\> ~
    | f2-\! f'4\fz ~
    | f g! f
    | e( f) bes\fz ~
    | bes c bes
    | a( bes) c8( bes)
    | a4( bes) c8( bes)
    | a4( bes) c8( bes)
    | a4( bes) c8( d)
    | es4( c a)
    | f4( es) \times 2/3 { c8( a f) }
    | <c es>2\f\fermata r4
    | R2.
    | r4 r f'\p ~
    | f g f
    | e( f) r
    | bes( a) r
    | c( bes) r
    | g,( f) r
    | es( d)
  }
}
