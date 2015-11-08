\version "2.18.0"
violaFirstMov =  \relative d' {
  \key g \major
  \clef alto

  \noTupletBracket
  \tupletSpan 4

  <d b'-.>4\f r <d c'-.> r
  | <d b'-.> r r

  \repeat volta 2 {
    r4
    | R1*3
    | r2 r4 e-.\p
    | c( a) d( b) gis( b8) gis-. e4 fis8-. gis-.
    | a4( c) d,( fis)

    % 10
    | g!2( g'4) r
    | R1*3
    | r2 r4 gis,-.
    | a( c) b( d)
    | e2.( d4)
    | c4-. a-. d-. c-.
    | b8( c) b-. a-. g!4-. d'-.
    | e2( fis)

    % 20
    | g4( d8) c-. b4-. d-.
    | e2( fis)
    | g4( d8) c-. b4-. g-.
    | f'( e) es( d)
    | c8( d e!) c-. b4-. g-.
    | f'( e) es( d)
    | e!4-. e-. e-. r
    | <d a'-.> <d a'-.> <d a'-.> r
    | <d b'-.> <d b'-.> <d b'-.> r
    | b-. g'-. g-. r

    % 30
    | c-. c-. c-. r
    | a-. a-. a-. a-.
    | g2( g,4)-. b'-.\f
    | g( e) a( fis)
    | dis( fis8) dis-. b4-. dis-.
    | e-. fis-. g-. cis,-.
    | d!-. e-. fis-. a,-.
    | c( b) d( c)
    | <d, a'>2\f a''4-. a-.
    | g2\fz d4-. d-.

    % 40
    | g2\fz d4-. d-.
    | f2(\ff d)
    | e r4 dis4-.-\markup { \italic poco \dynamic f }
    | e2( cis)
    | d4( gis a) r
    | g!( e fis2)
    | dis2( e4) d
    | cis1
    | d4 d'8( cis b a g fis)
    | e2. cis4

    % 50
    | d r d r
    | b r c! r
    | b r c r
    | b r r2
    | e4 r f r
    | e r f r
    | d8(\f d') a-. f-. d( d') a-. f-.
    | d( d') bes-. g-. d( d') bes-. g-. 
    | d( d') a-. f-. d( d') a-. f-.
    | d-. bes'-. d-. bes-. f-. d-. bes-. d-.

    % 60
    | f bes d bes f d bes d
    | bes d f d bes f bes f
    | bes d f d bes f bes f
    | bes f bes f bes4-. bes-.
    | bes1\fz ~
    | bes4 bes-. bes-. bes-.
    | bes1\fz ~
    | bes4 bes-. bes-. bes-.
    | bes1(\p
    | a4) a-.( a-. a-.)

    % 70
    | a2( b!)
    | fis!( g4) g'8( e)
    | d( a d a) d( a d\p a)
    | cis( a cis a) cis( a cis a)
    | d( a d a) d( a d a)
    | cis( a cis a) cis( a cis a)
    | d( a d a) d( a d a)
    | cis( a cis a) cis( a cis a)
    | d( a d a) d( a d a)
    | cis( a cis a) cis( a cis a)

    % 80
    | d4-. r r c!-.
    | a( b) g( a)
    | b2( a4 g)
    | fis-. r r c''!-.
    | a( b) g( a)
    | b2( a4 g)
    | fis-.\f r cis-. r
    | d8( a) fis-. d-. g'4-. r
    | fis-. r r
  }

  \repeat volta 2 {
    a4\f
    | fis( d) g( e)

    % 90
    | cis( e8) cis-. a4 b8-. cis-.
    | d4-. b-. fis-. gis-.
    | a2( a'4) r
    | e r a, r
    | b2 r
    | R1
    | b2-. r
    | b-. r
    | <b fis'>-. r
    | <b fis'>-. r

    % 100
    | e-. r
    | g-. r
    | g1
    | fis ~
    | fis
    | e ~
    | e
    | dis
    | b4-. e-. e-. e-.
    | g, g' g g

    % 110
    | a, a' a a
    | g, g' g g
    | gis, gis' gis gis
    | a, e' e e
    | b b' b b
    | a r <a, a'-.>\ff r
    | <a a'>-. r <a g'!>-. r
    | <a f'>-. r d-. r
    | g-. r g-. r
    | g\f e8 d c b a g

    % 120
    | f4 r r f'
    | e( b' c) d,\fz
    | e2 r4 g
    | e( cis' d) e,\fz
    | fis!2 r
    | R1
    | r4 dis fis a8-. fis-.
    | b4( g) c( a)
    | fis( a8) fis-. dis4 e8-. fis-.
    | b,2.( cis8 d!)

    % 130
    | e4 cis a a' ~
    | a( fis8) a-. d4 fis,\p-.
    | g( b) e,( g)
    | fis2. fis4-.
    | g( b) e,( g)
    | fis( d8)-\markup { \italic cresc. } e-. fis4-. g-.
    | a( fis8) g-. a4-. b-.
    | c1\f ~
    | c-\> ~
    | c2-\! r

    % 140
    | R1*4
    | r4 b,-.\f g( e)
    | c'( a) fis( d')
    | b-. g-. e'8( d c b)
    | a4-. fis'-. d( b)
    | g' r r2
    | R1

    % 150
    | r2 r4 d'8 c
    | b c b a g4 d-.\p
    | e2( fis)
    | g4( d8) c-. b4-. d-.
    | e2( fis)
    | g4( d8) c-. b4-. g-.
    | f'( e) es( d)
    | c8( d e!) c-. b4-. g-.
    | f'( e) es( d)
    | e!-. e-. e-. r

    % 160
    | <d a'>-. <d a'>-. <d a'>-. r
    | <d b'>-. <d b'>-. <d b'>-. r
    | b'-. b-. b-. r
    | c-. c-. c-. r
    | c,2( cis)
    | d1 ~
    | d ~
    | d ~
    | d ~
    | d2 e4( c)

    % 170
    | a4( c8) a-. fis4( g8) a-.
    | b2\mf r
    | d r
    | d r
    | e,4 r f r
    | e r f r
    | e r r2
    | a4 r bes r
    | a r bes r
    | g8(\f g') d-. bes-. g( g') d-. bes-.

    % 180
    | g( g') es-. c-. g( g') es-. c-. 
    | g( g') d-. bes-. g( bes) d-. g-.
    | bes,1\fz(
    | g8)-. bes-. es-. g-. bes-. g-. bes-. g-.
    | es-. g-. bes-. g-. es-. bes-. es-. bes-.
    | es g bes g es bes es bes
    | es bes es bes es4 es
    | es1\fz ~
    | es4 es-. es-. es-.
    | es1\fz ~

    % 190
    | es4 es4-.( es-. es-.)
    | es1(\p
    | d4) d-.( d-. d-.)
    | d2( c)
    | b!( a)
    | g8( d g d) g( d g\p d)
    | fis( d fis d) fis( d fis d)
    | g( d g d) g( d g d)
    | fis( d fis d) fis( d fis d)
    | g( d g d) g( d g d)

    % 200
    | fis( d fis d) fis( d fis d)
    | g( d g d) g4-. fis'(
    | g fis g fis)
    | g2 r4 fis(
    | g fis g gis)
    | a( gis a) f8(\f e)
    | e4-. d8( c) c4-. es8( d)
    | d4-. c8( b) b4-. g8(\p g')
    | fis( d fis d) fis( d fis d)
    | g( d g d) g( d g d)

    % 210
    | fis( d fis d) fis( d fis d)
    | g( d g d) g( d g d)
    | fis( d fis d) fis( d fis d)
    | g( d g d) g( d g d)
    | fis( d fis d) fis( d fis d)
    | g4 r r f-.
    | d( e) c( d)
    | e2( d4 c)
    | b r r f'-.
    | d e2 fis!4 ~

    % 220
    | fis4( g) a( b)
    | a2 r
    | d, r
    | g4-.\f r fis-. r
    | g8( d) b-. g-. d4-. r
    | g-. r r
  }
}
