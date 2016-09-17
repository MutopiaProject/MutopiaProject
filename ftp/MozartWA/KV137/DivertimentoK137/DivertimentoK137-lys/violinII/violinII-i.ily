
\version "2.18.2"
% automatically converted by musicxml2ly from /Users/rick/Dropbox/SheetMusic/Mozart/Divertimenti/K137/imports/Import for Mozart V2-i.mxl

%% additional definitions required by the score:
\language "english"
%\include "expressions.ily"


violinIIFirstMov =  \relative af' {
    \clef "treble"
    \key bf \major
    \time 3/4
    \tempo Andante
    \repeat volta 2 {
    R2. | % 2
    af4\f-\tweak Y-offset #-1.7 -. g -. r | % 3
    R2. | % 4
    bf4\f-\tweak Y-offset #1.4 -. a! -. r | % 5
    r8 \liftSlur bf16(\p c) bf8 bf bf bf | % 6
    bf8 bf a a bf d16 f | % 7
    \grace f16 ef8 d16 c bf4 a\trill | % 8
    bf8-\tweak Y-offset #1.4 -.\f d-. r16 d,\p -. d -. d -. ef( d cs d) | % 9
    ef8 \f -. ef' -. r16 c,\p -. c -. c -. b( c d c) |
    \barNumberCheck #10
    bf!8 \f  bf'' r d,\p r bf | % 11
    d8.( bf16) a4 r | % 12
    c2.\f | % 13
    \once \tieDown e,4( ~ e8. f32 g) f8 r | % 14
    \grace { a32( g f } g8) r \grace { bf32( a g } a8) r \grace { c32( bf a } bf8) r | % 15
    \grace bf16 a8 g16 a g4 r | % 16
    \temporary \slurDashed a,16\p( c) a( c) a c a c a c a c | % 17
    \slurSolid
    bf16 c bf c g bf c bf a8 a' | % 18
    bf16( f) g( bf,) a4 g | % 19
    a8 f''32 \f ( g a16 ) r a,\p -\tweak Y-offset #-1.7 -.
    g-\tweak Y-offset #-2.3 -. f-\tweak Y-offset #-2.7 -.
    e-\tweak Y-offset #-3.1 -. d -. e-\tweak Y-offset #-3.1 -. c
    -. | \barNumberCheck #20
    a8 d'32( \f e f16) r f,\p -. e -. d -. c -. ef -. d -. c
    -. | % 21
    bf8 bf'32\f ( c d16) r d,\p -. c -. bf -. a -. a' -. a -. a
    -. | % 22
    a16( g16 bf16 g) f4 e\trill | % 23
    f8 -. \highSlur f'32( g a f) e8 -. \highSlur c32( d e c) e8 -. e,32( f g e)
    | % 24
    d8 -. d'32( e f d) c8 -. \highSlur a32( bf c bf) a8 -. c,32( d ef c)
    | % 25
    bf8 -. bf'32( c d bf) a8 -. \slurAccidentalCrash f32( e f g) a8 -. a,32( bf c a) | % 26
    bf8 -. g'16( bf) a4( g) | % 27
    bf8(\pp g) e4 e | % 28
    e2( f8) r | % 29
    f4 <d bf' g'>\f r | \barNumberCheck #30
    bf4\p a r | % 31
}
\partLineBreak
\repeat volta 2 {
    c4\p c r | % 32
    r4 f r | % 33
    f8.( ef32 d) c4 c | % 34
    c4 c r | % 35
    R2. | % 36
    af'4\f-\tweak Y-offset #-1.7 -. g -. r | % 37
    c,4\p b4.( c16 d) | % 38
    c8. b16 c4 r | % 39
    R2. | \barNumberCheck #40
    bf'4\f -. a! -. r | % 41
    d,4\p cs4.( d16 e) | % 42
    d8\f d' r16 d,\p -. d -. d -. e( d cs d) | % 43
    d8\f f' r16 f,\p -. f -. f -. f( ef!) ef( d) | % 44
    c!8\f c' r16 c,\p -. c -. c -. d( c b c) | % 45
    c8\f ef' r16 ef,\p -. ef -. ef -. d( c b c) | % 46
    bf!8\f d' r16 bf,\p -. bf -. bf -. d( bf) f'( d) | % 47
    bf8\f ef' r16 bf,\p -. bf -. bf -. ef( bf) g'( ef) | % 48
    bf8\f f'' r16 f,\p -. f -. f -. af( g) g( f) | % 49
    ef8\f bf' r g'\p r bf, | \barNumberCheck #50
    d8.( bf16) a4 r | % 51
    f2.\f | % 52
    \once \tieDown a,4( ~ a8. bf32 c) bf8 r | % 53
    \grace { d32( c b } c8) r \grace { ef32( d c } d8) r \grace { f32( ef d } ef8) r | % 54
    \grace ef16 d8 c16 d c4 r | % 55
    f2.\p | % 56
    \once \tieDown a,4( ~ a8. bf32 c) bf8 d16( f) | % 57
    \grace f16 ef8 d16 c bf4 a\trill | % 58
    bf8 d'32\f( ef f16) r d\p-\tweak Y-offset #2.3 -.
    c-\tweak Y-offset #1.6 -. bf-\tweak Y-offset #1.3 -.
    a-\tweak Y-offset #-1.8 -. g-\tweak Y-offset #-2.4 -. a-\tweak Y-offset #-1.8 -. f
    -. | % 59
    d8 bf'32\f( c d16) r bf\p-\tweak Y-offset #-1.3 -. a-\tweak Y-offset #-1.8 -.
    g-\tweak Y-offset #-2.4 -.
    f-\tweak Y-offset #-2.8 -.
    af-\tweak Y-offset #-1.7 -. g-\tweak Y-offset #-2.4 -. f-\tweak Y-offset #-2.8
    -. | \barNumberCheck #60
    ef8 ef'32\f( f g16) r g,\p-\tweak Y-offset #-2.4 -.
    f-\tweak Y-offset #-2.7 -. ef-\tweak Y-offset #-3.1 -. d -. d' -. d -. d
    -. | % 61
    d16( c) ef( c) bf4 a\trill | % 62
    bf8 -. bf32( c d bf) a8 -. a32 ( bf a bf ) c8 -. a32 ( bf c
    a32 ) | % 63
    g8 -. g32 ( a bf g ) f8 -. d32 ( ef f d ) f8 -. f32 ( g af f )
    | % 64
    ef8 -. ef'32 ( f g ef ) d8 -. bf32 ( a! bf c ) d8 -. d,32 ( ef f
    d32 ) | % 65
    \grace f16 ef8 d16 c bf4 a | % 66
    r4 g'\pp g | % 67
    ef2( d8) r | % 68
    bf4 <bf g' ef'>\f r | % 69
    c8.(\p ef16) d4 r
}
    }
