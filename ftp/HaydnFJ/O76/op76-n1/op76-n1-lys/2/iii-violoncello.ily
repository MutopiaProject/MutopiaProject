\version "2.18.0"
celloThirdMov =  \relative d, {
  \key d \minor
  \clef bass

  r4
  \repeat volta 2 {
    | r r d8(\f e)
    | f4-. f8( g f e)
    | d4-. d8( e f g)
    | a4-. a-. d-.
    | cis8( e) a,4-. gis-.
    | a2 f8( d)
    | cis4( e) a
    | bes-. bes-. g8( e)
    | cis4-. cis-. r
    | a'-. a-. d,-.
    | e-. e8( f) d4-.
  }

  \repeat volta 2 {
    | r r d8( e)
    | f4-. f-. g-. 
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
    | a-. a-. d,-.
    | e-. e8( f) d4-.
    | R2.
  }

  \alternative {
    {
      | a'4-. e8( f) d4-.
    }

    {
      | a'4-. e8[( f)]
    }
  }

  \bar "||"
  \key d \major

  % Trio

  d4-.
  \repeat volta 2 {
    | R2.
    | r4 r d''-._\markup { \dynamic p \italic { cresc. } }
      ^\markup { \italic { sempre stacc. } }
    | d-. d-. d-.
    | d-. d-. d,-.\f
    | d-. d-. d-.
    | d d d,\ff
    | \repeat unfold 4 { d d d }
    | d d'\p d
    | cis cis cis
    | e e e
  }

  \alternative {
    {
      | a,4 r r
    }

    {
      | a4 r
    }
  }

  \repeat volta 2 {
    a'-.\p
    | a-. a-. a-.
    | a-. a-. a-.
    | \repeat unfold 7 { a a a }
    | a r r
    | r r a,-.
    | a-. a-. r
    | r r d'-.
    | d-. d-. r
    | r r d
    | d d r
    | r r d
    | d d d,\f
    | d d d
    | d d d,\ff
    | \repeat unfold 4 { d d d }
    | d d\p d
    | g g g
    | a a a
    | d, r
  }

}
