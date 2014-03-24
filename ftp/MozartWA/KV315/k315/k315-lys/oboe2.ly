\version "2.18.0"
oboeIIPart =  \relative e' {
    \key c \major
    \clef violin

    \noTupletBracket

    \lowerDynamics e4(\p f)
    | e8[ b'\trill c] r
    | R2*20
    | c4( b)
    | d8-. g-. fis-. r
    | R2*7
    | r4 c
    | b d
    | g,2
    | g
    | e8[ a16( c)] b16.[( g32)] \grace { b } a16[ g32 fis]
    | g8 r r4
    | R2*17
    | e4(\p f)
    | e8[ b'\trill c] r
    | R2*20
    | \lowerDynamics d,4(\p e)
    | g8[-. c-. b-.] r
    | R2*7
    | r4 f'
    | e\f g,
    | a2 ~
    | a8.( as16) g4

% 90
    | a!32( g f g) a4 c8 ~
    | c[ f( e es)]
    | e!4 r\fermata
    | \lowerDynamics e,4(\p f)
    | e8[ b'\trill c] r
    | R2*2
    | r4 r8 f\p
    | f4( e8) r

    \bar "|."
}
