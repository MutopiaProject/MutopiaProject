\version "2.18.0"

 guitarone = \relative c'' {
 \set Staff.instrumentName = "Gtr1 "
 \repeat volta 2 {
    R1*4/4 | % 1
    R1*4/4 | % 2
    R1*4/4 | % 3
    R1*4/4 | % 4
    R1*4/4 | % 5
    R1*4/4 | % 6
    R1*4/4 | % 7
    R1*4/4 | % 8
    g'2 ^\mordent g4. ^\prall fis16 [ g ] | % 9
    a4 fis d fis | % 10
    b,4 e e, d' | % 11
    cis4 ^\prall b8 [ cis ] a [ b cis a ]| % 12
    d4 d, d'2 ~ | % 13
    d4 d, d'2 ~| % 14
    d2 cis | % 15
    d1 | % 16
 } 
  
 \repeat volta 2 {
    fis2 ^\mordent fis4. ^\prall e16 [ fis ] | % 17
    g4 d b d | % 18
    c4 f f, e' | % 19
    dis4 ^\prall cis8 [ dis ] b [ cis dis b ] | % 20
    e4 e, e'2 ~ | % 21
    e4 e, e'2 ~ | % 22
    e2 dis | % 23
    e2 ~ e8 [ d cis b ] | % 24
    a4 g'2 f8 [ e ] | % 25
    f2. e8 [ d ]|  % 26
    e2. fis8 [ g ] | % 27
    a8 [ b g a ] fis4 a ~ | % 28
    a4 g8 [ fis ] g4 b, ~ | % 29
    b4 a8 [ b ] c2 ~ | % 30
    c4 b a2 | % 31
    g1  % 32
 }
}
