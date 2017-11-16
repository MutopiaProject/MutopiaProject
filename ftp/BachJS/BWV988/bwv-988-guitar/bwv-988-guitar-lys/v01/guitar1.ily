\version "2.18.2"

 guitarone = \relative c'' {
 \set Staff.instrumentName = "Gtr1 "
 \repeat volta 2 {
    %1-5
    g16 fis16 g8^~ g16 d16 e16 fis16 g16 a16 b16 cis16
    d16 cis16 d8^~ d16 a16 b16 cis16 d16 e16 fis16 d16
    g16 fis16 g8^~ g16 fis16 e16 d16 cis16 e16 a,16 g16
    fis16 e16 d16 cis16 d16 fis16 a,16  g16 fis16 a16 d,8
    r8 d''16[ c16 d8 g,8 b,8 d'8]

    %6-10
    r8 e16[ d16 e8 a,8 c,8 e'8]
    r8 fis16[ e16 fis8 d8 a'8 c,8^~] 
    c8 b8 r16 g16 b16 d16 g16 d16 g16 a16
    b16 g16 d16 b16 g16 b16 d16 g16 b16 g16 fis16 e16
    a16 e16 cis16 a16 fis16 a16 cis16 e16 a16 fis16 e16 d16

    %11-15
    g16 d16 b16 g16 e16 g16 b16 d16 g16 fis16 e16 d16
    cis16 g16 e16 cis16 a16 cis16 e16 g16 cis16 e16 d16 cis16
    d8 fis,,8 fis8 a'8 d8 fis8
    b,8 g,8 g8 b'8 e8 g8
    cis,16 e16 a,16 g16 fis16 a16 d16 fis16 g16 e16 d16 cis16 

    %16-20
    fis16 d16 cis16 b16 a16 g16 fis16 e16 d4       
    }

 \repeat volta 2 {
    fis'16 g16 a8^~ a16 b16 a16 g16 fis16 e16 d16 c16
    b16 c16 d8^~ d16 e16 d16 c16 b16 a16 g16 fis16 
    e16 gis16 a16 b16 a16 e16 a16 b16 c16 a16 dis16 e16
    fis16 e16 dis16 cis16 b2^~

    %21-25
    b16 dis16 \TUpc e8^~ e16 dis,16 \TUpo e8 ~ e16 dis,16 e8
    r16 gis''16 a8^~ a16 gis,16 a8 ~ a16 gis,16 a8^~
    a16 b16 c16 fis16 b,16 dis16 e16 g16 fis16 e16 dis16 a'16  
    g16 fis16 e16 dis16 e16 g16 b,16 a16 g16 b16 e,8 
    r8 e''8 c8 e8 a8 a,8         

    %26-30
    r8 d8 b8 d8 g8 g,8
    c16 a16 e16 c16 a16 c16 e16 a16 c16 a16 c16 e16
    fis16 c16 a16 fis16 d16 fis16 a16 c16 fis16 c16 fis16 a16
    b16 g16 d16 b16 g16 b16 d16 g16 b16 f16 b,16 d16 
    e16 d16 c16 e16 d16 c16 b16 d16 c16 e16 fis16 g16        

    %31-32
    a16 c, b a b d b g c a g fis
    b16 g fis e d c b a g4
 }
}
