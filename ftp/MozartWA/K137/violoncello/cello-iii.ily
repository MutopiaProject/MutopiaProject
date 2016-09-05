
\version "2.18.2"
% automatically converted by musicxml2ly from /Users/rick/Dropbox/SheetMusic/Mozart/Divertimenti/K137/imports/Import for Mozart Vc-iii.mxl

%% additional definitions required by the score:
\language "english"
%\include "expressions.ily"

celloThirdMov =  \relative bf, {
  \clef "bass"
  \key bf \major
  \time 3/8
  \tempo "Allegro assai"
  \repeat volta 2 {
    R4. | % 2
    bf8_\parenF f'8 r8 | % 3
    R4. | % 4
    f,8 bf8 r8 | % 5
    ef4. | % 6
    d8 c8 bf8 | % 7
    a8 a'8 bf8 | % 8
    f16 e16 f16 ef16 d16 c16 | % 9
    bf4 r8 | \barNumberCheck #10
    bf'8 f8 r8 | % 11
    R4. | % 12
    f,8 bf8 r8 | % 13
    ef4. | % 14
    d8 c8 bf8 | % 15
    ef8 f8 f,8 | % 16
    bf8 bf'8 r8 | % 17
    bf4. | % 18
    a4. | % 19
    bf4. | \barNumberCheck #20
    a4. | % 21
    r8 g8 f8 | % 22
    e4 ( f8 ) | % 23
    bf,8 -\tweak Y-offset #-2.4 -.
    \temporary \override Script.Y-offset =  #-1.6
    c8 -. c8 -. | % 24
    \revert Script.Y-offset
    f,4 r8 | % 25
    R4. | % 26
    cs'4 ( d8 ) | % 27
    d8 -. bf8 -. c!8-\tweak Y-offset #-1.7 -. | % 28
    f,4 r8 | % 29
    f'4. \p | \barNumberCheck #30
    f,4. | % 31
    c'8 -. c8 -. c8 -. | % 32
    f4 r8 | % 33
    f,4. | % 34
    f'4. | % 35
    c8 -. c8 -. c8 -. | % 36
    f4 r8 | % 37
    f,8 \f f8 f8 | % 38
    f8 f8 f8 | % 39
    c8 c8 c8 | \barNumberCheck #40
    f8 f8 f8 | % 41
    f8 f8 f8 | % 42
    f8 f8 f8 | % 43
    c8 c8 c8 | % 44
    f4 r8 |
  }
  \partLineBreak
  \repeat volta 2 {
    % 45
    R4.*4 | % 49
    f'16 ( g16 f16 ) ef16-\tweak Y-offset #1.7 -. d16-\tweak Y-offset #1.3 -.
    c16 -. | \barNumberCheck #50
    \tag #'scoreOnly {
    \footnote #'(-0.3 . 1)
                           "Adjusted from original to match
corresponding passages in violin parts."
                           Script
    }
    d16 -.  f16 -\tweak Y-offset #2.3 -. ef16 -\tweak Y-offset #1.7 -.
    d16 -\tweak Y-offset #1.3 -. c16 -\tweak Y-offset #0.7 -.
    bf16 -\tweak Y-offset #0.3 -. | % 51
    % in the source, m. 51 reads: d16 ( f16  ef16 ) d16 -. c16 -. bf16 -. |
    % but it has been adjusted here to match corresponding passages in
    % the violin parts.
    a8 a'8 bf8 | % 52
    d,4 r8 | % 53
    g4. \p | % 54
    fs4. | % 55
    g4. | % 56
    fs4. | % 57
    g8 -. g,8 ( a8 ) | % 58
    b8 ( c8 ) d8 ( | % 59
    e8 ) fs8 ( g8 ) | \barNumberCheck #60
    c,8 -\tweak Y-offset #-1.7 -. d8 -\tweak Y-offset #-1.4 -. d,8 -. | % 61
    ef!4 r8 | % 62
    bf'!4 r8 | % 63
    c8 d8 d,8 | % 64
    g4 r8 | % 65
    R4. | % 66
    bf8_\parenF f'8 r8 | % 67
    R4. | % 68
    f,8 bf8 r8 | % 69
    ef4. | \barNumberCheck #70
    d8 c8 bf8 | % 71
    a8 a'8 bf8 | % 72
    f16 e16 f16 ef16 d16 c16 | % 73
    bf4 r8 | % 74
    bf'8 f8 r8 | % 75
    R4. | % 76
    f8 bf,8 r8 | % 77
    ef4. | % 78
    d8 c8 bf8 | % 79
    ef8 f8 f,8 | \barNumberCheck #80
    bf8 bf'8 r8 | % 81
    af4. | % 82
    g4. | % 83
    bf4. | % 84
    a!4. | % 85
    ef!4. | % 86
    d4. | % 87
    c8 c'8 bf8 | % 88
    a8 a,8 bf8 | % 89
    ef8 f8 f,8 | \barNumberCheck #90
    bf4 r8 | % 91
    R4. | % 92
    fs4( g8) | % 93
    bf8 -. ef,8 -. f!8 -. | % 94
    bf4 r8 | % 95
    bf'4. \p | % 96
    bf,4. | % 97
    f'8 -. f8 -. f8 -. | % 98
    bf,4. | % 99
    bf'4. | \barNumberCheck #100
    bf,4. | % 101
    f8 -. f8 -. f8 -. | % 102
    bf4 r8 | % 103
    bf8 \f bf8 bf8 | % 104
    bf8 bf8 bf8 | % 105
    f8 f8 f8 | % 106
    bf8 bf8 bf8 | % 107
    bf8 bf8 bf8 | % 108
    bf8 bf8 bf8 | % 109
    f8 f8 f8 | \barNumberCheck #110
    bf4 r8
  }
}
