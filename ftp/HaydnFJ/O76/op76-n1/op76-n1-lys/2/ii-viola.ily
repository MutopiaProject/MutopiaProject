\version "2.18.0"
violaSecondMov =  \relative d' {
  \key d \major
  \clef alto

  \repeat volta 2 {
    r8
    | d^\markup { pizz. }\p r d[ d] r d
    | a r d[ cis] r r
    | d r d[ d] r e,
    | fis g\fz r fis r
  }

  \repeat volta 2 {
    r8
    | d'(^\markup { arco } fis) fis fis4 r8
    | d4( b16 e) e4 r8
    | cis-. cis-. r fis-. fis-. r
    | d-. d-. r fis4 fis,8\fz ~
    | fis cis' b a4 r8

    % 10
    | a^\markup { pizz. } a r a a r
    | R2.
    | a4(^\markup { arco } b8 a4) e8\fz ~
    | e( cis' d) cis r r
    | d( a b) a( fis' e)
    | a e8.([\trill\fz d32 e]) fis4
  }

  \key c \major

  r8
  | R2.
  | f8(-.\p f-. f-.) c4\fz r8
  | c-.( c-. c-.) c(\fz d) r
  | f,-. f'-. a-. g-.\ff e-. c-.

  % 20
  | <a f'>4 r8 r4 r8
  | f'8(-.\p f-. f-.) c4\fz r8
  | c-.( c-. c-.) c(\fz d) r
  | f,-. f'-. a-. fis,-.\ff c'-. c-.
  | d4 r8 r4 r8
  | <b! d>4\p r8 b4(\fz d8)
  | g4( b,8) c r r
  | R2.
  | es8\p r r es, r r
  | es r r c' r r

  % 30
  | fis,4.\pp ~ fis8 r r
  | r4 r8 a r r

  \bar "||"
  \key d \major

  | a4(\p b8 a4) e8\fz ~
  | e( cis' d) cis r r
  | d( a b) a( fis' e)
  | a e8.([\trill\fz d32 e)] fis8 r r
  | d^\markup { pizz. } r d[ d] r d
  | a r d[ cis] r r
  | d r d[ d] r e,
  | fis r a[ a] r r

  % 40
  | d(^\markup { arco } fis g) fis r r
  | e4( b16 e) e4 r8
  | cis-. cis-. r fis-. fis-. r
  | d-. d-. r fis,4. ~
  | fis8 cis' b a r r
  | a-. a-. r a-. a-. r
  | R2.
  | d8^\markup { pizz. } r d[ d] r d
  | a r d[ cis] r r
  | fis,(^\markup { arco } a b) a( fis' g)

  % 50
  | d4( a'16 g) fis4\fermata r8
  | b-. b-. r a-. a-. r
  | g-. g( a) b4 r8
  | a-. a-. r g-. g( gis)
  | a2.\f-\> ~
  | a4-\! g!4.\p f8 ~
  | f4 e g8 g,

  \cadenzaOn c4.*4\fz\fermata-\> ~ c4\p-\!\fermata r8 \cadenzaOff

  \set Score.currentBarNumber = #58
  \bar "|"

  r4 r8 r4 fis32( g fis g) 
  | b8-. b-. r r4 r8
  | d,-. r r d-.\pp r r
  | d-. r r g,4.\f
  | fis32( a d a) fis( a fis a) fis( a fis a) 
    g( a cis a) g-. a-. g-. a-. g-. a-. g-. a-.
  | fis( a d a) fis( a fis a) fis( a fis a) 
    g( a cis a) g-. a-. g-. a-. g-. a-. g-. a-.
  | fis(\p a d a) fis( a fis a) fis( a fis a) 
    g( a cis a) g-. a-. g-. a-. g-. a-. g-. a-.
  | fis( a d a) fis( a fis a) fis( a fis a) 
    g( a cis a) g-. a-. g-. a-. g-. a-. g-. a-.
  | fis( a d a) fis( a fis a) g( a g a) 
    fis( a d a) fis( a fis a) g( a g a)
  | fis8 d'-.([ d-.] d-.) r

  \bar "|."
}
