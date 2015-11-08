\version "2.18.0"
violinIThirdMov =  \relative d'' {
  \key d \minor
  \clef violin

  d8(\f e)
  \repeat volta 2 {
    f4-. f8( g f e)
    | d4-. d8( e f g)
    | a4-. a-. d-.
    | cis8( e) a,4-. gis-.
    | a2 f8( d)
    | cis4( e) a
    | bes-. bes-. g8( e)
    | cis4-. cis-. r
    | a-. a-. d-.
    | e-. e8( f) d4-.
    | r r d8( e)
  }

  \repeat volta 2 {
    f4-. f-. g-. 
    | a-. a8( bes) g4-.
    | f-. c'8( d) bes( c)
    | a4-. r c-.
    | f-. f,-. g\turn
    | a-. r bes-.
    | cis,-. cis-. d-.
    | e-. e(\turn f)
    | cis-. cis-. d-.
    | e-. e(\turn f)	
    | r r d8( e)
    | f4-. f8( g f e)
    | d4-. d8( e f g)
    | a4-. a-. d-.
    | cis8( e) a,4-. gis-.
    | a2 d4-.
    | cis8( e) a,4-. bes!-.
    | a-. f-. g-.
    | g8( f) e( d) cis4
    | d4-. d-. e\turn 
    | f-. f-. r
    | a,-. a-. d-.
    | e-. e8( f) d4-.
    | R2.
    | a'4-. e8( f) d4-.
  }

  \alternative {
    {
      | r4 r d8( e)
    }

    {
      | r4 r
    }
  }

  \bar "||"
  \key d \major

  % Trio

  d4-.\p^\markup { \italic { sempre stacc. } }

  \repeat volta 2 {
    | d-. d-. d-.
    | d-. d-. d-.
    | d-.-\markup { \italic cresc. } d-. d-.
    | d-. d-. <d, d'>-.\f
    | <d d'>-. <d d'>-. <d d'>-.
    | <d d'> <d d'> <d d'>\ff
    | cis'8( d) e( d) e( d)
    | cis( d) e( fis g a)
    | b( a) d( cis b a)
    | g( a) b-. cis-. d-. e-.
    | fis( g) a-.\p a-. a-. a-.
    | a-. a-. a-. a-. a-. a-.
    | gis-. a-. b-. a-. b-. gis-.
  }

  \alternative {
    {
      | a4 r d,,4-.\p
    }

    {
      | a''4 r
    }
  }

  \bar "||"

  \repeat volta 2 {
    r4
    | R2.
    | r4 r a,-.\p
    | a-. a-. a-.
    | a-. a-. a8( g)
    | f( e) d( cis d f)
    | e( cis a) bes' a g
    | f( e) d( cis d f)
    | e( cis a) bes' a g
    | f( e) d( cis d f)
    | a4-. a-. a-.
    | a-. a-. r
    | r r d,-.
    | d-. d-. d-.
    | d d d
    | d d d
    | d d d
    | d d d
    | d d <d, d'>\f
    | <d d'> <d d'> <d d'>
    | <d d'> <d d'> <d d'>\ff
    | cis'8( d) e( d) e( d)
    | cis( d) e( fis g a)
    | b( a) d( cis b a)
    | g( a) b-. cis-. d-. e-.
      \ottava #1
    | fis( g) a-.\p a-. a-. a-.
    | g( a) b-. b-. b-. b-.
    | a( b) cis-. cis-. cis-. cis-.
    | d4-. \ottava #0 r
  }
}
