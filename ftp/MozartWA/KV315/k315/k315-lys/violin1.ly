\version "2.18.0"
violinIPart =  \relative g {
    \key c \major
    \clef violin

    \noTupletBracket

    <g e' c'>8^\markup { pizz. } r <g d' b'> r
    | <g e' c'> [ <g g' d'> <c g' c e> ] r
    | r16^\markup { arco } \lowerDynamics e(\p g e g e f d)
    | r dis( e dis e) e( f g)
    | r a( f a) c-. c( b a)
    | r a( g fis) g( c) e,( g)
    | r f( a c) r f,( as c)
    | r d,( f b) r b( c g)
    | f4.( d8)
    | r16 dis( e f) fis( g b d!)

% 10
    | r f,!( a c) r f,( as c)
    | b8-. g-. r g
    | f( a) r16 g( e d)
    | r c( e g) r es( g c)
    | r8 d4 c8 ~
    | c c'([ b]) b, ~
    | b b'[( a]) a,
    | b4 r16 d,( g f!)
    | e16[ e'8 d c b16]
    | a8 a a r

% 20
    | <g, g'>^\markup { pizz. } r <d' a'> r
    | <d b'> <d c'> <d d'> r
    | <a fis'> r <b g'> r
    | <d a'> <d b'> <d c'> r
    | r16^\markup { arco } g( d' b) g g g g
    | r g( e g) c c b b
    | r g g g fis fis fis fis
    | r8 <g, g'>4 <g g'>8 ~
    | <g g'> g'4( gis8)

% 30
    | b16( a) a8 c e
    | r16 b( d) d-. d( cis c b)
    | r a a a a32( b c b c[ d e fis)]
    | g(\f a b a) g4( fis8)
    | e32( fis g fis) e4( d8)
    | c32( d e d) c4( b8)
    | gis16( a c e) d16.( b32) \grace { d32 } c16[ b32 a]
    | g8 r r4
    | <g, g'>8^\markup { pizz. } r <a fis'> r
    | <g g'>8[ <d' a'> <d bes'>] r

% 40
    | r4 r16^\markup { arco } fis( a c)
    | d8-. c-. bes-. r
    | r es[( d c)]
    | c16( bes) bes-. bes-. r bes( a bes)
    | r bes( a bes) r bes( a bes)
    | r a( gis a) r a( g f)
    | r4 r16 cis( e g)
    | a8-. g-. f-. r
    | r bes[( a g)]
    | g16( f) f-. f-. gis4

% 50
    | r16 a a a b!4
    | b16( a) a4 a8
    | a16( gis) gis-. gis-. gis8-. r
    | r16 b b b b8 r
    | r16 <d,\f b'>16[ q q ] q8 r
    %| r16 { d,\f d d d8 } { b'16 b b b8 } r8
    | <g, e' c'>^\markup { pizz. } r <g d' b'> r
    | <g e' c'>[ <g g' d'> <c g' c e>] r
    | r16^\markup { arco } \lowerDynamics e(\p g e g e f d)
    | r dis( e dis e) e( f g)
    | r a( f a) c-. c( b a)

% 60
    | r a( g fis) g( c e, g)
    | r f!( a c) r f,( as c)
    | r d,( f b) r b( c g)
    | f4.( d8)
    | r16 dis( e f) fis( g b d!)
    | r16 f,!( a c) r f,( as c)
    | b8-. g-. r g
    | f( a) r16 g( e d)
    | r c( e g) r e( g c)
    | r fis,( a c) r g( bes d)

% 70
    | r e,( g bes) r f!( a c)
    | r d,( f a) g-. bes( a g)
    | f8[( e f g)]
    | a[ a a a]
    | g4 ~ g8 r
    | <g, e' c'>^\markup { pizz. } r <g d' d'> r
    | <g' e'>8[ <g f'> <g g'>] r
    | <d b'> r <e c'> r
    | <g d'>8[ <g e'>] <g f'> r
    | r16^\markup { arco } c16( g' e) c c c c

% 80
    | r a( f' c) a a g g
    | r << { d d d d d d d } { c' c c b b b b } >>
    | r8 c4 c8 ~
    | c c4 c8
    | c[ a f a]
    | r16 e( g) g-. g( fis f e)
    | r d d d d32( e f e f[ g a b)]
    | c(\f d e d) c4( b8)
    | a32( b c b) a4( g8)
    | f32( g a g) f4( e8)

% 90
    | d32( e f e) d4( es8)
    | e![( f e es)]
    | <g, e'!>4 r\fermata
    | <g e' c'>8^\markup { pizz. } r <g d' b'> r
    | <g e' c'>[ <g g' d'> <c g' c e>] r
    | r16^\markup { arco } \lowerDynamics e(\p g e g e f d)
    | r dis( e g) a[( f8 d16])
    | g8[ \grace { g32 } f16 e32 d] c8 b
    | b4( c8) r

    \bar "|."
}
