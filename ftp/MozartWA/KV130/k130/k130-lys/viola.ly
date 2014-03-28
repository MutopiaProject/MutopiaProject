\version "2.18.2"
violaPart =  \relative g {
    \key c \major
    \clef alto

    \noTupletBracket
    
    <g g'>8^\markup { pizz. } r <g g'> r
    | << { g[ g g] } { g'[ g g] } >> r
    | g2\p^\markup { arco } ~
    | g4 c ~
    | c c, ~
    | c c' ~
    | c2
    | b4( g')
    | r r8 g,

% 10
    | g2
    | c
    | g8-. f-. r e
    | f4 g8 g
    | f16( e) e8 g4
    | d r
    | fis'( g)
    | e( \set Staff.autoBeaming = ##f fis8) d-.
      \set Staff.autoBeaming = ##t
    | d4 r8 b
    | c[ c c cis]

% 20
    | d d d r
    | d^\markup { pizz. } r d r
    | d d d r
    | << { d r d r } \\ { a s g s } >>
    | d d << { d } \\ { c } >> r
    | g,4(^\markup { arco } b)
    | c( g)
    | a( d,)
    | r8 b'4( c8)
    | r16 b b b b b d d

% 30
    | d( c) c8 e a
    | d,4 ~ d16 e( fis g)
    | << { d4 ~ d16 d d d } \\ { c4 ~ c16 c c c } >>
    | << { d16 } \\ { b\f } >> b( d b) g( b d b)
    | g( c e c) g( c b g)
    | g g'( e c) g( g') g,( g')
    | c,8[ e d d]
    | << { d8 } \\ { b } >> r r4
    | d8^\markup { pizz. } r d r
    | d d <g, d'> r

% 40
    | r16^\markup { arco } fis( a c) es4
    | d8-. d-. d-. r
    | c4 d
    | d2
    | cis4( d)
    | e d16 f( e d)
    | r cis,( e g) bes4
    | a8-. a-. a-. r
    | g4 a
    | a b!

% 50
    | c! gis
    | a( f)
    | e8[ e'16-. e-.] e8-. r
    | r16 f f f f8 r
    | r16 << { g,!\f g g g8 } { g'!16 g g g8 } >> r
    | <g g'>^\markup { pizz. } r <g g'> r
    | << { g g g } { g' g g } >> r
    | g2\p^\markup { arco } ~
    | g4 c ~
    | c c, ~

% 60
    | c c'
    | c2
    | b4( g')
    | r4 r8 g,
    | g2
    | c
    | g8-. f-. r e
    | f4 g8 g
    | f16( e) e8 g4
    | a( bes)

% 70
    | g( a)
    | c c,
    | f8[( g a g)]
    | f[ f f f]
    | g g' g, r
    | <g g'>^\markup { pizz. } r <g g'> r
    | << { g[ g g] } { g'[ g g] } >> r
    | << { d' r e r } \\ { g, s g s } >>
    | << { g, g g } { g' g g } >> r
    | \raiseText c4(^\markup { arco } e)

% 80
    | f( c)
    | d( g,)
    | r8 e'4( f8)
    | r16 e e e e( g f e)
    | f8[ c a f']
    | g4 g,16( a b c)
    | << { g4 ~ g16 g g g } \\ { f4 ~ f16 f f f } >>
    | << { g16 } \\ { e\f } >> e( g e) c( e g e)
    | f( a c a) e( a e' a,)
    | f( a f d) d( g) g-. g-.

% 90
    | a32( g f g) a4 a8
    | g[( f g a)]
    | g4 r\fermata
    | <g g'>8^\markup { pizz. } r <g g'> r
    | << { g[ g g] } { g'[ g g] } >> r
    | g2\p^\markup { arco } ~
    | g8[ bes( a f)]
    | e( f) g( f)
    | f4( e8) r

    \bar "|."
}
