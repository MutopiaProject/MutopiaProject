\version "2.18.0"

bassoPart =  \relative c {
    \key c \major
    \clef bass

    \noTupletBracket

    c8^\markup { pizz. } r g' r
    | c[ g c,] r
    | c'\p^\markup { arco } r g r
    | c, r c r
    | c r c' r
    | c, r c' r
    | a4( as)
    | g g8 c,
    | f4 g

% 10
    | c, c'8( b)
    | a4( as)
    | g8-. f-. r4
    | R2
    | c4( es)
    | d2 ~
    | d ~
    | d 
    | g4 r
    | R2*2

% 21
    | g8^\markup { pizz. } r d r
    | g a b r
    | a r g r
    | fis g a r
    | R2*3
    | r8^\markup { arco } e[( d c)]
    | b8 r b r

% 30
    | c[ c c c]
    | d r d r
    | d r d r
    | g4\f b
    | c c,8 d
    | e32( fis g fis) e4( d8)
    | c[ c d d]
    | g, r r4
    | g'8^\markup { pizz. } r d r
    | g, d' g r

% 40
    | a2^\markup { arco }
    | bes8-. fis-. g-. r
    | R2
    | g4( f!)
    | e( d)
    | cis( d)
    | e2
    | f8-. cis-. d-. r
    | R2
    | d4 b!

% 50
    | c! gis'
    | a( f)
    | e16-. e-. e-. e-. e8-. r
    | r16 d d d d8 r
    | r16 g!\f g g g8 r
    | c,^\markup { pizz. } r g' r
    | c[ g c,] r
    | c'8\p^\markup { arco } r g r
    | c, r c r
    | c r c' r 

% 60
    | c, r c' r
    | a4( as)
    | g g8 c,
    | f4 g
    | c, c'8( b)
    | a4( as)
    | g8-. f-. r4
    | R2
    | c2 ~
    | c ~

% 70
    | c ~
    | c4 r
    | R2*3
    | c8\p^\markup { pizz. } r g' r
    | c,[ d e] r
    | f r e r
    | b[ c d] r
    | R2*3

% 82
    | \raiseText r8^\markup { arco } a'[( g f)]
    | e r c r
    | f[ f f f]
    | g r g r
    | g r g r
    | c,4\f e
    | f cis
    | d b8( c!)
    | f32( g a g) f4( fis8)
    | g( as g fis)

% 90
    | g4 r\fermata
    | c8^\markup { pizz. } r g r
    | c,[ g' c] r
    | c\p^\markup { arco } r g r
    | c,2 ~
    | c8[ f g g,]
    | c4 ~ c8 r

    \bar "|."
}
