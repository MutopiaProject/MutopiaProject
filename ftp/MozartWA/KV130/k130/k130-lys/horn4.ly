\version "2.18.2"
hornIIPart =  \relative e' {
    \key c \major
    \clef violin

    \noTupletBracket
    
    e4\p g
    | c8[ g e] r
    | R2*12
    | d'2\p ~
    | d ~
    | d
    | g,4 r
    | R2*4
    | d'2\p ~
    | d8 d d r
    | R2*6

% 31
    | d2 ~
    | d
    | g,\f
    | c4. g8
    | g4. g8
    | c4 d
    | g,8 r r4
    | R2*17
    | e4\p g
    | c8[ g e] r
    | R2*11
    | c2\p ~
    | c ~
    | c ~
    | c
    | R2*5
    | g'2\p ~
    | g8[ g g] r
    | R2*6
    | g2 ~
    | g
    | c,\f ~
    | c4 e'
    | d g,8 c

% 90
    | c c4 c8
    | c,[ c c c]
    | g'4 r\fermata
    | e4 g
    | c8[ g e] r
    | R2
    | c2\p ~
    | c8 r r g'
    | g4( e8) r

    \bar "|."
}
