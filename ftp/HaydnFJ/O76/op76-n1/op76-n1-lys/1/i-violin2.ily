\version "2.18.0"
violinIIFirstMov =  \relative d' {
  \key g \major
  \clef violin

  \noTupletBracket
  \tupletSpan 4

  <d b' g'>4\f-. r <d a' fis'>-. r
  | <d b' g'>-. r r

  \repeat volta 2 {
    r4
    | R1*7

    % 10
    | r2 r4 d'-.\p
    | b( g) c( a)
    | fis( a8) fis-. d4 e8-. fis-.
    | g4-. e-. b-. cis-.
    | d2( d'4) r
    | R1*3
    | r2 r4 b-.
    | c( e) a,( c)

    % 20
    | b( g8) a b4-. b-.
    | c( e) a,( c)
    | b( g8) a-. b4-. d-.
    | b( c) a( b)
    | c( e,8) fis-. g4-. d'-.
    | b( c) a( b)
    | g-. g-. g-. r
    | c-. c-. c-. r
    | b-. b-. b-. r
    | d-. d-. d-. r

    % 30
    | g,-. g-. g-. r
    | c-. c-. c-. c-.
    | b2( g4)-. b-.\f
    | g( e) a( fis)
    | dis( fis8) dis-. b4-. fis'-.
    | g-. a-. b-. e,-.
    | fis-. g-. a-. d!-.
    | fis( e) g( fis)
    | a2\fz fis4-. fis-.
    | g2\fz g,4-. g'-.
    | g2\fz g,4-. g'-.
    | gis1\ff(
    | a2) r4 fis,-.-\markup { \italic poco \dynamic f }
    | g2( e)
    | fis4( d' cis) r
    | cis2( d)
    | c!2( b4) fis
    | e1
    | fis8( d' fis e d cis b a)
    | g2. e4

    % 50
    | fis r a r
    | g r fis r
    | g r dis r
    | e r r2
    | bes'4 r a r
    | bes r a r
    | d,8(\f d') a-. f-. d( d') a-. f-.
    | d( d') bes-. g-. d( d') bes-. g-.
    | d( d') a-. f-. d( d') a-. f-.
    | d-. bes'-. d-. bes-. f-. d-. bes-. d-.

    % 60
    | f bes d bes f d bes d
    | bes d f d bes f' bes, f'
    | bes, d f d bes f' bes, f'
    | bes, f' bes, f' bes,4-. f'-.
    | f1\fz ~
    | f4 f-. f-. f-.
    | f1\fz ~
    | f4 f-. f-. f-.
    | e1\p ~
    | e4 e-.( e-. e-.)

    % 70
    | d2( b)
    | a2( e')
    | fis8( a, fis' a,) fis'( a, fis'\p a,)
    | g'( a, g' a,) g'( a, g' a,)
    | fis'( a, fis' a,) fis'( a, fis' a,)
    | g'( a, g' a,) g'( a, g' a,)
    | fis'( a, fis' a,) fis'( a, fis' a,)
    | g'( a, g' a,) g'( a, g' a,)
    | fis'( a, fis' a,) fis'( a, fis' a,)
    | g'( a, g' a,) g'( a, g' a,)

    % 80
    | fis'4-. r r fis-.
    | dis( e) cis( d) ~
    | d( e d cis)
    | d-. r r fis'-.
    | dis( e) cis( d) ~
    | d( e d cis)
    | d-.\f r a8( e) cis-. a-.
    | d4 r <a' e'>-. r
    | <a fis'>-. r r
  }

  \repeat volta 2 {
    r4
    | r d'8\f cis b a g fis
    | e4( fis8) g-. a b a g
    | fis e d cis d fis e d
    | cis d e cis a4 b-.
    | g( e) a( fis)
    | dis( fis8) dis-. b4 cis8-. dis-.
    | e4-. fis-. g-. dis-.
    | e2-. r
    | g-. r
    | dis8( fis) b-. fis-. dis-. b-. dis-. b-.
    | dis( fis) b-. fis-. dis-. b-. dis-. b-.

    % 100
    | g'2-. r
    | b-. r 
    | c1 ~
    | <a c>
    | b ~
    | <g b>
    | a ~
    | <fis a>
    | g4-. b-. b-. b-.
    | b, b' b b

    % 110
    | c, c' c c
    | b, b' b b
    | b, b' b b 
    | a, a' a a
    | d, d' d d
    | c r <e, cis'>-.\ff r
    | <d d'>-. r <a' e'>-. r
    | <a f'>-. r <d, b'>-. r
    | <e c'>-. r <f d'>-. r
    | g4\f c8 b a g f e

    % 120
    | d2( b4) c8( d)
    | e4( f g) gis\fz
    | a2( cis,4) d8( e)
    | f4( g a) ais\fz
    | b2 r
    | r8 e,-[ fis g-] fis g a b
    | c4( b2) fis4
    | g2 r4 fis'8( g)
    | a2. g8-. fis-.
    | e( dis e fis) g4-. fis-.

    % 130
    | e1(
    | fis4) r r a,-.\p
    | b2( cis)
    | d2. a4-.
    | b2( cis)
    | d1-\markup { \italic cresc. } ~
    | d4( c!8) b-. a4-. g-.
    | <a, fis'>1\f ~
    | <a fis'>-\> ~
    | <a fis'>2-\! r

    % 140
    | R1*4
    | r4 d-.\f b( g)
    | e'( c) a( fis')
    | d-. b-. g'8( fis e d)
    | c4-. a'-. fis( d)
    | b'-. e( a fis)
    | d( e8 fis g4 c,)

    % 150
    | b2( a)
    | b2. b4-.\p
    | c( e) a,( c)
    | b( g8) a-. b4-. b-.
    | c( e) a,( c)
    | b( g8) a-. b4-. d-.
    | b( c) a( b)
    | c( e,8) fis-. g4-. d'-.
    | b( c) a( b)
    | g-. g-. g-. r

    % 160
    | c-. c-. c-. r
    | b-. b-. b-. r
    | d-. d-. d-. r
    | g,-. g-. g-. r
    | e1
    | d2 r4 e'(
    | c a fis) d'(
    | b g e) c'(
    | a fis d fis)
    | g r r a

    % 170
    | c2.( b8 a)
    | g2\mf r
    | a r
    | b r
    | c,4 r b r
    | c r b r
    | c r r2
    | es4 r d r
    | es r d r
    | g,8(\f g') d-. bes-. g( g') d-. bes-.

    % 180
    | g8( g') es-. c-. g( g') es-. c-.
    | g8(\f g') d-. bes-. g( g') d-. bes-.
    | es1\fz(
    | g,8)-. bes-. es-. g-. bes-. g-. bes-. g-.
    | es-. g-. bes-. g-. es-. bes-. es-. bes-.
    | es g bes g es bes es bes
    | es bes es bes es4 bes'
    | bes1\fz ~
    | bes4 bes-. bes-. bes-.
    | bes1\fz ~

    % 190
    | bes4 bes4-.( bes-. bes-.)
    | a1\p ~
    | a4 a-.( a-. a-.)
    | g2( e!)
    | d( c)
    | b8( d b d) b( d b\p d)
    | c( d c d) c( d c d)
    | b8( d b d) b( d b d)
    | c( d c d) c( d c d)
    | b8( d b d) b( d b d)

    % 200
    | c( d c d) c( d c d)
    | b( d b d) b4-. c'(
    | b c b c)
    | b2 r4 c(
    | b c b d)
    | c( d c) b8(\f c)
    | c4-. d8( e) e4-. a,8( b)
    | b4-. c8( d) d4-. b\p
    | c8( d, c' d,) c'( d, c' d,)
    | b'( d, b' d,) b'( d, b' d,)

    % 210
    | c'( d, c' d,) c'( d, c' d,)
    | b'( d, b' d,) b'( d, b' d,)
    | c'( d, c' d,) c'( d, c' d,)
    | b'( d, b' d,) b'( d, b' d,)
    | c'( d, c' d,) c'( d, c' d,)
    | b'4 r r b'-.
    | gis( a) fis( g) ~
    | g( a g fis)
    | g-. r r g,-.
    | gis( a) bes( a) 

    % 220
    | c( b!) d( d)
    | e,2 r
    | c' r
    | b4-.\f r d8( a) fis-. d-.
    | g4-. r <c fis>-. r
    | <d, b' g'>-. r r
  }
}
