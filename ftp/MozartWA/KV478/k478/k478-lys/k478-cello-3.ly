celloPartIII = \relative g {
    \key g \major
    \time 2/2
    \clef bass
    %\override Hairpin #'minimum-length = #5
    \noTupletBracket

    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \partial 4
    
    r4
    | R1*8
    | g2-\f fis

% 10
    | e d
    | cis c
    | c r
    | b fis
    | g b
    | c4 c d d
    | g, r r2
    | R1*10
    | fis''4-\p fis fis fis
    | g r r2
    | fis4 fis fis fis

% 30
    | g r r2
    | fis4 fis fis fis
    | g r r2
    | r r4 b,-.
    | c-. e-. r2
    | r r4 b-.-\f
    | c-. e-. r2
    | d,4-\p d d d
    | g, r r e''8-\f d
    | c b a g fis e d c

% 40
    | b4 c d e
    | fis g a b
    | c r d r
    | g,2 r
    | R1*8

% 52
    | g2(-\p d)
    | b r 
    | fis4 fis fis fis
    | g r r2
    | g'2( d)
    | b4 r r2
    | a4 a a a
    | d r r2

% 60
    | d4 r r2
    | e4 r r2
    | e4 r r2
    | fis4 r r2
    | fis4 r r2
    | R1*2
    | a,4-\f a' fis d
    | a a' fis d
    | a r r2

% 70
    | R1
    | d'4-\p d( a) a(
    | b) b( fis2)
    | g4 g( fis) fis(
    | a) a( d,2)
    | d2( a
    | b fis)
    | g( fis
    | a d,)
    | a'4 r d r

% 80
    | a r d, r
    | a' r d r
    | a r d, r
    | R1*4
    | a'1-\p ~
    | a ~
    | a ~

% 90
    | a ~
    | a4 g'4.-\f fis8[ e d]
    | cis4 e a, a'
    | d, r r a
    | d r r a
    | d8 d' cis b gis( a) b g
    | fis d' cis b gis( a) b g
    | fis4( a g fis)
    | g r r2
    | a4 r r2

% 100
    | a,8 a'( gis a b a gis a)
    | d,4 r r2
    | R1*3
    | r2 d4.(-\p e16 fis
    | g4) r d,4.( e16 fis
    | g4) r r2
    | R1*3

% 111
    | d'4-\p d d d
    | \repeat unfold 16 d
    | fis fis fis fis
    | g g g g
    | a a a a
    | d, r r2

% 120
    | d1(
    | a)
    | fis2( a)
    | d,1
    | fis(
    | g
    | a
    | d4) r r2
    | a1(
    | d4) r r2

% 140
    | a1(
    | d4) r r2
    | es,4(-\f d) r2
    | es4( d) r d'(
    | es) c( a fis)
    | d2 r4-\fermata r
    | R1*8
    | g'2-\f fis
    | e d
    | cis c
    | c r
    | b fis
    | g b

% 150
    | c4 c d d
    | g,4 r r2
    | R1*10
    | fis''4-\p fis fis fis
    | g r r2
    | fis4 fis fis fis
    | g r r2
    | fis4 fis e e
    | dis dis e e
    | fis fis e e
    | dis r r2

% 170
    | R1*2
    | e4-\p r e r
    | e2 r
    | R1*2
    | b4-\p r b r
    | e2 r4 dis,(-\f
    | e) g, b dis,
    | e2 r

% 180
    | R1
    | r2 r4 gis(
    | a) g! fis e
    | d2 r
    | R1
    | r2 r4 fis(
    | g) f e d
    | c2 \lowerDynamics a'(-\p
    | b gis)
    | a( fis!

% 190
    | dis e)
    | a( ais)
    | b4 r r dis(-\f
    | e) g, b dis,
    | e2 r
    | R1
    | r2 r4 a(-\f
    | c) fis, a e
    | dis2 r
    | R1

% 200
    | e4(-\p f e f)
    | e( f e2)
    | R1*2
    | d4( es d es)
    | d( es d2)
    | R1
    | r2 r4 g8-.-\f b-.
    | b( c) d c c4 r
    | r2 r4 b8-. c-.

% 210
    | cis( d) e d d4 r
    | r2 r4 c!8-. d-.
    | dis( e) fis! e e4 r
    | R1
    | r2 gis,8( a) b a
    | e( fis) g! fis fis( g) a g
    | b( c) d c b( cis) d cis
    | d4 r r2

% 218
    | R1*15
    | g2(-\p d)
    | bes r
    | fis4 fis fis fis
    | g2 r
    | R1*2
    | b!2( c4) r

% 240
    | R1
    | es'1
    | d4 r r2
    | d,8( cis d cis d cis d cis)
    | d4 r r2
    | d8( cis d cis d cis d cis)
    | d1 ~
    | d-\crescText ~
    | d ~
    | d2-\f ~ d4.( e16 fis)

% 250
    | g4-\p g( d) d(
    | e) e( b2)
    | c4 c( b) b(
    | d) d( g,2)
    | g'2( d
    | e b)
    | c( b
    | d g,)
    | d'4 r g r
    | d r g, r

% 260
    | d' r g r
    | d r g, r
    | R1*4
    | d1-\p ~
    | d ~
    | d ~
    | d ~

% 270
    | d4 r r2
    | d'2-\f ~ d4.( e16 fis
    | g4) r r d
    | g, r r d'
    | g,8 g' fis e cis( d) e c
    | b g' fis e cis( d) e c
    | b4 d'( c b)
    | c r r2
    | d4 r r2
    | d,8 d'( cis d e d cis d)

% 280
    | g,4 r r2
    | R1*2
    | r2 g4.(-\p a16 b)
    | c4 r g,4.( a16 b)
    | c4 r r2
    | R1*3
    | g4-\p g g g

% 290
    | \repeat unfold 16 g
    | b b b b
    | c c c c
    | d d d d
    | g, r r2
    | g'1(
    | d)

% 300
    | b2( d)
    | g,1
    | b(
    | c)
    | d(
    | g,4) r r2
    | d'1(
    | g,4) r r2
    | b1(
    | e,4) r r2

% 310
    | a1(
    | d,4) r r d'8 d
    | cis( d e d) d2 ~
    | d2. d8 d
    | cis( d e d) d2 ~
    | d2. d8 d
    | cis( d e d) d2 ~
    | d1 ~
    | d ~
    | d4 d8 d cis( d e d) ~

% 320
    | d4 d8 d cis( d e d) ~
    | d4 d8 d cis( d e d)
    | g,4 r r2
    | R1*7

% 330
    | g'2-\f fis
    | e d
    | cis c
    | c r
    | b fis
    | g b
    | c4 c d d
    | g, r r e''8 d
    | c b a g fis e d c
    | b4 c d e

% 340
    | fis g a b
    | c r d r
    | es,,1-\fp ~
    | es2. es8 es
    | d( es f es) es2 ~
    | es2. es8 es
    | d( es f es) es2 ~
    | es1 ~
    | es
    | \lowerText d-\crescText ~

% 350
    | d
    | g4-\ff g8 g a a b b
    | c c d d e e fis fis
    | g g a a b b c c
    | d4 r d, r
    | g r r d
    | g r r d
    | g, r r d'
    | g g d d
    | g, r g' r

% 360
    | g,2 r4

    \bar "|."
}
