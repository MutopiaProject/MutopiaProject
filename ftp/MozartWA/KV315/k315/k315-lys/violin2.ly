\version "2.18.0"
violinIIPart =  \relative g {
    \key c \major
    \clef violin

    \noTupletBracket

    <g e'>8^\markup { pizz. } r <g f'> r
    | <g e'>[ <g d' b'> <g e' c'>] r
    | r16^\markup { arco } \lowerDynamics c(\p e c e c d b)
    | r b( c b c) c( d e)
    | r f( c f) a-. a( g f)
    | r f( e dis) e( g) c,( e)
    | r c( f a) r c,( f as)
    | r b,( d f) r f( e) e
    | d4.( b8)

% 10
    | r16 b( c d) dis( e) d( g,)
    | r16 c( f a) r c,( f as)
    | d,8-. d-. r c
    | c( d) r16 e( c b)
    | r g( c e) r c( es g)
    | a8[ fis( g a)] ~
    | a a'[( g)] g, ~
    | g g'[( fis)] fis,
    | g4 r8 g ~
    | g[ gis( a e)]

% 20
    | fis fis fis r
    | << { d^\markup { pizz. } r fis r } \\ { b, s c s } >>
    | <b g'>8[ <c fis>] <b g'> r
    | << { d r d r } \\ { c s b s } >>
    | <c a'>8[ <b g'>] <a fis'> r
    | r16^\markup { arco } b( b' g) d d d d
    | r e( c e) g g g g
    | r e e e a a a a
    | r8 g[( fis e)]
    | r16 d d d d d f! f

% 30
    | f( e) e8 a c
    | r16 g( b) b-. b( ais a g)
    | r g g g fis32( g a g a[ b c a)]
    | g(\f a b a) g4( fis8)
    | e32( fis g fis) e4( d8)
    | c32( d e d) c4( b8)
    | e8 a16( c) b16.[( g32)] \grace { b32 } a16[ g32 fis]
    | g8 r r4
    | << { d8^\markup { pizz. } r d r } \\ { bes s c s } >>
    | <d bes> <fis c> <g bes,> r

% 40
    | c,2^\markup { arco }
    | bes8-. a-. g-. r
    | r c'[( bes a)]
    | fis16( g) g-. g-. r g( fis g)
    | r g( fis g) r g( fis g)
    | g4 f!16-. f( e d)
    | g,2
    | a8-. e'-. d-. r
    | r g[( f e)]
    | cis16( d) d-. d-. d4

% 50
    | r16 e e e e4 ~
    | e8 c4 a8
    | c16( b) b-. b-. b8-. r
    | r16 gis' gis gis gis8 r
    | r16 << { g,!\f g g g8 } { f'16 f f f8 } >> r
    | <g, e'>^\markup { pizz. } r <g f'> r
    | <g e'>[ <g d' b'> <g e' c'>] r
    | r16^\markup { arco } \lowerDynamics c(\p e c e c d b)
    | r b( c b c) c( d e)
    | r f( c f) a-. a( g f)

% 60
    | r f( e dis) e( g) c,( e)
    | r c( f a) r c,( f as)
    | r b,( d f) r f( e) e
    | d4.( b8)
    | r16 b( c d) dis( e) d( g,)
    | r16 c( f a) r c,( f as)
    | d,8-. d-. r c
    | c( d) r16 e( c b)
    | r g( c e) r c( e) e-.
    | r c( fis a) r d,( g bes)

% 70
    | r bes,( e g) r c,( f a)
    | r a,( d f) e4
    | c2
    | a4.( f'8)
    | e8.( f32 e d8) r
    | <g, e' c'>^\markup { pizz. } r <g d' b'> r
    | <g e' c'>8[ <g f' b>] <g e' c'> r
    | <b g'> r <c g'> r
    | <g f'>8[ <g e'>] <b g'> r
    | r16^\markup { arco } e( e' c) g g g g

% 80
    | r c-. c( a) f f e e
    | r a a a g g g g
    | r8 c[( b a)]
    | r16 g g g g( bes a gis)
    | a8[ f c d]
    | r16 c( e) e-. e( dis d c)
    | r c c c b32( c d c d[ e f d)]
    | c(\f d e d) c4 c8
    | c16( f a f) a,( e' g e)
    | a,( d) a( as) g( d' g, c)

% 90
    | c8 c4 c8 ~
    | c c4 c8
    | c4 r\fermata
    | <g e' c'>8^\markup { pizz. } r <g f'> r
    | <g e' c'>8[ <g d' b'>] <g e' c'> r
    | r16^\markup { arco } \lowerDynamics c16(\p e c e c d b)
    | r b( c e) f( d8 b16)
    | c8.( a16) g8 g
    | g4 ~ g8 r

    \bar "|."
}
