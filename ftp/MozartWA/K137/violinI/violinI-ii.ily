
\version "2.18.2"

\language "english"
% \include "expressions.ily"

violinISecondMov =  \relative d' {
    \clef "treble"
    \key bf \major
    \time 4/4
    \tempo "Allegro di molto"
    \repeat volta 2 {
    <d bf' bf'>2_\markup \concat { \italic "(" \dynamic f \italic ")" } d'4. ef8 | % 2
    e8( f) f4.-> bf8 d, ef | % 3
    e8( f) f4-. bf16 a g f ef d c bf | % 4
    b4( c8) ef-. bf4( a8) c-. | % 5
    ef,4( d8) r bf''16 a g f ef d c bf | % 6
    b4( c8) g'-. bf,4( a8) ef'-. | % 7
    \grace ef16 d8 c16 bf bf4. bf8-\tweak Y-offset #1.3 -. a'(g) | % 8 % the last a on this line is questionable might be an af or bf
    f4 e8.( f32 g) f16( g a) g-.
    f-\tweak Y-offset #3 -. e-\tweak Y-offset #2.6 -.
    d-\tweak Y-offset #2.3 -. c-\tweak Y-offset #1.6 -. | % 9
    b8.( c16) bf2( a4) | \barNumberCheck #10
    g4 g'2 f4 | % 11
    \grace f8 e4 r r2 | % 12
    c'8.( d16) c4 r2 | % 13
    c8.( d16) c4 r2 | % 14
    R1 | % 15
    r4 f,2 f4 ~ | % 16
    f4 f2 f4 ~ | % 17
    f4 d' ~ d8 bf f d | % 18
    bf8 f d bf af2 | % 19
    a!4 c''2 bf16( a g f) | \barNumberCheck #20
    g1\trill | % 21
    f8-. c-. c-. c-. d8.( e16 f8) e-. | % 22
    d8-\tweak Y-offset #2.3 -. c-\tweak Y-offset #1.7 -.
    bf-\tweak Y-offset #1.2 -. a-. g4 \grace c'16 bf8 a16 g | % 23
    f8-. c-. c-. c-. d8.( e16 f8) e-. | % 24
    d8-\tweak Y-offset #2.3 -. c-\tweak Y-offset #1.6 -.
    bf-\tweak Y-offset #1.3 -. a-. g4 \grace c'16 bf8 a16 g | % 25
    f4 <a, f'> <a f'> r | % 26
}
\partLineBreak
\repeat volta 2 {
    f'2.\p bf4 | % 27
    \once \slurDashed d,4.( f8) ef4 r | % 28
    ef2. c'4 | % 29
    \once \slurDashed c,4.( ef8) d4 r8 d | \barNumberCheck #30
    c8( d) ef( g) g( f) ef( d) | % 31
    d4( c) r2 | % 32
    <d, c' a'>4\f r c'8.\p\trill bf32 c d8 c | % 33
    bf8 r g' r bf r r4 | % 34
    <d,, bf' af'>4\f r af'8.\p\trill g32 af bf8 af | % 35
    g8 r ef' r g r r4 | % 36
    <g, f' d'>4\f r f'8.\p\trill ef32 f g8 f | % 37
    f8( ef) ef-. ef-. ef( d) d-. d-. | % 38
    d8( c) c2 bf4\turn | % 39
    <a f'>4 c16( a) c( a) f4 r | \barNumberCheck #40
    <d bf' bf'>2\f d'4. ef8 | % 41
    e8( f) f4.-> bf8-. d,-\tweak Y-offset #2.3 -. ef-\tweak Y-offset #2.6 -. | % 42
    e8( f) f4-. bf16 a g f ef d c bf | % 43
    b4( c8) ef-. bf4( a8) c-. | % 44
    ef,4( d8) r bf''16 a g f ef d c bf | % 45
    b4( c8) g'-. bf,4( a8) ef'-. | % 46
    \grace ef16 d8 c16 bf bf4 r8 bf af'( f) | % 47
    ef4 d8.( ef32 f) ef16( f g)
    f-\tweak Y-offset #3.1 -. ef-\tweak Y-offset #2.7 -.
    d-\tweak Y-offset #2.3 -. c-\tweak Y-offset #1.6 -. bf-\tweak Y-offset #1.3 -. | % 48
    \liftSlur a!8.( c32 bf) a2( af4) | % 49
    g4 g'2 g,4 | \barNumberCheck #50
    a4 r r2 | % 51
    f'8.( g16) f4 r2 | % 52
    f8.( g16) f4 r2 | % 53
    R1 | % 54
    r4 bf2 bf4 ~ | % 55
    bf4 bf2 bf4 ~ | % 56
    bf4 g ~ g8 ef bf g | % 57
    ef'8 bf g ef df2 | % 58
    d!4 f'2 ef16( d c bf) | % 59
    c1\trill | \barNumberCheck #60
    bf8 f'-. f-. f-. g8.( a16 bf8) a-. | % 61
    g8-. f-. ef-\tweak Y-offset #2.6 -. d-\tweak Y-offset #2.2 -. c4 \grace f16 ef8 d16 c | % 62
     bf8 f'-. f-. f-. g8.( a16 bf8) a-. | % 63
    g8-. f-. ef-\tweak Y-offset #2.5 -. d-\tweak Y-offset #2.3 -. c4 \grace f16 ef8 d16 c | % 64
    bf4 <d, bf' bf'> <d bf' bf'> r
}
    }
