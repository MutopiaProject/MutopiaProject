hornsPart = \notes \relative e' {
    \key c \major
    \clef violin

    \noTupletBracket
    
    < { e4-\p g } { c d } >
    | < { c8-[ g e-] } { e'-[ d c-] } > r
    | R2*12
    | d'2-\p ~
    | d ~
    | d
    | <<g, d'>>4 r
    | R2*4
    | d'2-\p ~
    | d8 d d r
    | R2*6

% 31
    | d2 ~
    | d
    | <<g, d'>>-\f
    | < { c4. g8 | g4. g8 | c4 d | g,8 } { e'4. d8 | c4. d8 | e4 s | d8 } >
      r r4
    | R2*17
    | < { e4-\p g } { c d } >
    | < { c8-[ g e-] } { e'-[ d c-] } > r
    | R2*11
    | <<c c'>>2-\p ~
    | <<c c'>> ~
    | <<c c'>> ~
    | <<c c'>>
    | R2*5
    | g'2-\p ~
    | g8-[ g g-] r
    | R2*6
    | g2 ~
    | g
    | <<c, c'>>-\f ~
    | <<c c'>>4 e'
    | d < { g,8 c } { d e } >

% 90
    | < { d8 d4 } { c8 c4 } > c8
    | < { c-[ c c c-] } { c,-[ c c c-] } >
    | g4 r-\fermata
    | < { e4 g } { c d } >
    | < { c8-[ g e-] } { e8-[ d c-] } > r
    | R2
    | <<c c'>>2-\p ~
    | <<c c'>>8 r r <<g' d'>>
    | <<g d'>>4-( <<e c'>>8-) r

    \bar "|."
}
