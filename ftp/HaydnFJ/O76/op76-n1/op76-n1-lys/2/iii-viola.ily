\version "2.18.0"
violaThirdMov =  \relative d {
  \key d \minor
  \clef alto

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
    | r4 r f'-.^\markup { \italic { sempre stacc. } }
      _\markup { \dynamic p \italic cresc. }
    | f-. f-. f-.
    | f-. f-. <a, fis'!>-.\f
    | <a fis'>-. <a fis'>-. <a fis'>-.
    | <a fis'> <a fis'> <a fis'>\ff
    | <a fis'> <a fis'> <a fis'>
    | <cis e> <cis e> <cis e>
    | <a fis'> <a fis'> <a fis'>
    | <a g'> <a g'> <a g'>
    | <a fis'> d\p d
    | a' a a
    | b gis gis8 b
  }

  \alternative {
    {
      | a4 r r
    }

    {
      | a4 r
    }
  }

  \repeat volta 2 {
    cis,4-.\p
    | cis-. cis-. cis-.
    | cis-. cis-. cis-.
    | cis cis cis
    | \repeat unfold 3 { cis cis cis d d d }
    | cis r r
    | r r a-.
    | a-. a-. r
    | r r f'-.
    | f-. f-. r
    | r r g
    | g g r
    | r r f
    | f f <a, fis'>
    | <a fis'> <a fis'> <a fis'>
    | <a fis'> <a fis'> <a fis'>\ff
    | <a fis'> <a fis'> <a fis'>
    | <cis e> <cis e> <cis e>
    | <a fis'> <a fis'> <a fis'>
    | <a g'> <a g'> <a g'>
    | <a fis'> <a fis'>\p <a fis'>
    | g' d d
    | g g e
    | fis r
  }

}
