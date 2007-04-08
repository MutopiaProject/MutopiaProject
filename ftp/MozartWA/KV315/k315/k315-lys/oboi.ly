oboiPart = \notes \relative e' {
    \key c \major
    \clef violin

    \noTupletBracket

    < { \lowerDynamics e4-(-\p f-) } { c'-( b-) } >
    | < { c'8-[ d^\trill e-] r } { e,-[ b'_\trill c-] } >
    | R2*20
    | < { fis4-( g-) } { c-(-\p b-) } >
    | < { a8 b-\trill c } \\ { d,8-. g-. fis-. } > r
    | R2*7
    | r4 <<fis, c>>
    | < { g32-( a b a-) g4-( fis8-) } \\ { b,4 d } >
    | < { e32-( fis g fis-) e4-( d8-) } \\ { g,2 } >
    | < { c32-( d e d-) c4-( b8-) } \\ { g2 } >
    | < { gis16-( a c e-) } \\ { e,8 a16-( c-) } > 
      < { d16. b32 \grace d c16 b32 a } { b16. g32 \grace b a16 g32 fis } >
    | g8 r r4
    | R2*17

% 55
    | < { c4-( b-) } { \lowerDynamics e,-(-\p f-) } >
    | < { c8-[ d^\trill e-] } { e, b'_\trill c } > r
    | R2*20
    | < { b4-( c-) } { \lowerDynamics d,-(-\p e-) } >
    | < { d8-[ e-\trill f-] } \\ { g,8-[-. c-. b-.-] } > r
    | R2*7
    | r4 <b f>
    | < { c8 c4-( b8-) } \\ { e,4-\f g, } >
    | < { a32-( b c b-) a4-( g8-) | f32-( g a g-) f4-( e8-) } 
	\\ { a,2 ~ a8.-( as16-) g4 } >

% 90
    | < { d32-( e f e-) d4-( es8-) | e!8 c'4 c8 } 
	\\ { a,!32-( g f g-) a4 c8 ~ c-[ f-( e es-)-] } >
    | <<c e,!>>4 r-\fermata
    | < { c,4-( b-) } { \lowerDynamics e,-(-\p f-) } >
    | < { c8-[ d^\trill e-] } { e,-[ b'_\trill c-] } > r
    | R2*2
    | r4 r8 <<b' f>>-\p
    | < { b4-( c8-) } { f,4-( e8-) } > r

    \bar "|."
}
