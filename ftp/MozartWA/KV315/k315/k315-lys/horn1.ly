\version "2.18.0"
hornIPart =  \relative c'' {
    \key c \major
    \clef violin

    \noTupletBracket
    
    c4\p d
    | e8[ d c] r
    | R2*12
    | d2\p ~
    | d ~
    | d
    | d4 r
    | R2*4
    | d2\p ~
    | d8 d d r
    | R2*6

% 31
    | d2 ~
    | d
    | d\f
    | e4. d8
    | c4. d8
    | e4 d
    | d8 r r4
    | R2*17
    | c4\p d
    | e8[ d c] r
    | R2*11
    | c2\p ~
    | c ~
    | c ~
    | c
    | R2*5
    | g2\p ~
    | g8[ g g] r
    | R2*6
    | g2 ~
    | g
    | c\f ~
    | c4 e
    | d d8 e

% 90
    | d d4 c8
    | c[ c c c]
    | g4 r\fermata
    | c4 d
    | e8[ d c] r
    | R2
    | c2\p ~
    | c8 r r d
    | d4( c8) r

    \bar "|."
}
