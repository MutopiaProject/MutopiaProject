\version "2.18.0"
celloFirstMov =  \relative g {
  \key g \major
  \clef bass

  \noTupletBracket
  \tupletSpan 4

  g4-.\f r d-. r
  | g,-. r r

  \repeat volta 2 {
    d''4-.\p
    | b( g) c( a)
    | fis( a8) fis-. d4 e8-. fis-.
    | g4-. e-. b-. cis-.
    | d2( d'4) r
    | R1*3

    % 10
    | r2 r4 fis,-.
    | g( b) a( c)
    | d2.( c4)
    | b4 g2 a8-. g-.
    | fis( g fis) e-. d4 r
    | R1*3
    | r2 r4 g,4-.
    | g'1 ~

    % 20
    | g2. g,4-.
    | g'1 ~
    | g
    | <g, g'>1 ~
    | <g g'> ~
    | <g g'>
    | c'4-. c-. c-. r
    | d,-. d-. d-. r
    | g,-. g-. g-. r
    | b-. b-. b-. r

    % 30
    | c-. c-. c-. r
    | d-. d-. d-. d-.
    | g,2( g'4)-. b-.\f
    | g( e) a( fis)
    | dis( fis8) dis-. b4-. r
    | R1
    | r2 r4 fis'-.
    | a( g) b( a)
    | c!2\fz c4-. c-.
    | b2\fz b4-. b-.

    % 40
    | bes2\fz bes4-. bes-.
    | bes,1\ff
    | << { a ~ } { s2. s4_\markup { \italic poco \dynamic f } } >>
    | a1 ~
    | a ~
    | a ~ 
    | a ~
    | a 
    | d2 r
    | a1

    % 50
    | d4 r fis r
    | g r a r
    | g r a r
    | g r r2
    | g4 r f r
    | g r f r
    | d8(\f d') a-. f-. d( d') a-. f-.
    | d( d') bes-. g-. d( d') bes-. g-.
    | d( d') a-. f-. d( d') a-. f-.
    | d-. bes'-. d-. bes-. f-. d-. bes-. d-.

    % 60
    | f bes d bes f d bes d
    | bes d f d bes f bes f
    | bes d f d bes f bes f
    | bes f bes f bes f bes c
    | d1\fz ~
    | d4 d-. d-. d-.
    | d1\fz ~
    | d4 d-. d-. d-.
    | cis1\p ~
    |cis4 cis(-. cis-. cis-.)

    % 70
    | d2( g,)
    | a1
    | d4 r r2
    | d4\p r r2
    | d4 r r2
    | d4 r r2
    | d4 r r2
    | d,4 r r2
    | d4 r r2
    | d4 r r2

    % 80
    | d4 r r a''-.
    | fis( g) e( fis)
    | g2( a)
    | d,4-. r r \clef violin a''-.
    | fis( g) e( fis)
    | g2( a) \clef bass
    | d,,4-.\f r r2
    | r a'8( e) cis-. a-.
    | d,4-. r r
  }

  \repeat volta 2 {
    r4
    | d''\f r g, r

    % 90
    | a2 r
    | R1*5
    | e2-. r
    | e-. r
    | b-. r
    | b-. r

    % 100
    | e-. r
    | e-. r
    | a,4-. a'-. a-. a-.
    | d,-. d'-. d-. d-.
    | g,, g' g g
    | c, c' c c
    | fis,, fis' fis fis
    | b, b' b b
    | e,, e' e e
    | e, e' e e

    % 110
    | e, e' e e
    | e, e' e e
    | d, d' d d
    | c, c' c c
    | gis gis' gis gis
    | a r g!-.\ff r
    | f-. r cis-. r
    | d-. r f-. r
    | e-. r b-. r
    | c2\f f,

    % 120
    | g2 g'4 f
    | e( d c) bes\fz
    | a2 a'4 g
    | f( e d) c\fz
    | b1
    | e2 r
    | r r4 b'-.
    | g( e) a( fis)
    | dis( fis8) dis-. b4 cis8-. dis-.
    | e2.( d!4)

    % 130
    | cis1
    | d2. d4-.\p
    | d'1 ~
    | d2. d,4-.
    | d'1 ~
    | d2.-\markup { \italic cresc. } d,,4-.
    | d'1 ~
    | d\f ~
    | d-\> ~
    | d2-\! r4 d'-.\f

    % 140
    | b( g) c( a)
    | fis( a8) fis-. d4 e8-. fis-.
    | g4-. e-. b-. cis-.
    | d2( d'4) r
    | R1*4
    | r4 a( fis d)
    | g( e c a)

    % 150
    | \stemUp d( cis d) \stemNeutral d,
    | g b8 d g4 g,-.\p
    | g'1 ~
    | g2. g,4
    | g'1 ~
    | g
    | <g, g'> ~
    | <g g'> ~
    | <g g'>
    | c'4-. c-. c-. r

    % 160
    | d,-. d-. d-. r
    | g,-. g-. g-. r
    | b-. b-. b-. r
    | c-. c-. c-. r
    | c2( cis)
    | d r
    | R1*2
    | r2 r4 d
    | b( g) c( a)

    % 170
    | fis( a8) fis-. d4( e8) fis-.
    | g2-\mf r
    | fis r
    | g r
    | c4 r d r
    | c r d r
    | c r r2
    | c4 r bes r
    | c r bes r
    | g8(\f g') d-. bes-. g( g') d-. bes-.

    % 180
    | g( g') es-. c-. g( g') es-. c-.
    | g( g') d-. bes-. g( g') d-. bes-.
    | g1\fz ~
    | g8-. bes-. es-. g-. bes-. g-. bes-. g-.
    | es-. g-. bes-. g-. es-. bes-. es-. bes-.
    | es g bes g es bes es bes
    | es bes es bes es bes es f
    | g1\fz ~
    | g4 g-. g-. g-.
    | g1\fz ~
    | g4 g-.( g-. g-.)

    % 190
    | fis!1\p ~
    | fis4 fis4-.( fis-. fis-.)
    | g2( c,)
    | d1
    | g,4 r r2
    | g4\p r r2
    | g4 r r2
    | g4 r r2
    | g4 r r2

    % 200
    | g4 r r2
    | g4 r r2
    | R1*3
    | r2 r4 d''8(\f c)
    | c4-. b8( a) a4-. c8( b)
    | b4-. a8( g) g4-. r
    | g\p r r2
    | g4 r r2

    % 210
    | g4 r r2
    | g4 r r2
    | \acciaccatura fis,8 g2 r
    | \acciaccatura fis8 g2 r
    | \acciaccatura fis8 g2 r
    | \acciaccatura fis8 g2 r4 d''-.
    | b( c) a( b)
    | c2( d)
    | g,4 r r d'-.
    | b( c) cis( d)

    % 220
    | dis( e) fis( g)
    | c,!2 r
    | d r
    | g,\f r
    | r d8( a) fis-. d-.
    | g4-. r r
  }
}
