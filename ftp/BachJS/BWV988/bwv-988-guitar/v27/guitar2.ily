\version "2.18.0"

 guitartwo = \relative c' {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 2 {
    g8 [ a16 b c d ] e [ d c d e8 ] | 
    fis,8 r8 r8 d'8 r8 r8 | 
    e,8 [ fis16 g a b ] c [ d c b c8 ] |
    c8 r8 r8 fis,8 r8 r8 |
    b16 [ c b a g fis ] e [ g b d c b ] | 
    a16 [ b a g fis e ] d [ fis a c b a ] |
    g8 [ a8 ^\turn b8 ] c,8 c'4 ~ |
    c16 [ e d c b a ] b [ c d b c d ] |
    g,2. ~ ^\mordent | %10
    g16 [ g fis e d cis ] b [ cis d cis d b ] |
    e8 r8 r8 a,8 r8 r8 |
    a'16 [ b a g fis e ] d [ fis a c b a ] | 
    g16 [ a g fis e d ] cis [ e g b a g ] |
    fis8 g8 ^\turn \TDne a8 ~ a8 g8 \TDnq fis8 ~ | %14
    fis16 [ e  d  cis  d  b ] cis4  ~ ^\prallprall cis16 [ b32 cis32 ] |
    d8 [ fis,8 a8 ] d,4. |
 }        

 \pageBreak

 \repeat volta 2 {
    R1*3/4 |
    g'8 [ fis16 e d c ] b [ c d c b g' ] |
    a,8 r8 r8 fis'8 r8 r8 |
    b16 [ c b a g fis ] g [ a g fis e d ] |
    c8 [ d8 ^\turn e8 ] a,4. ~ |
    a16 [ g a c b a ] b [ e b g e g ] |
    cis,16 [ dis e g fis e ] fis8 [ fis8. ^\prallprall e32 fis32] |
    g16 [ a b a g8 ] gis4. ^\turn ~|
    gis16 [ e fis gis a b ] c [ b a g fis e ] |
    d16 [ fis g a b c ] d [ c b c d8 ] |
    g,8 r8 r8 e'8 r8 r8  |
    a,8 [ b16 c d e ] fis [ g fis e fis d ] |
    b'16 [ a g fis e d ] c4. ~ |
    c16 [ b c d e fis ] g [ d b g a b ] |
    e,16 [ fis g a b g ] a [ c fis8 ] r8 |
    r8 d8 [ c8 ] b8 [ c16 b a g ] 
 }
}
