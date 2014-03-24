\version "2.18.0"
oboeIPart =  \relative c'' {
    \key c \major
    \clef violin

    \noTupletBracket

    c4(\p b)
    | c8[ d\trill e] r
    | R2*20
    | fis4(\p g)
    | \partcombineApart a8 b\trill c r \partcombineAutomatic
    | R2*7
    | r4 fis,
    | g32( a b a) g4( fis8)
    | e32( fis g fis) e4( d8)
    | c32( d e d) c4( b8)
    | gis16[( a c e)] d16.[( b32)] \grace { d } c16[ b32 a]
    | g8 r r4
    | R2*17
    | c4(\p b)
    | c8[ d\trill e] r
    | R2*20
    | b4(\p c) 
    | d8[ e\trill f] r
    | R2*7
    | r4 b
    | c8\f c4( b8)
    | a32( b c b) a4( g8)
    | f32( g a g) f4( e8)

% 90
    | d32( e f e) d4( es8)
    | e!8 c'4 c8
    | c4 r\fermata
    | c,(\p b)
    | c8[ d\trill e] r
    | R2*2
    | r4 r8 b'\p
    | b4( c8) r

    \bar "|."
}
