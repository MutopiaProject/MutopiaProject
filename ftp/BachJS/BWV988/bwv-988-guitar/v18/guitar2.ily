\version "2.18.0"

 guitartwo = \relative c'' {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 1 {
    %1-4
    b1 |
    a2. b8 a |
    g2. fis8 e |
    fis2 r2 |
    %5-8
    g2. fis8 g |
    a2. c8 b |
    c2 ~ c8 b c a |
    b2 r2
    %9-12
    g1 |
    fis2. g8 a |
    b2 ~ b8 a b g |
    a2. a4 |
    %13-16
    g2. g4 |
    fis2. b4 |
    e,8 fis g2. |
    fis1 |
 }        

 \repeat volta 1 {
   % 17-20
    c1
    b2. c8 d
    \TUpo e2 ~ e8 dis e4
    dis2 r
    % 21-24
    g1
    fis4 g a2 ~
    a4 g8 a b2 ~
    b8 a g fis e4 r
    %25-28
    c1
    b2. c8 d
    \TUpo e2 ~ e8 d e c
    d2. d4
    c2. c4
    b2. e4
    a,8 b c2.
    b1
 }
}
