\version "2.18.2"

 guitartwo = \relative c {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 2 {
    %1-4
    g8[ b'16 a16 b8 g8 g,8 g'8] 
    fis,8[ fis'16 e16 fis8 d8 fis,8 d'8]
    e,8[ e'16 d16 e8 g8 a,8 cis'8]
    d,8[ fis16 e16 fis8 d8] d,8 r16 c'16

    %5-8
    b16 a16 b8_~ b16 d16 e16 fis16 g16 a16 b16 g16
    c,16 b16 c8_~ c16 e16 fis16 g16 a16 b16 c16 a16
    d,16 cis16 d8_~ d16 a'16 b16 c16 d16 e16 fis16 d16
    g16 fis16 g16 d16 b16 d16 g,16 b16 d,16 g16 b,16 d16

    %9-12
    g,8[ g'8 b8 g8 g,8 g'8]
    fis,8[ fis'8 a8 fis8 fis,8 fis'8]
    e,8[ e'8 g8 e8 e,8  g'8]   
    a,8 e'8 g8 e8 a,8 g'8

    %13-16
    fis16 a16 d16 fis16 a16 fis16 d16 a16 fis16 a16 d,16 fis16
    g16 b16 d16 g16 b16 g16 d16 b16 g16 b16 e,16 g16
    a8[ cis8] d16[ a16 fis16 d16] a'8[ a,8]
    d,16 d'16 e16 fis16 g16 a16 b16 cis16 d4

  \pageBreak

    %17-20
    d,,8[ fis'16 e16 fis8 d8 d,8 fis'8]
    g,8[ b'16 a16 b8 g8 g,8 b'8]
    c,8[ c'16 b16 c8 fis,8 a8 c8]
    a8 fis8 dis16 b16 dis16 fis16 b16 dis16 fis16 a16   

    %21-24
    g8. fis16 g8.[ fis,16] g8. b,16
    c8.[ b''16] c8.[ b,16] c8. e,16 
    dis8[ a'8 g8 ais,8 b8 fis'8]
    e8[ g16 fis16 g8 e8] e,8 r16 d'16

    %25-28
    c16 e16 a16 c16 e16 c16 a16 e16 c16 e16 d16 c16    
    b16 d16 g16 b16 d16 b16 g16 d16 b16 d16 c16 b16
    a8[ c8 e8 g8 fis8 e8]
    d8[ fis8 a8 c8 b8 a8]

    %29-32
    g8[ b8 d8 f8 e8 d8]
    c8[ e8 fis!8 gis8 a8 g8]    
    fis8[ d8 g8  g,8 d'8 d,8]
    g16 g,16 a16 b16 c16 d16 e16 fis16 g4
 }
}

