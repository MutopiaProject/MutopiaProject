\version "2.18.0"

 guitartwo = \relative c'' {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 2 {
    R1*4/4 | % 1
    R1*4/4 | % 2
    R1*4/4 | % 3
    R1*4/4 | % 4
    R1*4/4 | % 5
    R1*4/4 | % 6
    R1*4/4 | % 7
    R1*4/4 | % 8
    R1*4/4 | % 9
    R1*4/4 | % 10
    R1*4/4 | % 11
    R1*4/4 | % 12
    a2 ^\mordent a4. ^\prall g16 [ a ] | % 13
    b4 g e g | % 14
    e4 a a, g' | % 15
    fis4 ^\prall e8 [ fis ] d2 | % 16
 }
  
 \repeat volta 2 {
    R1*4/4 | % 17
    R1*4/4 | % 18
    R1*4/4 | % 19
    R1*4/4 | % 20
    b'2 ^\mordent b4. ^\prall a16 [ b ]| % 21
    c4 a fis a | % 22
    fis4 b b, a'| % 23
    g4 fis8 [ g ] \TUpo e2 ~| % 24
    e4 r4 a2 ~| % 25
    a4 d b g ~ | % 26
    g4 c8 [ b ] c2 ~ | % 27
    c2. c4| % 28
    b2 r4 g4| % 29
    e2. a8 [ g ] | % 30
    fis4 g ~ g fis | % 31
    g8 [ d c d ] b2| % 32
 }
}
