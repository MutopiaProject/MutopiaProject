\version "2.18.0"

 guitarthree = \relative c'  {
 \set Staff.instrumentName = "Gtr3 "
 \repeat volta 2 {
    R1*4/4 | % 1
    R1*4/4 | % 2
    R1*4/4 | % 3
    R1*4/4 | % 4
    d2 ^\mordent d4. ^\prall c16 [ d ] | % 5
    e4 c a c | % 6
    a4 d d, c' | % 7
    b4 ^\prall a8 [ b ] g [ b a c ] | % 8
    b8 [ a ] b4 \TUpo e2 ~ | % 9
    e4 a, d2 ~ | % 10
    d4 b \TUp e2 ~ | % 11
    e4 d cis e | % 12
    a,8 [ b a g ] fis2 | % 13
    g2 r2 | % 14
    r4 e4 a2 ~ | % 15
    a8 [ a g a ] fis2 | % 16    
 }
 
 \repeat volta 2 {
    R1*4/4 | % 17
    R1*4/4 | % 18
    R1*4/4 | % 19
    R1*4/4 | % 20
    R1*4/4 | % 21
    R1*4/4 | % 22
    R1*4/4 | % 23
    R1*4/4 | % 24
    R1*4/4 | % 25
    R1*4/4 | % 26
    R1*4/4 | % 27
    R1*4/4 | % 28
    d'2 ^\mordent d4. ^\prall c16 [ d ] | % 29
    e4 c a c | % 30
    a4 d d, c' | % 31
    b4 ^\prall a8 [ b ] g2 | % 32 
 }
}
