
\version "2.18.2"
% automatically converted by musicxml2ly from /Users/rick/Dropbox/SheetMusic/Mozart/Divertimenti/K137/imports/Import for Mozart Vla-i.mxl

%% additional definitions required by the score:
\language "english"
%\include "expressions.ily"

violaFirstMov =  \relative d' {
    \clef "alto"
    \key bf \major
    \time 3/4
    \tempo Andante
    \repeat volta 2 {
    R2. | % 2
    d4 \f -. ef-\tweak Y-offset #2.3 -. r | % 3
    R2. | % 4
    e4\f f r | % 5
    r4 ef!\p f | % 6
    g4 c, d | % 7
    c8 g' f4 ef | % 8
    d8\f-\tweak Y-offset #1.4 -. bf' -. r4 r | % 9
    c,8\f-\tweak Y-offset #1.3 -. c' -. r4 r | \barNumberCheck #10
    f,,8\f f' g2\p | % 11
    f4 r8 \highSlur c( d bf) | % 12
    \temporary \slurDashed a16\f( c) a( c) a c a c a c a c | % 13
    \slurSolid
    bf16 c bf c g c bf c a c f c | % 14
    e16 c e c f c f c g' c, e g | % 15
    \grace g16 f8 e16 f e4 r | % 16
    c2.\p | % 17
    \once \tieDown e,4( ~ e8. f32 g) f8 f' ~ | % 18
    f8 d c c c c | % 19
    c8 r c'2 | \barNumberCheck #20
    r4 a2 | % 21
    r4 f2 | % 22
    d4 c c | % 23
    c2 a'4 ~ | % 24
    a4 f c8 a | % 25
    f2. ~ | % 26
    f8. d'16 c2 | % 27
    r4 g\pp g | % 28
    g2( f8) r | % 29
    bf4 <g g'>\f r | \barNumberCheck #30
    g8.(\p e16) f4 r |
} % 31
\partLineBreak
\repeat volta 2 {
    bf8.(\p g16) f4 r | % 32
    f'8.( ef!32 d) c4 r | % 33
    r4 c8.( ef32 f) g4 | % 34
    f4 f, r | % 35
    R2. | % 36
    d'4\f-\tweak Y-offset #1.6 -. ef-\tweak Y-offset #2.3 -. r | % 37
    af,4\p g2 | % 38
    g4 r r | % 39
    R2. | \barNumberCheck #40
    e'4\f-\tweak Y-offset #2.3 -. f-\tweak Y-offset #2.6 -. r | % 41
    bf,4\p a!2 | % 42
    a8\f a' r4 r | % 43
    b,8\f d r4 r | % 44
    g,8\f g' r4 r | % 45
    f,8\f c' r4 r | % 46
    f,8\f bf' r4 r | % 47
    g,8\f g' r4 r | % 48
    af,8\f bf' r4 r | % 49
    bf,8\f ef ef4(\p g) | \barNumberCheck #50
    f4 r8 g( f ef) | % 51
    \temporary \slurDashed d16\f( f) d( f) d f d f d f d f | % 52
    \slurSolid
    ef16 f ef f c f ef f d f bf, f' | % 53
    a,16 f' c f bf, f' d f c f a, f' | % 54
    \grace c16 bf8 a16 bf a4 r | % 55
    \temporary \slurDashed d,16(\p f) d( f) d f d f d f d f | % 56
    \slurSolid
    ef16 f ef f c f ef f d8 bf' | % 57
    bf8 g f f f f | % 58
    f4 f'2\p | % 59
    r4 d2 | \barNumberCheck #60
    r4 bf2 ~ | % 61
    bf8 g' f f f f | % 62
    f2 a4 | % 63
    d,4 bf d | % 64
    bf2 bf'8( f) | % 65
    bf,8( g) f4 f | % 66
    r4 c'\pp c | % 67
    c2( bf8) r | % 68
    r4 ef,\f r | % 69
    f4\p f r
}
    }

