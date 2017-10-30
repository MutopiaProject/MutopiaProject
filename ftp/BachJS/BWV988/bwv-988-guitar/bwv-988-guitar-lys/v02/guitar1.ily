\version "2.18.0"

 guitarone = \relative c'' {
 \set Staff.instrumentName = "Gtr1 "
 \repeat volta 2 {
    %1-4
    R1*2/4
    R1*2/4
    g4
    \TIn c4^~\mordent
    c8 b16 a16 b16 a16 g16 fis16
    %5-8
    g4~ g16 f16 e16 d16
    \TUp e4~ e16 d16 c16 b16
    a4~ a16 c16 b16 a16
    b16 g'16 fis16 a16 g16 fis16 e16 d16
    %9-12
    c'8^( b8) r4
    R1*2/4
    b,16^( dis16 e16 g16) b4~
    b16 a16 g16 b16 a16 g16 fis16 e16 
    %13-15
    \TIn d4~ d16 c16 b16 a16
    \TIn b4~ b16 a16 g16 fis16
    \TIn e4~ e16 g16 fis16 e16
}        
    \alternative { { d8 r8 r4 } { d4 r4 } } | %16

    \repeat volta 2 {
    a'4 \TUpb a'4~ | %18
    a16 g16 fis16 a16 g16 fis16 e16 dis16
    e4 r8 fis8
    dis8 b8 r4
    \TUpo e4~ e16 d16 c16 b16
    c4~ c16 b16 a16 g16
    \TDno fis4~ fis16 a16 g16 fis16
    g4 r4 | %25
    e4 a4~ 
    a16 g16 fis16 a16 g16 fis16 e16 d16
    c4 c'4 ~ 
    c16 b16 a16 c16 b16 a16 g16 fis16
    b8[ g8] b8[ d8]
    g4 c4~
    c16 b16 a16 c16 b16 a16 g16 fis16      
} 
    \alternative { { g4 r4 } { g4 r4 } } |
 
}
