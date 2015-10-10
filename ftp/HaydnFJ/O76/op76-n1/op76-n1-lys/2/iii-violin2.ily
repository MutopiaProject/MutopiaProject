\version "2.18.0"
violinIIThirdMov =  \relative d' {
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

  \repeat volta 2 {
    d4-.\p^\markup { \italic { sempre stacc. } }
    | d-. d-. d-.
    | d-. d-. a'-.
    | a-.-\markup { \italic { cresc. } } a-. a-.
    | a-. a-. <fis! a>-.\f
    | <fis a>-. <fis a>-. <fis a>-.
    | <fis a> <fis a> <fis a>\ff
    | <fis a> <fis a> <fis a>
    | <a, g'> <a g'> <a g'>
    | <a fis'> <a fis'> <fis' d'>
    | <e cis'> <e cis'> <e cis'>
    | <fis d'> fis'\p fis
    | e e e
    | d d d
  }

  \alternative {
    {
      cis4 r d,\p
    }

    {
      cis' r
    }
  }

  \repeat volta 2 {
    e,4-.\p
    | \repeat unfold 12 { e-. }
    | f-. f-. f8( d)
    | e4-. e-. e-.
    | f-. f-. f8( d)
    | e4-. e-. e-.
    | f-. f-. f8( d)
    | e4-. a-. a-.
    | a-. a-. r
    | r r d,-.
    | d-. d-. a'-. 
    | a-. a-. d,-.
    | d-. d-. bes'-. 
    | bes-. bes-. d,-. 
    | d-. d-. a'-. 
    | a-. a-. <fis! a>\f
    | <fis a> <fis a> <fis a>
    | <fis a> <fis a> <fis a>\ff
    | <fis a> <fis a> <fis a>
    | <a, g'> <a g'> <a g'>
    | <a fis'> <a fis'> <fis' d'>
    | <e cis'> <e cis'> <e cis'>
    | <d d'> fis'-.\p a-.
    | d,-. g-. b-.
    | cis,-. e-. g-.
    | fis-. r
  }
}
