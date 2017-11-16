\version "2.18.0"

 guitartwo = \relative c {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 2 {
    %1-4
    g4 ^\mordent g'8 g,4. ~ ^\mordent |
    g4. fis8. ^\prall [ e16 d8 ] |
    e4 d'8 cis4 a8 |
    d4. ~ d8. [ e16 c8 ] |
    b8. [ c16 a8 ] g8. [ a16 b8 ] |
    c8. [ d16 b8 ] a8. [ b16 c8 ] |
    d8. [ c16 b8 ] c4 d8 |
    g,8. [ fis16 g8 ] d8. [ a'16 c8 ] |
    b8. ^\prall [ a16 b8 ] e,8. [ b'16 d8 ] |
    cis8. ^\prall [ b16 a8 ] d8. [ cis16 d8 ] |
    g,8. [ b16 d8 ] g4. ~ |
    g8 [ a16 g fis e ] fis8. [ g16 a8 ] |
    d,8. [ a16 fis8 ] d8. [ e16 fis8 ] |
    g8. [ a16 fis8 ] e8. [ fis16 g8 ] |
    a8. [ g16 fis8 ] b8. [ g16 a8 ] |
    d,8. [ fis16 a8 ] d4.
 }        

\pageBreak

 \repeat volta 2 {
    %17-20
    d4 d,8 d'4 c8 | 
    b8. ^\prall [ a16 b8 ] g8. [ a16 b8 ] |
    c8. [ d16 b8 ] a8. [ b16 c8 ] |
    b4. b8. [ a16 b8 ] |
    %21-24
    g4 a32 ( [ b cis dis ] e8. ) [ b16 g8 ] |
    a4 b32 ( [ c d e ] f8. ) [ e16 dis8 ] |
    e4 g,8 c8. [ a16 b8 ] |
    e,4. ~ e8. [ e'16 d8 ] |
    %25-28
    c8. ^\prall [ b16 c8 ] gis8. [ b16 e,8 ] |
    a8. [ c16 b8 ] c8. [ b16 a8 ] |
    b8. [ e16 d8 ] cis8. ^\prall [ b16 cis8 ]
    d4. ~ d8. [ e16 c8 ] |
    %29-32
    b8. [ c16 a8 ] g8. [ a16 b8 ] |
    c8. [ d16 b8 ] a8. [ b16 c8 ]
    d8. [ c16 b8 ] e8. [ c16 d8 ] |
    g,8. [ d'16 b8 ] g4. |
 } 
}
