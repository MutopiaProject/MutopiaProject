
\version "2.18.2"

\language "english"

violinIFirstMov =  \relative f'' {
    \clef "treble"
    \key bf \major
    \time 3/4
    \tempo Andante
    \repeat volta 2 {
    f4\p \grace ef16 d4 c | % 2
    b8.\f( c32 d) c4 r | % 3
    g'4\p \grace f16 ef4 d | % 4
    cs8.\f( d32 e) d4 r8 d16\p( ef) | % 5
    ef2( d4) | % 6
    c4 g' f8( bf) | % 7
    \grace a16 g8 f16 ef d4 c\trill | % 8
    bf8-.\f f'-. r16 f,-.\p f-. f-. g( f e f) | % 9
    f8-.\f f'-. r16 ef,!-.\p ef-. ef-. d( ef f ef) | \barNumberCheck #10
    d8\f d'' r bf\p r d, | % 11
    f8.( d16) c4-. r | % 12
    c'2.\f | % 13
    e,4( ~ e8. f32 g) f8 r | % 14
    \grace { a32( g f } g8) r \grace { bf32( a g } a8) r \grace { c32( bf a } bf8) r | % 15
    \grace bf16 a8 g16 a g4 r | % 16
    c,2.\p | % 17
    e,4( ~ e8. f32 g) f8 f'16 c | % 18
    d16( d,) bf'( g) f4 e | % 19
    f8 a'32\f( bf c16) r c,\p-\tweak Y-offset #1.6 -. bf-\tweak Y-offset #1.2 -.
    a-. g-. f-\tweak Y-offset #-2.8 -. g-. e-\tweak Y-offset #-3.2 -. | \barNumberCheck #20
    f8 f'32\f( g a16) r a,\p-\tweak Y-offset #-1.6 -. g-\tweak Y-offset #-2.4 -.
    f-\tweak Y-offset #-2.7 -. ef-\tweak Y-offset #-3.2 -. g-\tweak Y-offset #-2.5 -. f-\tweak Y-offset #-2.8 -. ef-\tweak Y-offset #-3.2 -. | % 21
    d8 d'32\f( e f16) r f,\p-. e-. d-. c-. c'-. c-. c-. | % 22
    c16( bf d bf) a4 g\trill | % 23
    f16-. \highSlur a'( c a) g-. \highSlur e( g e) g-. \highSlur g,( bf g) | % 24
    f16-. \highSlur f'( a f) ef!-. \highSlur c( ef c) ef-. ef,( g ef) | % 25
    d16-. d'( f d) c-. \highSlur a( c a) c-. c,( ef c) | % 26
    ef16( d) d'( g) f4( e) | % 27
    r4 bf,\pp bf | % 28
    bf2( a8) r | % 29
    d4 <d' bf'>\f r8 \tuplet 3/2 {
        d16\p( bf g) }
    | \barNumberCheck #30
    e8.( g16) f4 r | % 31
}
\scoreLineBreak
\partLineBreak
\repeat volta 2 {
    g8.\p( bf16) a4 r | % 32
    bf8.( c32 d) ef!4 r | % 33
    d8.( ef32 f) g4 bf, | % 34
    bf8.\trill( a32 bf) a4 r | % 35
    f'4 \grace ef16 d4 c | % 36
    b8.\f( c32 d) c4-. r | % 37
    d,4\p d4.( ef16 f) | % 38
    ef8. d16 c4 r | % 39
    g''4 \grace f16 ef4 d | \barNumberCheck #40
    cs8.\f( d32 e) d4-. r | % 41
    e,4\p e4.( f16 g) | % 42
    f8\f f' r16 f,\p-. f-. f-. g( f e f) | % 43
    af8\f af' r16 af,-.\p af-. af-. af( g) g( f) | % 44
    ef!8\f ef' r16 ef,-.\p ef-. ef-. f( ef d ef) | % 45
    ef8\f g' r16 g,-.\p g-. g-. f( ef d ef) | % 46
    d8\f f' r16 d,-.\p d-. d-. f( d af' f) | % 47
    ef8\f bf'' r16 ef,,-.\p ef-. ef-. g( ef) bf'( g) | % 48
    f8\f af' r16 af,\p-. af-. af-. \liftSlur c( bf) bf( af) | % 49
    g8\f g' r bf\p r d, | \barNumberCheck #50
    f8.( d16) c4 r | % 51
    f2.\f | % 52
    \once \tieUp \liftSlur a,4( ~ a8. bf32 c) bf8 r | % 53
    \grace { d32( c b } c8) r \grace { ef32( d c } d8) r \grace { f32( ef d } ef8) r | % 54
    \grace ef16 d8 c16 d c4 r | % 55
    f2.\p | % 56
    \once \tieUp \liftSlur a,4( ~ a8. bf32 c) bf4 | % 57
    \grace a16 g8 f16 ef d4 c\trill | % 58
    bf8 bf''32\f( c d16) r f,\p-. ef-. d-. c-. bf-. c-. a-. | % 59
    bf8 g'32\f( a bf16) r d,-\tweak Y-offset #2.3 -.\p c-.
    bf-\tweak Y-offset #1.3 -. af-\tweak Y-offset #-1.7 -.
    c-\tweak Y-offset #-0.7 -. bf-\tweak Y-offset #-1.5 -. af-\tweak Y-offset #-1.7 -. |
    \barNumberCheck #60
    g8 g'32(\f a! bf16) r bf,-.\p a-\tweak Y-offset #-1.7 -.
    g-\tweak Y-offset #-2.4 -. f-. f'-. f-. f-. | % 61
    f16( ef) g( ef) d4 c\trill | % 62
    bf16-. \highSlur d( f d) c-. \highSlur a( c a) ef'-. \highSlur c( ef c) | % 63
    bf16-. \highSlur bf'( d bf) af-. \highSlur f( af f) af-. \highSlur af,( c af) | % 64
    g16-. \highSlur g'( bf g) f-. \highSlur d( f d) f-. \highSlur f,( bf af) | % 65
    \grace af16 g8 f16 ef d4 c | % 66
    ef'8\pp( c) a!4 a | % 67
    a2( bf8) r | % 68
    g4 <ef bf' g'>\f r8 \tuplet 3/2 {
        g16( ef c) }
    | % 69
    a8.( c16) bf4 r
}
    }

